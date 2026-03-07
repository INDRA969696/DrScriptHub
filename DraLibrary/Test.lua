-- [ ! THIS IS FOR A TEST. DO NOT USE IT. IT MAY GET AN ERROR ANYTIME WHILE I AM TYPING ! ]
local GKeyLib = {}
local GetKeyClip = ""
local Real = ""
local SC = ""
local LS = "loadstring"

local function new(cls, props, children)
    local obj = Instance.new(cls)
    for prop, val in pairs(props) do obj[prop] = val end
    for _, child in pairs(children or {}) do child.Parent = obj end
    return obj
end

function GKeyLib:V1(HubName, Key, Link, Script)
    Real = Key
    GetKeyClip = Link
    SC = Script
    local player = game.Players.LocalPlayer
    local pgui = player:WaitForChild("PlayerGui")
    
    if pgui:FindFirstChild("IndraHub") then pgui.IndraHub:Destroy() end

    local ScreenGui = Instance.new("ScreenGui")
    ScreenGui.Name = "IndraHub"
    ScreenGui.ResetOnSpawn = false
    ScreenGui.Parent = pgui

    local MainFrame = Instance.new("Frame")
    MainFrame.Name = "MainFrame"
    MainFrame.Size = UDim2.new(0, 280, 0, 270)
    MainFrame.AnchorPoint = Vector2.new(0.5, 0.55)
    MainFrame.Position = UDim2.new(0.51, 0, 0.45, 0)
    MainFrame.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
    MainFrame.BorderSizePixel = 0
    MainFrame.ClipsDescendants = false
    MainFrame.Active = true
    MainFrame.Draggable = false
    MainFrame.Parent = ScreenGui

    local FrameStroke = Instance.new("UIStroke")
    FrameStroke.Thickness = 1.5
    FrameStroke.Color = Color3.fromRGB(255, 255, 255)
    FrameStroke.Parent = MainFrame

    Instance.new("UICorner", MainFrame).CornerRadius = UDim.new(0, 8)

    local TitleBtn = Instance.new("TextLabel")
    TitleBtn.Size = UDim2.new(1, 0, 0, 50)
    TitleBtn.BackgroundTransparency = 1
    TitleBtn.Text = "    " .. tostring(HubName)
    TitleBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
    TitleBtn.TextSize = 22
    TitleBtn.Font = Enum.Font.GothamBold
    TitleBtn.TextXAlignment = Enum.TextXAlignment.Left
    TitleBtn.Parent = MainFrame

    local TitleGKey = Instance.new("TextLabel")
    TitleGKey.Size = UDim2.new(1, 0, 0.8, 0)
    TitleGKey.AnchorPoint = Vector2.new(0.5, 0.4)
    TitleGKey.Position = UDim2.new(0.5, 0, 0.2, 0) 
    TitleGKey.BackgroundTransparency = 1
    TitleGKey.Text = "GetKeySystem"
    TitleGKey.TextColor3 = Color3.fromRGB(255, 255, 255)
    TitleGKey.TextSize = 30
    TitleGKey.Font = Enum.Font.ArialBold
    TitleGKey.TextXAlignment = Enum.TextXAlignment.Center
    TitleGKey.Parent = MainFrame

    local KeyPlace = Instance.new("TextBox")
    KeyPlace.Size = UDim2.new(0, 200, 0, 35)
    KeyPlace.AnchorPoint = Vector2.new(0.5, 0.4)
    KeyPlace.Position = UDim2.new(0.5, 0, 0.5, 0) 
    KeyPlace.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
    KeyPlace.Text = "Your Key Here"
    KeyPlace.TextColor3 = Color3.fromRGB(255, 255, 255)
    KeyPlace.Font = Enum.Font.GothamBold
    KeyPlace.Parent = MainFrame
    Instance.new("UICorner",  KeyPlace).CornerRadius = UDim.new(0, 500)

    local EnterBtn = Instance.new("TextButton")
    EnterBtn.Size = UDim2.new(0, 200, 0, 35)
    EnterBtn.AnchorPoint = Vector2.new(0.5, 0.4)
    EnterBtn.Position = UDim2.new(0.5, 0, 0.7, 0) 
    EnterBtn.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
    EnterBtn.Text = "Enter Key"
    EnterBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
    EnterBtn.Font = Enum.Font.GothamBold
    EnterBtn.TextSize = 14
    EnterBtn.Parent = MainFrame
    EnterBtn.MouseButton1Click:Connect(function()
      if KeyPlace.Text == Real then
        local Titlevalid = new("TextLabel", {Name = "IfValid", Size = 5, Color3.fromRGB(0, 255, 0), Text = "valid", AnchorPoint = Vector2.new(0.5, 0.4), Position = UDim2.new(0.5, 0, 0.55, 0, BackgroundTransparency = 1), Parent = MainFrame}) end
        if string.find(SC, "loadstring") then
          loadstring(SC)()
          task.wait(0.5)
          pgui.IndraHub:Destroy() end
        else
          loadstring(game:HttpGet(SC))()
          task.wait(0.2)
          pgui.IndraHub:Destroy() end
      if KeyPlace.Text ~= Real then
        local TitleInvalid = new("TextLabel", {Name = "IfInValid", Size = 5, Color3.fromRGB(255, 0, 0), Text = "Invalid", AnchorPoint = Vector2.new(0.5, 0.4), Position = UDim2.new(0.5, 0, 0.55, 0, ZIndex = 500, BackgroundTransparency = 1), Parent = MainFrame})
      task.wait(1)
      TitleInvalid.ZIndex = 0
      end)
    Instance.new("UICorner",  EnterBtn).CornerRadius = UDim.new(0, 10)

    local GKeyBtn = Instance.new("TextButton")
    GKeyBtn.Size = UDim2.new(0, 150, 0, 20)
    GKeyBtn.AnchorPoint = Vector2.new(0.5, 0.5)
    GKeyBtn.Position = UDim2.new(0.5, 0, 0.8355, 0) 
    GKeyBtn.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
    GKeyBtn.Text = "Get Key"
    GKeyBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
    GKeyBtn.Font = Enum.Font.GothamBold
    GKeyBtn.TextSize = 14
    GKeyBtn.Parent = MainFrame
    GKeyBtn.MouseButton1Click:Connect(function()
      setclipboard(GetKeyClip) end)

    Instance.new("UICorner",  GKeyBtn).CornerRadius = UDim.new(0, 10)

    local DelBtn = Instance.new("TextButton")
    DelBtn.Size = UDim2.new(0.1, 0, 0, 30)
    DelBtn.BackgroundTransparency = 1
    DelBtn.Text = "X" 
    DelBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
    DelBtn.TextSize = 18
    DelBtn.Font = Enum.Font.GothamBold
    DelBtn.TextXAlignment = Enum.TextXAlignment.Center
    DelBtn.Position = UDim2.new(1, -30, 0, 0)
    DelBtn.Parent = MainFrame
    DelBtn.MouseButton1Click:Connect(function()
      if pgui:FindFirstChild("IndraHub") then pgui.GKeyLib:Destroy() end end)
end
return GKeyLib
