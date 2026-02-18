local DraLibs = loadstring(game:HttpGet("https://raw.githubusercontent.com/INDRA969696/DrScriptHub/refs/heads/main/DraLibrary/DraLibs"))()
local hub = DraLibs:CreateWindow("Unfair Flip")
hub:CreateButton("Inf Coin", function()
  game:GetService("ReplicatedStorage").GiveMoney:FireServer(9e500)
end)

hub:CreateButton("Inf Gem", function() game:GetService("ReplicatedStorage").GemUpgrades:FireServer("ExtraCardOptions", -9e500 , 1, 2) 
end
)
