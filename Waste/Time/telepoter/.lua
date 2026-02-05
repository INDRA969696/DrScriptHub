local lIIllIllIII = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local IIIlIllII = lIIllIllIII:CreateWindow({
   Name = "WasteTime! | Teleporter!",
   LoadingTitle = "Securing Environment...",
   LoadingSubtitle = "Hello, user",
   ConfigurationSaving = {
      Enabled = true,
      FolderName = "DraScriptConfig",
      FileName = "MainConfig"
   },
   KeySystem = false,
})

local llIIlIlllIIIll = IIIlIllII:CreateTab("Home", 4483362458)
local lIlllIllIlIIllIl = IIIlIllII:CreateTab("Teleport", 4483362458)
local MainSection = llIIlIlllIIIll:CreateSection("Utilities")

local llIlllIlIIIllIllIl = "Lobby"

local llIIlllIllIlllIIIllIllIII = {
    ["Lobby"]   = "Lobby",
    ["Library"] = "Library",
    ["Future"]  = "Future",
    ["End"]     = "End",
    ["Zenith"]  = "Zenith",
    ["Cyber"]   = "Cyber"
}

llIIlIlllIIIll:CreateButton({
   Name = "Execute IY",
   Callback = function()
       loadstring(game:HttpGet("https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source"))()
       
       lIIllIllIII:Notify({
           Title = "Success",
           Content = "Infinite Yield Injected!",
           Duration = 3,
           Image = 4483362458,
       })
   end,
})

llIIlIlllIIIll:CreateSlider({
   Name = "Adjust Speed",
   Range = {16, 250},
   Increment = 1,
   Suffix = "Speed",
   CurrentValue = 16,
   Flag = "WalkSpeedSlider", 
   Callback = function(v)
       if game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid") then
           game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = v
       end
   end,
})

lIlllIllIlIIllIl:CreateDropdown({
   Name = "Teleporter",
   Options = {"Lobby", "Library", "Future", "End", "Zenith", "Cyber"},
   CurrentOption = {"Lobby"},
   MultipleOptions = false,
   Flag = "Tp_Slect",
   Callback = function(Option)
       if type(Option) == "table" then
           llIlllIlIIIllIllIl = Option[1]
       else
           llIlllIlIIIllIllIl = Option
       end
       print("Lapor: Ganti Target ke " .. tostring(llIlllIlIIIllIllIl))
   end,
})

lIlllIllIlIIllIl:CreateButton({
  Name = "Go To Locate",
  Callback = function()
     local llIlIIIlIlIIl = llIIlllIllIlllIIIllIllIII[llIlllIlIIIllIllIl]
     if llIlIIIlIlIIl then
           local tp_remote = game:GetService("ReplicatedStorage"):FindFirstChild("TeleportToZone")
           
           if tp_remote then
               tp_remote:FireServer(llIlIIIlIlIIl)
               print("Berhasil Teleport Ke " .. llIlIIIlIlIIl)
           else
               warn("Remote 'TeleportToZone' nggak nemu di ReplicatedStorage!")
           end
       end
    end,
})

lIIllIllIII:LoadConfiguration()
