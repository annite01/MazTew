loadstring(game:HttpGet(("https://raw.githubusercontent.com/daucobonhi/Ui-Redz-V2/refs/heads/main/UiREDzV2.lua")))()

       local Window = MakeWindow({
         Hub = {
         Title = "MazTew Hub [Version1.2] | by Maz",
         Animation = "MazTew Hub"
         },
        Key = {
        KeySystem = true,
        Title = "MazTew Hub",
        Description = "Key Scripts",
        KeyLink = "https://anotepad.com/note/read/dnyfaksq",
        Keys = {"MazTew-Version1.2", "Admin"},
        Notifi = {
        Notifications = true,
        CorrectKey = "Loading Script...",
       Incorrectkey = "The key is incorrect",
       CopyKeyLink = "Copy Link GetKey"
      }
    }
  })

       MinimizeButton({
       Image = "http://www.roblox.com/asset/?id=16513855098",
       Size = {41, 40},
       Color = Color3.fromRGB(10, 15, 15),
       Corner = true,
       Stroke = true,
       StrokeColor = Color3.fromRGB(255, 250, 255)
      })
      
------ Tab
     local Tab1o = MakeTab({Name = "Main"})
     local Tab4o = MakeTab({Name = "Tele"})
     local Tab5o = MakeTab({Name = "Raid"})
     local Tab6o = MakeTab({Name = "Shop/Fruits"})
     local Tab7o = MakeTab({Name = "Race V4"})
     local Tab8o = MakeTab({Name = "Sea Even"})
     local Tab9o = MakeTab({Name = "Misc"})
     local Tab2o = MakeTab({Name = "Settings"})

--------------------------------------------------------------------------------------------------------------------------------------------
    repeat wait() until game.Players
    repeat wait() until game.Players.LocalPlayer
    repeat wait() until game.ReplicatedStorage
    repeat wait() until game.ReplicatedStorage:FindFirstChild("Remotes");
    repeat wait() until game.Players.LocalPlayer:FindFirstChild("PlayerGui");
    repeat wait() until game.Players.LocalPlayer.PlayerGui:FindFirstChild("Main");
    repeat wait() until game:GetService("Players")
    repeat wait() until game:GetService("Players").LocalPlayer.Character:FindFirstChild("Energy")
    
    wait(0.1)
    
    if not game:IsLoaded() then repeat game.Loaded:Wait() until game:IsLoaded() end
    
    if game:GetService("Players").LocalPlayer.PlayerGui.Main:FindFirstChild("ChooseTeam") then
        repeat wait()
            if game:GetService("Players").LocalPlayer.PlayerGui:WaitForChild("Main").ChooseTeam.Visible == true then
                if _G.Team == "Pirate" then
                    for i, v in pairs(getconnections(game:GetService("Players").LocalPlayer.PlayerGui.Main.ChooseTeam.Container.Pirates.Frame.ViewportFrame.TextButton.Activated)) do                                                                                                
                        v.Function()
                    end
                elseif _G.Team == "Marine" then
                    for i, v in pairs(getconnections(game:GetService("Players").LocalPlayer.PlayerGui.Main.ChooseTeam.Container.Marines.Frame.ViewportFrame.TextButton.Activated)) do                                                                                                
                        v.Function()
                    end
                else
                    for i, v in pairs(getconnections(game:GetService("Players").LocalPlayer.PlayerGui.Main.ChooseTeam.Container.Pirates.Frame.ViewportFrame.TextButton.Activated)) do                                                                                                
                        v.Function()
                    end
                end
            end
        until game.Players.LocalPlayer.Team ~= nil and game:IsLoaded()
    end
	

--// Select Island
if First_Sea then
AreaList = {
  'Jungle', 'Buggy', 'Desert', 'Snow', 'Marine', 'Sky', 'Prison', 'Colosseum', 'Magma', 'Fishman', 'Sky Island', 'Fountain'
} elseif Second_Sea then
AreaList = {
  'Area 1', 'Area 2', 'Zombie', 'Marine', 'Snow Mountain', 'Ice fire', 'Ship', 'Frost', 'Forgotten'
} elseif Third_Sea then
AreaList = {
  'Pirate Port', 'Amazon', 'Marine Tree', 'Deep Forest', 'Haunted Castle', 'Nut Island', 'Ice Cream Island', 'Cake Island', 'Choco Island', 'Candy Island','Tiki Outpost'
}
end

        --// Tween Island
        function TP2(P1)
        local Distance = (P1.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
        if Distance >= 1 then
        Speed = 350
        end
        game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart,TweenInfo.new(Distance/Speed, Enum.EasingStyle.Linear), {
          CFrame = P1
        }):Play()
        if _G.CancelTween2 then
        game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart,TweenInfo.new(Distance/Speed, Enum.EasingStyle.Linear), {
          CFrame = P1
        }):Cancel()
        end
        _G.Clip2 = true
        wait(Distance/Speed)
        _G.Clip2 = false
        end



 function Tween(Pos)
        Distance = (Pos.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
        if game.Players.LocalPlayer.Character.Humanoid.Sit == true then game.Players.LocalPlayer.Character.Humanoid.Sit = true end
        pcall(function() tween = game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart,TweenInfo.new(Distance/350, Enum.EasingStyle.Linear),{CFrame = Pos}) end)
        tween:Play()
        if Distance <= 300 then
            tween:Cancel()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Pos
        end
        if _G.StopTween == true then
            tween:Cancel()
            _G.Clip = false
        end
    end
    
