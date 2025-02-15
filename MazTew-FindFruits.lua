local Config = {
	Name = "MazTew Loli Hub - Find Fruits",
	Team = "Marines",
	TweenSpeed = 290,
	DuplicateCheck = true,
	MaxStore = 3600,
	CheckInterval = 2500,
	TeleportInterval = 1000,
}

if not game:IsLoaded() then
	game.Loaded:Wait()
end

local Players = game:GetService("Players")
local Player = Players.LocalPlayer
local TweenService = game:GetService("TweenService")
local TeleportService = game:GetService("TeleportService")
local HttpService = game:GetService("HttpService")
local StarterGui = game:GetService("StarterGui")
local RunService = game:GetService("RunService")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Remotes = ReplicatedStorage:WaitForChild("Remotes")
local CommF_ = Remotes:WaitForChild("CommF_")

local function Notify(Text)
	StarterGui:SetCore("SendNotification", {
		Title = Config.Name,
		Text = Text,
	})
end

local function SetTeam(Team)
	Notify(`Setting Team: {Team}`)
	CommF_:InvokeServer("SetTeam", Team)
end

local function GetCharacter(Player)
	return Player.Character or Player.CharacterAdded:Wait()
end

local function GetHumanoid(Player)
	local Character = GetCharacter(Player)
	return Character:WaitForChild("Humanoid")
end

local function GetRootPart(Player)
	local Character = GetCharacter(Player)
	return Character:WaitForChild("HumanoidRootPart")
end

local function TeleportTo(CFrame)
	local RootPart = GetRootPart(Player)
	local CurrentPos = RootPart.Position
	local TargetPos = CFrame.Position
	local Distance = (TargetPos - CurrentPos).magnitude
	local Duration = Distance / Config.TweenSpeed
	local TweenInfo = TweenInfo.new(Duration, Enum.EasingStyle.Linear)
	local Tween = TweenService:Create(RootPart, TweenInfo, {
		CFrame = CFrame,
	})

	Tween:Play()
	Tween.Completed:Wait()
end

local NoClipConnection

local function DisableNoClip()
	if NoClipConnection then
		NoClipConnection:Disconnect()
		NoClipConnection = nil
	end
end

local function EnableNoClip()
	DisableNoClip()

	NoClipConnection = RunService.Stepped:Connect(function()
		if not Player.Character then
			return
		end

		for _, Item in pairs(Player.Character:GetDescendants()) do
			if Item:IsA("BasePart") and Item.CanCollide then
				Item.CanCollide = false
			end
		end
	end)
end

local function DisableSitting()
	local Humanoid = GetHumanoid(Player)
	Humanoid:SetStateEnabled("Seated", false)
	Humanoid.Sit = true
end

local function EnableSitting()
	local Humanoid = GetHumanoid(Player)
	Humanoid:SetStateEnabled("Seated", true)
	Humanoid.Sit = false
end

local function GetStoreName(Name)
	local Word = Name:split(" ")[1]
	return `{Word}-{Word}`
end

local function MonitorCharacter()
	local Character = GetCharacter(Player)

	Character.ChildAdded:Connect(function(Item)
		local Fruit = Item:FindFirstChild("Fruit")

		if Fruit then
			Notify(`Storing: {Item.Name}`)
			CommF_:InvokeServer("StoreFruit", GetStoreName(Item.Name), Item)
		end
	end)
end

local function GetFruitInventory()
	local Inventory = CommF_:InvokeServer("getInventoryFruits")
	local Names = {}

	for _, Fruit in pairs(Inventory) do
		if Fruit.Name then
			table.insert(Names, Fruit.Name)
		end
	end

	return Names
end

local function TeleportToFruits()
	local Found = false

	for _, Item in pairs(game.Workspace:GetChildren()) do
		local Fruit = Item:FindFirstChild("Fruit")

		if not Fruit then
			continue
		end

		local InnerFruit = Fruit:FindFirstChild("Fruit")

		if not InnerFruit then
			continue
		end

		if Config.DuplicateCheck then
			local Inventory = GetFruitInventory()

			if table.find(Inventory, GetStoreName(Item.Name)) then
				Notify(`Skipped Duplicate: {Item.Name}`)
				continue
			end
		end

		if not Found then
			Found = true
		end

		Notify(`Teleporting To: {Item.Name}`)
		TeleportTo(InnerFruit.CFrame)
		task.wait()
	end

	Notify(Found and "Collected Fruits" or "No Fruits")
end

local function ServerHop()
	local PlaceId = game.PlaceId
	local JobId = game.JobId

	local RootFolder = "ServerHop"
	local StorageFile = `{RootFolder}\\{tostring(PlaceId)}.json`
	local Data = {
		Start = tick(),
		Jobs = {},
	}

	if not isfolder(RootFolder) then
		makefolder(RootFolder)
	end

	if isfile(StorageFile) then
		local NewData = HttpService:JSONDecode(readfile(StorageFile))

		if tick() - NewData.Start < Config.MaxStore then
			Data = NewData
		end
	end

	if not table.find(Data.Jobs, JobId) then
		table.insert(Data.Jobs, JobId)
	end

	writefile(StorageFile, HttpService:JSONEncode(Data))

	local Servers = {}
	local Cursor = ""

	while Cursor and #Servers <= 0 and task.wait(Config.CheckInterval / 1000) do
		local Request = request or HttpService.RequestAsync
		local Response = Request({
			Url = `https://games.roblox.com/v1/games/{PlaceId}/servers/Public?sortOrder=Desc&limit=100&excludeFullGames=true&cursor{Cursor}`,
			Method = "GET",
		})

		local Success, Body = pcall(function()
			return HttpService:JSONDecode(Response.Body)
		end)

		if not Success or not Body or not Body.data then
			continue
		end

		task.spawn(function()
			for _, Server in pairs(Body.data) do
				if
					typeof(Server) ~= "table"
					or not Server.id
					or not tonumber(Server.playing)
					or not tonumber(Server.maxPlayers)
				then
					continue
				end

				if Server.playing < Server.maxPlayers and not table.find(Data.Jobs, Server.id) then
					table.insert(Servers, 1, Server.id)
				end
			end
		end)

		if Body.nextPageCursor then
			Cursor = Body.nextPageCursor
		end
	end

	while #Servers > 0 and task.wait(Config.TeleportInterval / 1000) do
		Notify("Server Hopping")
		local Server = Servers[math.random(1, #Servers)]
		TeleportService:TeleportToPlaceInstance(PlaceId, Server, Player)
	end
end

SetTeam(Config.Team)
EnableNoClip()
DisableSitting()
MonitorCharacter()
TeleportToFruits()
EnableSitting()
DisableNoClip()
ServerHop()