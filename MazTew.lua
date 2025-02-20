loadstring(game:HttpGet(("https://raw.githubusercontent.com/daucobonhi/Ui-Redz-V2/refs/heads/main/UiREDzV2.lua")))()

       local Window = MakeWindow({
         Hub = {
         Title = "MazTew Loli Hub | Blox Fruits              VIET NAM LOVE",
         Animation = "MazTew Loli Hub"
         },
        Key = {
        KeySystem = false,
        Title = "MazTew Loli Hub",
        Description = "Key Scripts",
        KeyLink = "https://anotepad.com/note/read/x39g4brb",
        Keys = {"MazTew-Hhsjs-Jhdjshsh", "Admin"},
        Notifi = {
        Notifications = true,
        CorrectKey = "Loading Script...",
       Incorrectkey = "The key is incorrect",
       CopyKeyLink = "Copy Link GetKey"
      }
    }
  })

       MinimizeButton({
       Image = "http://www.roblox.com/asset/?id=115393038747995",
       Size = {31, 30},
       Color = Color3.fromRGB(10, 15, 15),
       Corner = true,
       Stroke = true,
       StrokeColor = Color3.fromRGB(255, 250, 255)
      })
      
------ Tab
     local Tab1o = MakeTab({Name = "Tap Main"})
     local Tab3o = MakeTab({Name = "Tap Stats"})
     local Tab4o = MakeTab({Name = "Tap Teleport"})
     local Tab5o = MakeTab({Name = "Tap Dungeon"})
     local Tab6o = MakeTab({Name = "Tap Shop"})
     local Tab7o = MakeTab({Name = "Tap Race V4"})
     local Tab8o = MakeTab({Name = "Tap Sea Even"})
     local Tab9o = MakeTab({Name = "Tap Misc"})
     local Tab2o = MakeTab({Name = "Tap Settings"})
