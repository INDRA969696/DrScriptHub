-- Manggil "Mesin" Orion
local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()

-- 1. Bikin Jendelanya (The Window)
local Window = OrionLib:MakeWindow({
    Name = "FILSUF CONSOLE v1", 
    HidePremium = false, 
    SaveConfig = true, 
    ConfigFolder = "FilsufSettings",
    IntroText = "Welcome, Ghost Admin" -- Tulisan pas loading
})

-- 2. Bikin Tab (Kategori di sebelah kiri)
local MainTab = Window:MakeTab({
	Name = "Server Destruct",
	Icon = "rbxassetid://4483345998", -- Icon opsional
	PremiumOnly = false
})

-- 3. CARA KERJA TOMBOL (Button)
MainTab:AddButton({
	Name = "Matiin Lampu Server",
	Callback = function()
        -- DI SINI TEMPAT NARUH SCRIPT LU --
        for _, v in pairs(game.Workspace:GetDescendants()) do
            if v:IsA("Light") then v.Enabled = false end
        end
        print("Cekrek! Gelap.")
  	end    
})

-- 4. CARA KERJA TOGGLE (Saklar On/Off)
MainTab:AddToggle({
	Name = "Anti Gravity (On/Off)",
	Default = false,
	Callback = function(Value)
		if Value then
            game.Workspace.Gravity = 10 -- Kalo On
        else
            game.Workspace.Gravity = 196.2 -- Kalo Off (Balik Normal)
        end
	end    
})

-- WAJIB: Biar Orion Lib-nya muncul
OrionLib:I
nit()
