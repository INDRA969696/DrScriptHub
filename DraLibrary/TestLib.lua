-- [ ! THIS IS FOR A TEST. DO NOT USE IT. IT MAY GET AN ERROR ANYTIME WHILE I AM TYPING ! ]
local IndraLib = {}

function IndraLib:window(HubName)
    local player = game.Players.LocalPlayer
    local pgui = player:WaitForChild("PlayerGui")
    
    -- Hapus yang lama biar gak numpuk
    if pgui:FindFirstChild("IndraHub") then pgui.IndraHub:Destroy() end

    local ScreenGui = Instance.new("ScreenGui")
    ScreenGui.Name = "IndraHub"
    ScreenGui.ResetOnSpawn = false
    ScreenGui.Parent = pgui

    -- [ MAIN FRAME ]
    local MainFrame = Instance.new("Frame")
    MainFrame.Name = "MainFrame"
    MainFrame.Size = UDim2.new(0, 280, 0, 270) 
    MainFrame.Position = UDim2.new(0.5, 0, 0, 0)
    MainFrame.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
    MainFrame.BorderSizePixel = 0
    MainFrame.ClipsDescendants = false
    MainFrame.Active = true
    MainFrame.Draggable = false
    MainFrame.Parent = ScreenGui

    local FrameStroke = Instance.new("UIStroke")
    FrameStroke.Thickness = 2
    FrameStroke.Color = Color3.fromRGB(255, 255, 255)
    FrameStroke.Parent = MainFrame

    Instance.new("UICorner", MainFrame).CornerRadius = UDim.new(0, 8)

    -- [ TITLE ]
    local TitleBtn = Instance.new("TextLabel")
    TitleBtn.Size = UDim2.new(1, 0, 0, 35)
    TitleBtn.BackgroundTransparency = 1
    TitleBtn.Text = "    " .. tostring(HubName)
    TitleBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
    TitleBtn.TextSize = 18
    TitleBtn.Font = Enum.Font.GothamBold
    TitleBtn.TextXAlignment = Enum.TextXAlignment.Left
    TitleBtn.Parent = MainFrame

    local Btn = Instance.new("TextButton")
    Btn.Size = UDim2.new(0, 200, 0, 35)
    Btn.AnchorPoint = Vector2.new(0.5, 0.5)
    Btn.Position = UDim2.new(0.5, 0, 0.5, 0) 
    Btn.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
    Btn.Text = "Text"
    Btn.TextColor3 = Color3.fromRGB(255, 255, 255)
    Btn.Font = Enum.Font.Gotham
    Btn.TextSize = 14
    Btn.Parent = MainFrame
        
    Instance.new("UICorner", Btn).CornerRadius = UDim.new(0, 4)

end

return IndraLib