----- Dropdown 

  Dropdown = AddDropdown(Tab1o, {
     Name = "Select",
     Options = {"Mele", "Sword", "Blox Fruits"},
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

Toggle = AddToggle(Tab1o, {
      Name = "Quets Bone or Cake",
      Default = true,
      Callback = function()
     end
    })
    

Section = AddSection(Tab1o, {"Farm Level"})      
  Dropdown = AddDropdown(Tab1o, {
     Name = "Select Mod Farm",
     Options = {"Level", "Bone", "Katakuri", "Mod Aura"},
     Default = "Level",
     Callback = function()
     end
   })

Toggle = Add
     Toggle = AddToggle(Tab1o, {
      Name = "Start Farm",
      Default = false,
      Callback = function()
  end
  })

     Toggle = AddToggle(Tab1o, {
      Name = "Farm Valentino💞",
      Default = false,
      Callback = function()
  end
  })

    Section = AddSection(Tab1o, {"Chest"})      
  Dropdown = AddDropdown(Tab1o, {
     Name = "Select Chest",
     Options = {"40", "50", "60", "70"},
     Default = "Select Chest",
     Callback = function()
     end
   })

     Toggle = AddToggle(Tab1o, {
      Name = "Farm Chest",
      Default = false,
      Callback = function()
  end
  })

     Toggle = AddToggle(Tab1o, {
      Name = "Stop Item Key & Cup",
      Default = false,
      Callback = function()
  end
  })

     Toggle = AddToggle(Tab1o, {
      Name = "Hop Server",
      Default = false,
      Callback = function()
  end
  })

    Section = AddSection(Tab1o, {"FPS & Code"})      
    AddButton(Tab1o, {
     Name = "Boat FPS",
    Callback = function()
  end
  })

    AddButton(Tab1o, {
     Name = "Redeem Code",
    Callback = function()
  end
  })

    Section = AddSection(Tab1o, {"Haki Ken"})      
     Toggle = AddToggle(Tab1o, {
      Name = "Aotu Up Ken V2",
      Default = false,
      Callback = function()
     end
    })
    

     Toggle = AddToggle(Tab1o, {
      Name = "Farm Ken & Ken Hop",
      Default = false,
      Callback = function()
     end
    })
    

Section = AddSection(Tab1o, {"Farm Mastery"})      
     Toggle = AddToggle(Tab1o, {
      Name = "Farm Mastery",
      Default = false,
      Callback = function()
     end
    })
    

Dropdown = AddDropdown(Tab1o, {
     Name = "Select",
     Options = {"20", "25", "30", "35", "40", "45", "50"},
     Default = "30",
     Callback = function()
     end
   })
   

Dropdown = AddDropdown(Tab1o, {
     Name = "Select Mastery",
     Options = {"Blox Fruits", "Gun"},
     Default = "Blox Fruits",
     Callback = function()
     end
   })
   

-----Settings
Dropdown = AddDropdown(Tab2o, {
     Name = "Select Fast Attach",
     Options = {"0", "0.1", "0.15", "0.25", "0.50", "0.75", "1"},
     Default = "0.15",
     Callback = function()
     end
   })
   

Dropdown = AddDropdown(Tab2o, {
     Name = "Select Bring Mod",
     Options = {"200", "250", "300", "350", "400", "450", "500"},
     Default = "300",
     Callback = function()
     end
   })
   

     Toggle = AddToggle(Tab2o, {
      Name = "Bring Mod",
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
      Name = "Aotu Buso Haki",
      Default = true,
      Callback = function()
     end
    })
    

     Toggle = AddToggle(Tab2o, {
      Name = "Aotu Ken Haki",
      Default = false,
      Callback = function()
     end
    })
    

     Toggle = AddToggle(Tab2o, {
      Name = "Race V3",
      Default = false,
      Callback = function()
     end
    })

     Toggle = AddToggle(Tab2o, {
      Name = "Race V4",
      Default = false,
      Callback = function()
     end
    })
    

     Toggle = AddToggle(Tab2o, {
      Name = "Remove Dame",
      Default = false,
      Callback = function()
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
      Default = true,
      Callback = function()
     end
    })
    

     Toggle = AddToggle(Tab2o, {
      Name = "Skill C",
      Default = true,
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
      Name = "Attach Kitsune, Ice, Trex, Light, Dragon, Gas,...",
      Default = false,
      Callback = function()
     end
    })
    

-----Stats
    Section = AddSection(Tab3o, {"Stats"})      
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
    AddButton(Tab4o, {
     Name = "Teleport Sea1",
    Callback = function()
  end
  })

    Section = AddSection(Tab4o, {"Sea 2"})      
    AddButton(Tab4o, {
     Name = "Teleport Sea2",
    Callback = function()
  end
  })

    Section = AddSection(Tab4o, {"Sea 3"})      
    AddButton(Tab4o, {
     Name = "Teleport Sea3",
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
      Name = "Aworking Fruits",
      Default = false,
      Callback = function()
     end
    })

    Section = AddSection(Tab5o, {"Law"})      
Toggle = AddToggle(Tab5o, {
      Name = "Kill Law",
      Default = false,
      Callback = function()
     end
    })

Toggle = AddToggle(Tab5o, {
      Name = "Start Raid Law & Buy Chip Law",
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
     end
    })

Toggle = AddToggle(Tab6o, {
      Name = "Aotu Store Fruits",
      Default = false,
      Callback = function()
     end
    })

Toggle = AddToggle(Tab6o, {
      Name = "Teleport Fruits Find",
      Default = false,
      Callback = function()
     end
    })

Toggle = AddToggle(Tab6o, {
      Name = "Door Fruits",
      Default = false,
      Callback = function()
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

    Section = AddSection(Tab6o, {"Race"})      
    AddButton(Tab6o, {
     Name = "Race Ghoul",
    Callback = function()
  end
  })

    AddButton(Tab6o, {
     Name = "Race Cyborg [2k5 Fragment]",
    Callback = function()
  end
  })

    AddButton(Tab6o, {
     Name = "Race Dragon",
    Callback = function()
  end
  })
-----Race
    Section = AddSection(Tab7o, {"Soon..."})      
-----Sea
    Section = AddSection(Tab8o, {"Sea"})      
    Section = AddSection(Tab2o, {"Settings Evens"})      
     Toggle = AddToggle(Tab2o, {
      Name = "Sea",
      Default = true,
      Callback = function()
     end
    })
    

     Toggle = AddToggle(Tab2o, {
      Name = "Pilanha",
      Default = true,
      Callback = function()
     end
    })
    

     Toggle = AddToggle(Tab2o, {
      Name = "Shank",
      Default = true,
      Callback = function()
     end
    })
    

     Toggle = AddToggle(Tab2o, {
      Name = "Shank Boss",
      Default = true,
      Callback = function()
     end
    })
    

     Toggle = AddToggle(Tab2o, {
      Name = "Boat Ghost & Boat Normal",
      Default = true,
      Callback = function()
     end
    })
    

Toggle = AddToggle(Tab8o, {
      Name = "Start Farm Evens",
      Default = false,
      Callback = function()
     end
    })

Toggle = AddToggle(Tab8o, {
      Name = "Use Gun Dragon[Boat or Shank]",
      Default = false,
      Callback = function()
     end
    })

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

   Section = AddSection(Tab9o, {"Anti"})      
     Toggle = AddToggle(Tab9o, {
      Name = "Anti Ban",
      Default = true,
      Callback = function()
     end
    })

     Toggle = AddToggle(Tab9o, {
      Name = "Anti Afk",
      Default = true,
      Callback = function()
     end
    })
