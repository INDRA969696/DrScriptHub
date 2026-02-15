if game.PlaceId ~= 70960300100792 then return end

-- [This script is made free if you find this script with a key please do not use it because there is a risk of malware in it[!]]--
-- Made By : Indra No Root
-- Brand Name : DraScript/DraSky
local IndraLib = loadstring(game:HttpGet("https://raw.githubusercontent.com/INDRA969696/DrScriptHub/refs/heads/main/DraLibrary/DraLibs?t="..tick()))()

local Remote = game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CollectPart")
local sudahMuncul = false 

local MyHub = IndraLib:CreateWindow("Droper Incremental")

-- Auto Click
MyHub:CreateToggle("Auto click", function(State)
    _G.AutoFish = State
    if _G.AutoFish then
        task.spawn(function()
            while _G.AutoFish do
              game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("DropperClick"):FireServer()
              task.wait()
            end
        end)
    end
end)

-- Rebirth
MyHub:CreateButton("rebirth", function()
  game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("Rebirth"):FireServer()
end)

-- Coins Feature
task.spawn(function()
    while task.wait(0.5) do
        local success, coinPart = pcall(function() 
            return workspace.Features.CoinUpgrades.Coins 
        end)
        
        if success and coinPart.Transparency == 0.5 and not sudahMuncul then
            sudahMuncul = true
            
            MyHub:CreateToggle("Auto Collect Coins", function(State)
                _G.AutoCollect = State
                
                if _G.AutoCollect then
                    task.spawn(function()
                        while _G.AutoCollect do
                            --  scan
                            local items = workspace.MapEssentials.Spawned:GetChildren()
                            for _, item in pairs(items) do
                                if not _G.AutoCollect then break end
                                Remote:FireServer(item.Name)
                            end
                            task.wait(0.1)
                        end
                    end)
                end
            end)
            
            print("Auto Collect Button loaded")
            break
        end
    end
    
end)
