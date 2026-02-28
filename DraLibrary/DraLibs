local IndraLib = {}

function IndraLib:window(HubName)
    local player = game.Players.LocalPlayer
    local pgui = player:WaitForChild("PlayerGui")
    if pgui:FindFirstChild("IndraHub") then pgui.IndraHub:Destroy() end

    local ScreenGui = Instance.new("ScreenGui")
    ScreenGui.Name = "IndraHub"
    ScreenGui.Parent = pgui
    ScreenGui.ResetOnSpawn = false
    ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

    -- [ MAIN FRAME ] --
    local MainFrame = Instance.new("Frame")
    MainFrame.Name = "MainFrame"
    MainFrame.Size = UDim2.new(0, 220, 0, 35)
    MainFrame.Position = UDim2.new(0.5, -110, 0.3, 0)
    MainFrame.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
    MainFrame.BorderSizePixel = 0
    MainFrame.ClipsDescendants = true 
    MainFrame.Active = true
    MainFrame.Parent = ScreenGui

    local FrameStroke = Instance.new("UIStroke")
    FrameStroke.Thickness = 1.8
    FrameStroke.Color = Color3.fromRGB(255, 255, 255)
    FrameStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
    FrameStroke.Parent = MainFrame

    Instance.new("UICorner", MainFrame).CornerRadius = UDim.new(0, 9)

    -- [ TITLE BUTTON (DRAGGER) ] --
    local TitleBtn = Instance.new("TextButton")
    TitleBtn.Size = UDim2.new(1, 0, 0, 35)
    TitleBtn.BackgroundTransparency = 1
    TitleBtn.Text = "      " .. HubName .. "  ▼"
    TitleBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
    TitleBtn.TextSize = 16
    TitleBtn.Font = Enum.Font.SourceSansBold
    TitleBtn.TextXAlignment = Enum.TextXAlignment.Left
    TitleBtn.ZIndex = 10 
    TitleBtn.Parent = MainFrame

    local Container = Instance.new("ScrollingFrame")
    Container.Size = UDim2.new(1, 0, 0, 210) 
    Container.Position = UDim2.new(0, 0, 0, 35)
    Container.BackgroundTransparency = 1
    Container.BorderSizePixel = 0
    Container.CanvasSize = UDim2.new(0, 0, 0, 0)
    Container.ScrollBarThickness = 2
    Container.Visible = false 
    Container.Parent = MainFrame

    local UIList = Instance.new("UIListLayout")
    UIList.Parent = Container
    UIList.Padding = UDim.new(0, 7)
    UIList.HorizontalAlignment = Enum.HorizontalAlignment.Center

    UIList:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
        Container.CanvasSize = UDim2.new(0, 0, 0, UIList.AbsoluteContentSize.Y + 10)
    end)

    -- [ DRAG SYSTEM ] --
    local UIS = game:GetService("UserInputService")
    local dragging, dragStart, startPos
    TitleBtn.InputBegan:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
            dragging = true
            dragStart = input.Position
            startPos = MainFrame.Position
            input.Changed:Connect(function()
                if input.UserInputState == Enum.UserInputState.End then dragging = false end
            end)
        end
    end)
    UIS.InputChanged:Connect(function(input)
        if dragging and (input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch) then
            local delta = input.Position - dragStart
            MainFrame.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
        end
    end)

    -- [ OPEN/CLOSE ] --
    local toggled = false
    TitleBtn.MouseButton1Click:Connect(function()
        toggled = not toggled
        if toggled then
            TitleBtn.Text = "      " .. HubName .. "  ▲"
            Container.Visible = true
            MainFrame:TweenSize(UDim2.new(0, 220, 0, 250), "Out", "Quint", 0.4, true)
        else
            TitleBtn.Text = "      " .. HubName .. "  ▼"
            MainFrame:TweenSize(UDim2.new(0, 220, 0, 35), "Out", "Quint", 0.4, true)
            task.delay(0.3, function() if not toggled then Container.Visible = false end end)
        end
    end)

    local InnerLib = {}

    -- Stroke Reguler Helper
    local function AddStroke(obj, color)
        local s = Instance.new("UIStroke")
        s.Thickness = 1
        s.Color = color or Color3.fromRGB(80, 80, 80)
        s.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
        s.Parent = obj
        return s
    end

    function InnerLib:button(Text, Callback)
        local Btn = Instance.new("TextButton")
        Btn.Size = UDim2.new(0, 200, 0, 35)
        Btn.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
        Btn.Text = Text
        Btn.TextColor3 = Color3.fromRGB(255, 255, 255)
        Btn.Parent = Container
        Instance.new("UICorner", Btn).CornerRadius = UDim.new(0, 5)
        AddStroke(Btn)
        Btn.MouseButton1Click:Connect(Callback)
    end

    function InnerLib:sbutton(Text, Callback)
        local SBtn = Instance.new("TextButton")
        SBtn.Size = UDim2.new(0, 200, 0, 25)
        SBtn.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
        SBtn.Text = Text
        SBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
        SBtn.TextSize = 10
        SBtn.Parent = Container
        Instance.new("UICorner", SBtn).CornerRadius = UDim.new(0, 5)
        AddStroke(SBtn, Color3.fromRGB(70, 70, 70))
        SBtn.MouseButton1Click:Connect(Callback)
    end

    function InnerLib:toggle(Text, Callback)
        local Tgl = Instance.new("TextButton")
        Tgl.Size = UDim2.new(0, 200, 0, 35)
        Tgl.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
        Tgl.Text = Text .. " : OFF"
        Tgl.TextColor3 = Color3.fromRGB(255, 80, 80)
        Tgl.Parent = Container
        Instance.new("UICorner", Tgl).CornerRadius = UDim.new(0, 5)
        AddStroke(Tgl)
        
        local State = false
        Tgl.MouseButton1Click:Connect(function()
            State = not State
            Tgl.TextColor3 = State and Color3.fromRGB(80, 255, 80) or Color3.fromRGB(255, 80, 80)
            Tgl.Text = Text .. (State and " : ON" or " : OFF")
            Callback(State)
        end)
    end

    function InnerLib:textbox(Placeholder, Callback)
        local BoxFrame = Instance.new("Frame")
        BoxFrame.Size = UDim2.new(0, 200, 0, 35)
        BoxFrame.BackgroundColor3 = Color3.fromRGB(10, 10, 10)
        BoxFrame.Parent = Container
        Instance.new("UICorner", BoxFrame).CornerRadius = UDim.new(0, 5)
        AddStroke(BoxFrame)

        local TBox = Instance.new("TextBox")
        TBox.Size = UDim2.new(1, -10, 1, 0)
        TBox.Position = UDim2.new(0, 5, 0, 0)
        TBox.BackgroundTransparency = 1
        TBox.PlaceholderText = Placeholder
        TBox.Text = ""
        TBox.TextColor3 = Color3.fromRGB(255, 255, 255)
        TBox.Parent = BoxFrame
        TBox.FocusLost:Connect(function() Callback(TBox.Text) end)
    end

    function InnerLib:dropdown(Text, List, Callback)
        local DropBtn = Instance.new("TextButton")
        DropBtn.Size = UDim2.new(0, 200, 0, 35)
        DropBtn.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
        DropBtn.Text = Text .. " >"
        DropBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
        DropBtn.Parent = Container
        Instance.new("UICorner", DropBtn).CornerRadius = UDim.new(0, 5)
        AddStroke(DropBtn)

        local SidePanel = Instance.new("Frame")
        SidePanel.Size = UDim2.new(0, 140, 0, 0)
        SidePanel.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
        SidePanel.Visible = false
        SidePanel.ClipsDescendants = true
        SidePanel.ZIndex = 500
        SidePanel.Parent = ScreenGui
        
        Instance.new("UICorner", SidePanel).CornerRadius = UDim.new(0, 5)
        AddStroke(SidePanel, Color3.fromRGB(255, 255, 255))

        local SideLayout = Instance.new("UIListLayout")
        SideLayout.Parent = SidePanel
        
        DropBtn.MouseButton1Click:Connect(function()
            SidePanel.Visible = not SidePanel.Visible
            if SidePanel.Visible then
                SidePanel.Position = UDim2.new(0, DropBtn.AbsolutePosition.X + 225, 0, DropBtn.AbsolutePosition.Y)
                SidePanel.Size = UDim2.new(0, 140, 0, math.min(#List * 30, 150))
            end
        end)

        for _, v in pairs(List) do
            local Opt = Instance.new("TextButton")
            Opt.Size = UDim2.new(1, 0, 0, 30)
            Opt.BackgroundTransparency = 1
            Opt.Text = tostring(v)
            Opt.TextColor3 = Color3.fromRGB(200, 200, 200)
            Opt.Parent = SidePanel
            Opt.MouseButton1Click:Connect(function()
                DropBtn.Text = tostring(v) .. " >"
                Callback(v)
                SidePanel.Visible = false
            end)
        end
    end

    return InnerLib
end

return IndraLib

