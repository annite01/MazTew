loadstring(game:HttpGet(("https://raw.githubusercontent.com/daucobonhi/Ui-Redz-V2/refs/heads/main/UiREDzV2.lua")))()

       local Window = MakeWindow({
         Hub = {
         Title = "MazTew Hub - Blox Fruits Version1.2 | by Maz",
         Animation = "MazTew Hub"
         },
        Key = {
        KeySystem = true,
        Title = "MazTew Hub",
        Description = "Key Scripts",
        KeyLink = "https://anotepad.com/note/read/dnyfaksq",
        Keys = {"MazTew-Beta", "Admin"},
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
       Color = Color3.fromRGB(10, 10, 10),
       Corner = false,
       Stroke = true,
       StrokeColor = Color3.fromRGB(255, 10, 10)
      })
      
------ Tab
     local Tab1o = MakeTab({Name = "Main"})
     local Tab2o = MakeTab({Name = "Settings"})
     local Tab3o = MakeTab({Name = "Stats"})
     local Tab4o = MakeTab({Name = "Tele"})
     local Tab5o = MakeTab({Name = "Raid"})
     local Tab6o = MakeTab({Name = "Shop"})
     local Tab7o = MakeTab({Name = "Race V4"})
     local Tab8o = MakeTab({Name = "Sea Even"})
     local Tab9o = MakeTab({Name = "Misc"})
     
     
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
      Name = "Quets Bone and Cake",
      Default = false,
      Callback = function()
     end
    })
    

Section = AddSection(Tab1o, {"Farm Level"})      
     Toggle = AddToggle(Tab1o, {
      Name = "Farm Leve",
      Default = false,
      Callback = function()
     end
    })
    

Toggle = AddToggle(Tab1o, {
      Name = "KaiTun[Bugs]",
      Default = false,
      Callback = function()
     end
    })
    

Section = AddSection(Tab1o, {"Mods"})      
Toggle = AddToggle(Tab1o, {
      Name = "Mod Aura",
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
    

Section = AddSection(Tab1o, {"Bone🦴"})      
     Toggle = AddToggle(Tab1o, {
      Name = "Farm Bone",
      Default = false,
      Callback = function()
     end
    })
    

     Toggle = AddToggle(Tab1o, {
      Name = "Random Bone",
      Default = false,
      Callback = function()
     end
    })
    

Section = AddSection(Tab1o, {"Cake"})      
     Toggle = AddToggle(Tab1o, {
      Name = "Farm Cake",
      Default = false,
      Callback = function()
     end
    })
    

     Toggle = AddToggle(Tab1o, {
      Name = "Aotu Spam Cake",
      Default = true,
      Callback = function()
     end
    })
    

-----Settings
     Toggle = AddToggle(Tab2o, {
      Name = "Anti Lag",
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
      Name = "Bing Mods",
      Default = true,
      Callback = function()
     end
    })
    

     Toggle = AddToggle(Tab2o, {
      Name = "Bypass Tp",
      Default = false,
      Callback = function()
     end
    })
    

     Toggle = AddToggle(Tab2o, {
      Name = "Lock Bing Mods",
      Default = false,
      Callback = function()
     end
    })
    

-----Stats

Dropdown = AddDropdown(Tab3o, {
     Name = "Select",
     Options = {"Mele", "Sword", "Gun", "Blox Fruits"},
     Default = "...",
     Callback = function()
     end
   })
   

Toggle = AddToggle(Tab3o, {
      Name = "Aotu Stats",
      Default = false,
      Callback = function()
     end
    })
-----Tele
    Section = AddSection(Tab4o, {"Sea 1"})      
    Dropdown = AddDropdown(Tab4o, {
     Name = "Select",
     Options = {"WindMill", "Marine", "Middle Town", "Jungle", "Pirate Village", "Desert", "Snow Island", "MarineFord", "Colosseum", "Sky Island 1", "Sky Island 2", "Sky Island 3", "Prison", "Magma Village", "Under Water Island", "Fountain City", "Shank Room", "Mob Island"},
     Default = "...",
     Callback = function()
     end
   })
   
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