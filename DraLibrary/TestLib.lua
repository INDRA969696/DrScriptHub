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
    -- Tinggi gue buat 250 dulu biar kelihatan isinya
    MainFrame.Size = UDim2.new(0, 300, 0, 300) 
    MainFrame.Position = UDim2.new(0.5, -110, 0.4, 0)
    MainFrame.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
    MainFrame.BorderSizePixel = 0
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

    -- [ CONTAINER ] - Pake ScrollingFrame biar tombolnya ga ilang
    local Container = Instance.new("Frame")
    Container.Name = "Container"
    Container.Size = UDim2.new(1, -10, 1, -45)
    Container.Position = UDim2.new(0, 5, 0, 30)
    Container.BackgroundTransparency = 1
    Container.BorderSizePixel = 0
    Container.ScrollBarThickness = 2
    Container.CanvasSize = UDim2.new(0, 0, 0, 0) -- Nanti otomatis nambah
    Container.Parent = MainFrame

    local UIList = Instance.new("UIListLayout")
    UIList.Parent = Container
    UIList.Padding = UDim.new(0, 5)
    UIList.HorizontalAlignment = Enum.HorizontalAlignment.Center

    -- Auto Adjust Height
    UIList:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
        Container.CanvasSize = UDim2.new(0, 0, 0, UIList.AbsoluteContentSize.Y + 10)
    end)

    local Btn = Instance.new("TextButton")
    
    Btn.Size = UDim2.new(0, 200, 0, 35)
    Btn.Position = UDim2.new("0, 5, 0, 30")
    Btn.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
    Btn.Text = Text
    Btn.TextColor3 = Color3.fromRGB(255, 255, 255)
    Btn.Font = Enum.Font.Gotham
    Btn.TextSize = 14
    Btn.Parent = MainFrame
        
    Instance.new("UICorner", Btn).CornerRadius = UDim.new(0, 4)

    return InnerLib
end

return IndraLib
