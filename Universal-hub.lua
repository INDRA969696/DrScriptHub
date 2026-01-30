local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
   Name = "DraScriptHub | VIPayment 👽",
   LoadingTitle = "DraScriptCenter Loading...",
   LoadingSubtitle = "by VIPayment",
   ConfigurationSaving = { Enabled = true, Folder = "DraScriptData" },
   KeySystem = true,
   KeySettings = {
      Title = "DraScript Key",
      Subtitle = "Get key on our website",
      Note = "Grey Hat Community Only!",
      FileName = "DraKey",
      SaveKey = true,
      GrabKeyFromSite = false,
      Key = {"VIP_ALIP_77"} -- GANTI MANUAL TIAP MINGGU 🗿
   }
})

---- SECTION HOME ----
local Home = Window:CreateTab("Home", 4483345998) -- Icon Home
Home:CreateSection("Welcome to DraScriptCenter")
Home:CreateParagraph({Title = "About Me", Content = "Halo! Ini adalah Hub buatan VIPayment buat seru-seruan (For Fun)."})
Home:CreateLabel("LOG UPDATE:")
Home:CreateLabel("- V1.0 Release Hub")
Home:CreateLabel("- Added Blox Fruits & Brookhaven")

---- SECTION HUB (Daftar Script Gede) ----
local Hub = Window:CreateTab("Hub", 4483345998)
Hub:CreateSection("Main Script List")

-- Tombol Script 1
Hub:CreateButton({
   Name = "V | Script 1: Blox Fruits Hoho Hub",
   Callback = function()
       loadstring(game:HttpGet('https://raw.githubusercontent.com/acsu123/HOHO_HUB/main/Start'))()
   end,
})

-- Tombol Script 2
Hub:CreateButton({
   Name = "V | Script 2: Brookhaven Admin",
   Callback = function()
       loadstring(game:HttpGet('https://raw.githubusercontent.com/Edge-IY/infiniteyield/master/source'))()
   end,
})

-- Sediakan lahan buat script lain (3, 4, 5)
Hub:CreateButton({ Name = "V | Script 3: Coming Soon", Callback = function() print("Sabar ya!") end })

---- SECTION OTHER (Fitur Tambahan) ----
local Other = Window:CreateTab("Other", 4483345998)
Other:CreateSection("Character Tweaks")

Other:CreateSlider({
   Name = "Walkspeed",
   Range = {16, 300},
   Increment = 1,
   Suffix = "Speed",
   CurrentValue = 16,
   Flag = "SpeedSlider",
   Callback = function(Value)
       game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Value
   end,
})

Other:CreateButton({
   Name = "Infinite Jump",
   Callback = function()
       -- Fitur Inf Jump simpel
       game:GetService("UserInputService").JumpRequest:Connect(function()
           game.Players.LocalPlayer.Character:FindFirstChildOfClass('Humanoid'):ChangeState("Jumping")
       end)
   end,
})

---- SECTION CREDITS ----
local Credits = Window:CreateTab("Credits", 4483345998)
Credits:CreateSection("The Creator")
Credits:CreateLabel("Owner: VIPayment (The Grey Hat)")
Credits:CreateLabel("UI Design: DraScriptCenter Inspired")
Credits:CreateParagraph({Title = "Special Thanks", Content = "Thanks to Rayfield UI Library and all script suppliers."})

Rayfield:Notify({
   Title = "DraScriptHub Loaded!",
   Content = "Selamat bersenang-senang, VIPayment! 🥴",
   Duration = 5,
   Image = 4483
		345998,
})
