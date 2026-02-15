local IndraLib = loadstring(game:HttpGet("https://raw.githubusercontent.com/INDRA969696/DrScriptHub/main/DraLibrary/DraLibs?t="..tick()))()

local MyHub = IndraLib:CreateWindow("Enter Brainrot | DraScript")



MyHub:CreateButton("auto up", function()
    local h = game.Players.LocalPlayer.Character.HumanoidRootPart
    h.CFrame = CFrame.new(0, 2, -24); task.wait(0.1); h.CFrame = CFrame.new(0, 3.0975608825683594, -60); task.wait(0.1); h.CFrame = CFrame.new(0, 5.292682647705078, -96); task.wait(0.1); h.CFrame = CFrame.new(0, 8.585365295410156, -132); task.wait(0.1); h.CFrame = CFrame.new(0, 12.975608825683594, -168); task.wait(0.1);h.CFrame = CFrame.new(0, 18.46341323852539, -204); task.wait(0.1); h.CFrame = CFrame.new(0, 25.048778533935547, -240); task.wait(0.1); h.CFrame = CFrame.new(0, 32.73170471191406, -276); task.wait(0.1); h.CFrame = CFrame.new(0, 41.51219177246094, -312); task.wait(0.1); h.CFrame = CFrame.new(0, 51.39024353027344, -348); task.wait(0.1); h.CFrame = CFrame.new(0, 62.36585235595703, -384); task.wait(0.1); h.CFrame = CFrame.new(0, 74.43901824951172, -420); task.wait(0.1); h.CFrame = CFrame.new(0, 87.60974884033203, -456); task.wait(0.1); h.CFrame = CFrame.new(0, 101.87804412841797, -492); task.wait(0.1); h.CFrame = CFrame.new(0, 117.24390411376953, -528); task.wait(0.1);h.CFrame = CFrame.new(0, 133.7073211669922, -564); task.wait(0.1); h.CFrame = CFrame.new(0, 151.26829528808594, -600); task.wait(0.1); h.CFrame = CFrame.new(0, 169.9268341064453, -636); task.wait(0.1); h.CFrame = CFrame.new(0, 189.6829376220703, -672); task.wait(0.1); h.CFrame = CFrame.new(0, 210.53660583496094, -708); task.wait(0.1); h.CFrame = CFrame.new(0, 232.4878387451172, -744); task.wait(0.1); h.CFrame = CFrame.new(0, 255.53662109375, -780); task.wait(0.1); h.CFrame = CFrame.new(0, 279.6829833984375, -816); task.wait(0.1); h.CFrame = CFrame.new(0, 304.9268798828125, -852); task.wait(0.1); h.CFrame = CFrame.new(0, 331.2683410644531, -888); task.wait(0.1);h.CFrame = CFrame.new(0, 358.7073669433594, -924); task.wait(0.1); h.CFrame = CFrame.new(0, 387.2439270019531, -960); task.wait(0.1); h.CFrame = CFrame.new(0, 416.8780822753906, -996); task.wait(0.1); h.CFrame = CFrame.new(0, 447.6097717285156, -1032); task.wait(0.1); h.CFrame = CFrame.new(0, 479.4390563964844, -1068); task.wait(0.1); h.CFrame = CFrame.new(0, 512.3659057617188, -1104); task.wait(0.1); h.CFrame = CFrame.new(0, 546.3903198242188, -1140); task.wait(0.1); h.CFrame = CFrame.new(0, 581.5122680664062, -1176); task.wait(0.1); h.CFrame = CFrame.new(0, 617.7317504882812, -1212); task.wait(0.1); h.CFrame = CFrame.new(0, 655.0487670898438, -1248); task.wait(0.1);h.CFrame = CFrame.new(0, 693.4634399414062, -1284); task.wait(0.1); h.CFrame = CFrame.new(0, 732.9756469726562, -1320); task.wait(0.1); h.CFrame = CFrame.new(0, 773.5853881835938, -1356); task.wait(0.1); h.CFrame = CFrame.new(0, 815.2926635742188, -1392); task.wait(0.5); h.CFrame = CFrame.new(0, 861.5975952148438, -1426); task.wait(0.5);
end)




local folderTarget = workspace.Cutscene.Sewer.Parts
local sizeKunci = Vector3.new(69.2635498046875, 3.148869276046753, 490)

local function modifyPart(p)
    if p and p:IsA("BasePart") then
        p.Size = sizeKunci
        p.Transparency = 0.7
        p.CanCollide = false
    end
end

local p24 = folderTarget:GetChildren()[24]
if p24 then
    modifyPart(p24)
end

task.spawn(function()
    while task.wait(1) do
        local p = folderTarget:GetChildren()[24]
        if p and p.Size ~= sizeKunci then
            modifyPart(p)
        end
    end
end)