------// BLOX FRUIT
--// Sea world
First_Sea = false
Second_Sea = false
Third_Sea = false
local placeId = game.PlaceId
if placeId == 2753915549 then
First_Sea = true
elseif placeId == 4442272183 then
Second_Sea = true
elseif placeId == 7449423635 then
Third_Sea = true
end

----- Dropdown 

  Dropdown = AddDropdown(Tab1o, {
     Name = "Select",
     Options = {"Mele", "Sword"},
     Default = "Melee",
     Callback = function()
     end
   })
-------TOGGLE 

    AddButton(Tab1o, {
     Name = "Stop Tween",
    Callback = function()
  end
  })

  Dropdown = AddDropdown(Tab1o, {
     Name = "Select Speed Tween",
     Options = {"150", "160", "170", "180"},
     Default = "150",
     Callback = function()
     end
   })

Toggle = AddToggle(Tab1o, {
      Name = "Quets Bone or Cake",
      Default = true,
      Callback = function()
     end
    })
    

Section = AddSection(Tab1o, {"Farm Level"})      
  Dropdown = AddDropdown(Tab1o, {
     Name = "Select Mod Farm",
     Options = {"Level [Config Bugs]", "Bone", "Katakuri", "Mod Aura"},
     Default = "Select Farm",
     Callback = function()
     end
   })

Toggle = Add
     Toggle = AddToggle(Tab1o, {
      Name = "Farm",
      Default = false,
      Callback = function()
  end
  })

    Section = AddSection(Tab1o, {"FPS"})      
    AddButton(Tab1o, {
     Name = "Boat FPS",
    Callback = function()
  end
  })

Section = AddSection(Tab1o, {"Farm Mastery"})      
Dropdown = AddDropdown(Tab1o, {
     Name = "Select",
     Options = {"20", "25", "30", "35", "40", "45", "50"},
     Default = "20",
     Callback = function()
     end
   })
   

Toggle = AddToggle(Tab1o, {
      Name = "Farm Mastery Fruits",
      Default = false,
      Callback = function()
     end
    })
    

Toggle = AddToggle(Tab1o, {
      Name = "Farm Mastery Gun",
      Default = false,
      Callback = function()
     end
    })
    

-----Settings
Dropdown = AddDropdown(Tab2o, {
     Name = "Select Bring Mod",
     Options = {"200", "250", "300", "350", "400", "450", "500"},
     Default = "250",
     Callback = function()
     end
   })
   

     Toggle = AddToggle(Tab2o, {
      Name = "Bring Mod (Turn off it Ban)",
      Default = true,
      Callback = function()
     end
    })
    

     Toggle = AddToggle(Tab2o, {
      Name = "Fast Attach [Beta]",
      Default = true,
      Callback = function()
     end
    })
    

     Toggle = AddToggle(Tab2o, {
      Name = "Anti Afk",
      Default = true,
      Callback = function()
     end
    })
    

     Toggle = AddToggle(Tab2o, {
      Name = "Remove Dame",
      Default = true,
      Callback = function()
    spawn(function()
        while wait() do
            if FaiFaoRemovetext then
                game:GetService("ReplicatedStorage").Assets.GUI.DamageCounter.Enabled = false
            else
                game:GetService("ReplicatedStorage").Assets.GUI.DamageCounter.Enabled = true
            end
        end
        end)


     end
    })
    

     Toggle = AddToggle(Tab2o, {
      Name = "Attch Kata [Beta]",
      Default = false,
      Callback = function()
     end
    })
    

    Section = AddSection(Tab2o, {"Settings Skill"})      
     Toggle = AddToggle(Tab2o, {
      Name = "Skill Z",
      Default = true,
      Callback = function()
     end
    })
    

     Toggle = AddToggle(Tab2o, {
      Name = "Skill X",
      Default = false,
      Callback = function()
     end
    })
    

     Toggle = AddToggle(Tab2o, {
      Name = "Skill C",
      Default = false,
      Callback = function()
     end
    })
    

     Toggle = AddToggle(Tab2o, {
      Name = "Skill V",
      Default = false,
      Callback = function()
     end
    })
    

     Toggle = AddToggle(Tab2o, {
      Name = "Skill F",
      Default = false,
      Callback = function()
     end
    })
    

     Toggle = AddToggle(Tab2o, {
      Name = "Attach Kitsune, Ice, Trex, Light, Dragon",
      Default = false,
      Callback = function()
     end
    })
    

-----Stats
    Section = AddSection(Tab2o, {"Stats"})      
Dropdown = AddDropdown(Tab2o, {
     Name = "Select",
     Options = {"Mele", "Sword", "Gun", "Blox Fruits"},
     Default = "...",
     Callback = function()
     end
   })
   

Toggle = AddToggle(Tab2o, {
      Name = "Aotu Stats",
      Default = false,
      Callback = function()
     end
    })
-----Tele
    Section = AddSection(Tab4o, {"Soon!!"})      
-----Raid
    Section = AddSection(Tab5o, {"Raid"})      
    Dropdown = AddDropdown(Tab5o, {
     Name = "Select",
     Options = {"Flame", "Ice", "Dark", "Rumbie", "Magma", "Light", "Sand", "Buddha", "Phoenix", "Dough"},
     Default = "...",
     Callback = function()
     end
   })
   

Toggle = AddToggle(Tab5o, {
      Name = "Buy Chip",
      Default = false,
      Callback = function()
     end
    })

Toggle = AddToggle(Tab5o, {
      Name = "Stats Raid",
      Default = false,
      Callback = function()
     end
    })

Toggle = AddToggle(Tab5o, {
      Name = "Kill Aura",
      Default = false,
      Callback = function()
spawn(function()
    while wait() do
        if KillAura then
            pcall(function()
                for i,v in pairs(game.Workspace.Enemies:GetDescendants()) do
                    if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                        repeat task.wait()
                            sethiddenproperty(game:GetService('Players').LocalPlayer,"SimulationRadius",math.huge)
                            v.Humanoid.Health = 0
                            v.HumanoidRootPart.CanCollide = false
                        until not KillAura or not v.Parent or v.Humanoid.Health <= 0
                    end
                end
            end)
        end
    end
end)


     end
    })

Toggle = AddToggle(Tab5o, {
      Name = "Next Island",
      Default = false,
      Callback = function()
     end
    })

Toggle = AddToggle(Tab5o, {
      Name = "Attach Mods",
      Default = false,
      Callback = function()
     end
    })
-----Shop
    Section = AddSection(Tab6o, {"Fruits"})      
Toggle = AddToggle(Tab6o, {
      Name = "Aotu Random Fruits",
      Default = false,
      Callback = function()
    _G.Random_Auto = Value
spawn(function()
    pcall(function()
        while wait(.1) do
            if _G.Random_Auto then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Cousin","Buy")
            end 
        end
    end)
end)
     end
    })

    Section = AddSection(Tab6o, {"Haki"})      
    AddButton(Tab6o, {
     Name = "Geppo",
    Callback = function()
  end
  })

    AddButton(Tab6o, {
     Name = "Buso Haki",
    Callback = function()
  end
  })

    AddButton(Tab6o, {
     Name = "Soru",
    Callback = function()
  end
  })

    AddButton(Tab6o, {
     Name = "Ken Haki",
    Callback = function()
  end
  })
    Section = AddSection(Tab6o, {"Mele"})      
    AddButton(Tab6o, {
     Name = "Black Leg",
    Callback = function()
  end
  })

    AddButton(Tab6o, {
     Name = "Electro",
    Callback = function()
  end
  })

    AddButton(Tab6o, {
     Name = "Fishman Karate",
    Callback = function()
  end
  })

    AddButton(Tab6o, {
     Name = "Dragon Claw",
    Callback = function()
  end
  })

    AddButton(Tab6o, {
     Name = "SuperHuman",
    Callback = function()
  end
  })

    AddButton(Tab6o, {
     Name = "Death Step",
    Callback = function()
  end
  })

    AddButton(Tab6o, {
     Name = "Skarkman Karate",
    Callback = function()
  end
  })

    AddButton(Tab6o, {
     Name = "Electric Claw",
    Callback = function()
  end
  })

    AddButton(Tab6o, {
     Name = "Dragon Talon",
    Callback = function()
  end
  })

    AddButton(Tab6o, {
     Name = "Godhuman",
    Callback = function()
  end
  })

    AddButton(Tab6o, {
     Name = "Sanguine Art",
    Callback = function()
  end
  })
    Section = AddSection(Tab6o, {"Items"})      
    AddButton(Tab6o, {
     Name = "Refund Stats",
    Callback = function()
  end
  })

    AddButton(Tab6o, {
     Name = "Reroll Race",
    Callback = function()
  end
  })
-----Race
    Section = AddSection(Tab7o, {"Soon..."})      
-----Sea
    Section = AddSection(Tab8o, {"Soon..."})      
-----Misc
    Section = AddSection(Tab9o, {"Rejoin"})      
    AddButton(Tab9o, {
     Name = "Rejoin Server",
    Callback = function()
  end
  })

    AddButton(Tab9o, {
     Name = "Hop Server",
    Callback = function()
  end
  })

    AddButton(Tab9o, {
     Name = "Hop Server Low Player",
    Callback = function()
  end
  })

   Section = AddSection(Tab9o, {"Open Ui"})      
    AddButton(Tab9o, {
     Name = "Shop Fruits",
    Callback = function()
  end
  })

    AddButton(Tab9o, {
     Name = "Tetle Name",
    Callback = function()
  end
  })