-- ==========================================
-- 🛡️ ระบบ Auto Parry + Test GUI
-- ==========================================

local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local UserInputService = game:GetService("UserInputService")
local VirtualInputManager = game:GetService("VirtualInputManager")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local LocalPlayer = Players.LocalPlayer

-- ==========================================
-- ⚙️ ตั้งค่าตัวแปร
-- ==========================================
local Parry_Settings = {
    Enabled = false,            -- เริ่มต้นปิดไว้ก่อนเพื่อความปลอดภัย
    ShowCircle = true,          
    Distance = 8,               
    Mode = "Normal",            
}

local KillerAnimations = {
    ["rbxassetid://129626174716003"] = true, ["rbxassetid://113691709436161"] = true,
    ["rbxassetid://117042998468241"] = true, ["rbxassetid://133963973694098"] = true,
    ["rbxassetid://93902163029544"] = true, ["rbxassetid://75618342544502"] = true,
    ["rbxassetid://104540716539347"] = true, ["rbxassetid://113255068724446"] = true,
    ["rbxassetid://74968262036854"] = true, ["rbxassetid://125430111937587"] = true,
    ["rbxassetid://101636125032002"] = true, ["rbxassetid://100014992013740"] = true,
    ["rbxassetid://84926129581106"] = true, ["rbxassetid://81963230963908"] = true,
    ["rbxassetid://105374834496520"] = true, ["rbxassetid://111920872708571"] = true,
    ["rbxassetid://117070354890871"] = true, ["rbxassetid://106871536134254"] = true,
    ["rbxassetid://110360975271091"] = true, ["rbxassetid://91021650846272"] = true,
    ["rbxassetid://135002183282873"] = true, ["rbxassetid://121216847022485"] = true,
    ["rbxassetid://127417297154354"] = true, ["rbxassetid://83333467665074"] = true,
}

local KillerAnimationsNumeric = {}
for animId in pairs(KillerAnimations) do
    local numeric = tostring(animId):match("%d+")
    if numeric then KillerAnimationsNumeric[numeric] = true end
end

local ParryState = {
    Cooldown = false,
    CooldownThread = nil,
    LastAttempt = 0,
    ProcessedChars = {}
}

-- ==========================================
-- ฟังก์ชันตัวช่วย (Logic หลัก)
-- ==========================================
local function IsKiller(player) return player and player.Team and player.Team.Name == "Killer" end

local function IsDownedOrDead(character)
    if not character then return true end
    local root = character:FindFirstChild("HumanoidRootPart")
    if not root then return true end
    local state = character:GetAttribute("State")
    return state == "Downed" or state == "Dead"
end

local function SimulateParryClick()
    local isMobile = UserInputService.TouchEnabled and not UserInputService.KeyboardEnabled
    if isMobile then
        local playerGui = LocalPlayer:FindFirstChild("PlayerGui")
        local mobGui = playerGui and playerGui:FindFirstChild("Survivor-mob")
        local controls = mobGui and mobGui:FindFirstChild("Controls")
        local guiMob = controls and controls:FindFirstChild("Gui-mob")

        if guiMob and guiMob.Visible then
            if firesignal then
                pcall(function()
                    firesignal(guiMob.MouseButton1Down); task.wait(0.01); firesignal(guiMob.MouseButton1Up)
                end)
            end
        else
            pcall(function()
                if mouse2click then mouse2click() return end
                if mouse2press and mouse2release then
                    mouse2press(); task.wait(0.01); mouse2release(); return
                end
                VirtualInputManager:SendMouseButtonEvent(0, 0, 1, true, game, 0)
                task.wait(0.01)
                VirtualInputManager:SendMouseButtonEvent(0, 0, 1, false, game, 0)
            end)
        end
    else
        pcall(function()
            VirtualInputManager:SendMouseButtonEvent(0, 0, 2, true, game, 0)
            task.wait(0.01)
            VirtualInputManager:SendMouseButtonEvent(0, 0, 2, false, game, 0)
        end)
    end
end

local function ExecuteParry()
    if ParryState.Cooldown then return end
    local now = os.clock()
    if now - ParryState.LastAttempt < 0.13 then return end
    ParryState.LastAttempt = now

    pcall(function()
        local remotes = ReplicatedStorage:FindFirstChild("Remotes")
        local items = remotes and remotes:FindFirstChild("Items")
        local dagger = items and items:FindFirstChild("Parrying Dagger")
        local parryRemote = dagger and dagger:FindFirstChild("parry")
        
        if parryRemote then
            for _ = 1, 5 do
                parryRemote:FireServer()
                task.wait(0.015)
            end
        end
    end)
    task.spawn(SimulateParryClick)
end

local function ListenToKillerAnimations(killerChar)
    if not killerChar or ParryState.ProcessedChars[killerChar] then return end
    ParryState.ProcessedChars[killerChar] = true
    local humanoid = killerChar:FindFirstChildOfClass("Humanoid") or killerChar:WaitForChild("Humanoid", 5)
    if not humanoid then return end
    local animator = humanoid:FindFirstChildOfClass("Animator") or humanoid:WaitForChild("Animator", 5)
    if not animator then return end

    animator.AnimationPlayed:Connect(function(track)
        local animId = track.Animation and track.Animation.AnimationId or ""
        local numericId = tostring(animId):match("%d+")
        if not (KillerAnimations[animId] or KillerAnimationsNumeric[numericId]) then return end
        if not Parry_Settings.Enabled or ParryState.Cooldown then return end

        local myChar = LocalPlayer.Character
        if IsDownedOrDead(myChar) then return end

        local myRoot = myChar and myChar:FindFirstChild("HumanoidRootPart")
        local killerRoot = killerChar:FindFirstChild("HumanoidRootPart")
        if not myRoot or not killerRoot then return end

        local distance = (myRoot.Position - killerRoot.Position).Magnitude

        if Parry_Settings.Mode == "Aggressive" then
            local engageDist = 12
            local maxDist = Parry_Settings.Distance + 5
            if distance <= engageDist then ExecuteParry()
            elseif distance <= maxDist then
                local startTime = os.clock()
                local conn
                conn = RunService.Heartbeat:Connect(function()
                    if os.clock() - startTime >= 1.5 or ParryState.Cooldown or not myRoot or not killerRoot or IsDownedOrDead(myChar) then
                        if conn then conn:Disconnect() end
                        return
                    end
                    if (myRoot.Position - killerRoot.Position).Magnitude <= engageDist then
                        ExecuteParry(); if conn then conn:Disconnect() end
                    end
                end)
            end
        else
            if distance > Parry_Settings.Distance then return end
            local dirToKiller = (killerRoot.Position - myRoot.Position).Unit
            local myLook = myRoot.CFrame.LookVector
            if myLook:Dot(dirToKiller) < 0.6 then return end
            ExecuteParry()
        end
    end)

    killerChar.AncestryChanged:Connect(function(_, parent)
        if not parent then ParryState.ProcessedChars[killerChar] = nil end
    end)
end

task.spawn(function()
    pcall(function()
        local remotes = ReplicatedStorage:WaitForChild("Remotes", 5)
        local items = remotes and remotes:WaitForChild("Items", 5)
        local dagger = items and items:WaitForChild("Parrying Dagger", 5)
        local parryResult = dagger and dagger:WaitForChild("parryResult", 5)
        if parryResult then
            parryResult.OnClientEvent:Connect(function(isSuccess, customCooldown)
                local cooldownTime = tonumber(customCooldown) or (isSuccess and 90 or 60)
                ParryState.Cooldown = true
                if ParryState.CooldownThread then task.cancel(ParryState.CooldownThread) end
                ParryState.CooldownThread = task.delay(cooldownTime, function() ParryState.Cooldown = false end)
            end)
        end
    end)
end)

local ParryCircle
local function CreateParryCircle()
    if ParryCircle then ParryCircle:Destroy() end
    ParryCircle = Instance.new("CylinderHandleAdornment")
    ParryCircle.Name = "AutoParryCircle"
    ParryCircle.Radius = Parry_Settings.Distance
    ParryCircle.InnerRadius = math.max(0.1, Parry_Settings.Distance - 0.15)
    ParryCircle.Height = 0.01
    ParryCircle.AlwaysOnTop = false
    ParryCircle.Adornee = workspace:FindFirstChildOfClass("Terrain")
    ParryCircle.Transparency = 1
    ParryCircle.Color3 = Color3.fromRGB(0, 230, 255)
    ParryCircle.Parent = gethui and gethui() or game:GetService("CoreGui")
end

RunService.Heartbeat:Connect(function()
    if Parry_Settings.ShowCircle and Parry_Settings.Enabled then
        local myChar = LocalPlayer.Character
        local root = myChar and myChar:FindFirstChild("HumanoidRootPart")
        if root and ParryCircle then
            ParryCircle.Transparency = 0.05
            ParryCircle.Radius = Parry_Settings.Distance
            ParryCircle.InnerRadius = math.max(0.1, Parry_Settings.Distance - 0.13)
            ParryCircle.Color3 = Parry_Settings.Mode == "Aggressive" and Color3.fromRGB(255, 0, 80) or Color3.fromRGB(0, 230, 255)
            local rayParams = RaycastParams.new()
            rayParams.FilterDescendantsInstances = {myChar}
            rayParams.FilterType = Enum.RaycastFilterType.Exclude
            local ray = workspace:Raycast(root.Position, Vector3.new(0, -15, 0), rayParams)
            local pos = ray and ray.Position or (root.Position - Vector3.new(0, 3, 0))
            ParryCircle.CFrame = CFrame.new(pos + Vector3.new(0, 0.05, 0)) * CFrame.Angles(math.pi/2, 0, 0)
        else
            if ParryCircle then ParryCircle.Transparency = 1 end
        end
    else
        if ParryCircle then ParryCircle.Transparency = 1 end
    end
end)

CreateParryCircle()

local function SetupKiller(player)
    if player ~= LocalPlayer and IsKiller(player) then
        if player.Character then ListenToKillerAnimations(player.Character) end
        player.CharacterAdded:Connect(function(char) ListenToKillerAnimations(char) end)
    end
    player:GetPropertyChangedSignal("Team"):Connect(function()
        if IsKiller(player) and player.Character then ListenToKillerAnimations(player.Character) end
    end)
end

for _, p in ipairs(Players:GetPlayers()) do SetupKiller(p) end
Players.PlayerAdded:Connect(SetupKiller)


-- ==========================================
-- 🎨 ส่วน GUI สำหรับทดสอบ (สร้างใหม่)
-- ==========================================
local function CreateTestGUI()
    local ScreenGui = Instance.new("ScreenGui")
    ScreenGui.Name = "AutoParryTestGUI"
    ScreenGui.ResetOnSpawn = false
    ScreenGui.Parent = game:GetService("CoreGui")

    local MainFrame = Instance.new("Frame")
    MainFrame.Name = "Main"
    MainFrame.Size = UDim2.new(0, 220, 0, 200)
    MainFrame.Position = UDim2.new(0.5, -110, 0.5, -100)
    MainFrame.BackgroundColor3 = Color3.fromRGB(25, 25, 30)
    MainFrame.BorderSizePixel = 0
    MainFrame.Active = true
    MainFrame.Draggable = true -- ลากย้ายได้ง่ายๆ
    MainFrame.Parent = ScreenGui

    local UICorner = Instance.new("UICorner", MainFrame)
    UICorner.CornerRadius = UDim.new(0, 10)

    local Title = Instance.new("TextLabel")
    Title.Size = UDim2.new(1, 0, 0, 30)
    Title.BackgroundColor3 = Color3.fromRGB(40, 40, 50)
    Title.Text = "Auto Parry Test"
    Title.TextColor3 = Color3.new(1, 1, 1)
    Title.Font = Enum.Font.GothamBold
    Title.TextSize = 14
    Title.Parent = MainFrame
    Instance.new("UICorner", Title).CornerRadius = UDim.new(0, 10)

    local ListLayout = Instance.new("UIListLayout")
    ListLayout.Padding = UDim.new(0, 5)
    ListLayout.SortOrder = Enum.SortOrder.LayoutOrder
    ListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
    ListLayout.Parent = MainFrame

    local Padding = Instance.new("UIPadding")
    Padding.PaddingTop = UDim.new(0, 35)
    Padding.Parent = MainFrame

    -- ฟังก์ชันสร้างปุ่ม
    local function CreateButton(text, callback)
        local btn = Instance.new("TextButton")
        btn.Size = UDim2.new(0.9, 0, 0, 30)
        btn.BackgroundColor3 = Color3.fromRGB(50, 50, 60)
        btn.Text = text
        btn.TextColor3 = Color3.new(1, 1, 1)
        btn.Font = Enum.Font.Gotham
        btn.TextSize = 12
        btn.Parent = MainFrame
        Instance.new("UICorner", btn).CornerRadius = UDim.new(0, 6)
        
        btn.MouseButton1Click:Connect(function()
            callback(btn)
        end)
        return btn
    end

    -- 1. ปุ่มเปิด/ปิด
    local ToggleBtn = CreateButton("Status: OFF", function(btn)
        Parry_Settings.Enabled = not Parry_Settings.Enabled
        if Parry_Settings.Enabled then
            btn.Text = "Status: ON"
            btn.BackgroundColor3 = Color3.fromRGB(0, 150, 0)
        else
            btn.Text = "Status: OFF"
            btn.BackgroundColor3 = Color3.fromRGB(50, 50, 60)
        end
    end)

    -- 2. ปุ่มโหมด
    local ModeBtn = CreateButton("Mode: Normal", function(btn)
        if Parry_Settings.Mode == "Normal" then
            Parry_Settings.Mode = "Aggressive"
            btn.Text = "Mode: Aggressive"
            btn.BackgroundColor3 = Color3.fromRGB(150, 50, 50)
        else
            Parry_Settings.Mode = "Normal"
            btn.Text = "Mode: Normal"
            btn.BackgroundColor3 = Color3.fromRGB(50, 50, 60)
        end
    end)

    -- 3. ปรับระยะ
    local DistanceFrame = Instance.new("Frame")
    DistanceFrame.Size = UDim2.new(0.9, 0, 0, 30)
    DistanceFrame.BackgroundColor3 = Color3.fromRGB(50, 50, 60)
    DistanceFrame.Parent = MainFrame
    Instance.new("UICorner", DistanceFrame).CornerRadius = UDim.new(0, 6)

    local DistLabel = Instance.new("TextLabel")
    DistLabel.Size = UDim2.new(0.6, 0, 1, 0)
    DistLabel.BackgroundTransparency = 1
    DistLabel.Text = "Dist: 8"
    DistLabel.TextColor3 = Color3.new(1, 1, 1)
    DistLabel.Font = Enum.Font.Gotham
    DistLabel.TextSize = 12
    DistLabel.Parent = DistanceFrame

    local MinusBtn = Instance.new("TextButton")
    MinusBtn.Size = UDim2.new(0.2, 0, 1, 0)
    MinusBtn.BackgroundTransparency = 1
    MinusBtn.Text = "-"
    MinusBtn.TextColor3 = Color3.new(1, 1, 1)
    MinusBtn.Font = Enum.Font.GothamBold
    MinusBtn.TextSize = 16
    MinusBtn.Parent = DistanceFrame

    local PlusBtn = Instance.new("TextButton")
    PlusBtn.Size = UDim2.new(0.2, 0, 1, 0)
    PlusBtn.Position = UDim2.new(0.8, 0, 0, 0)
    PlusBtn.BackgroundTransparency = 1
    PlusBtn.Text = "+"
    PlusBtn.TextColor3 = Color3.new(1, 1, 1)
    PlusBtn.Font = Enum.Font.GothamBold
    PlusBtn.TextSize = 16
    PlusBtn.Parent = DistanceFrame

    MinusBtn.MouseButton1Click:Connect(function()
        if Parry_Settings.Distance > 4 then
            Parry_Settings.Distance -= 1
            DistLabel.Text = "Dist: " .. Parry_Settings.Distance
        end
    end)

    PlusBtn.MouseButton1Click:Connect(function()
        if Parry_Settings.Distance < 20 then
            Parry_Settings.Distance += 1
            DistLabel.Text = "Dist: " .. Parry_Settings.Distance
        end
    end)

    -- 4. เปิด/ปิด วงกลม
    local CircleBtn = CreateButton("Circle: ON", function(btn)
        Parry_Settings.ShowCircle = not Parry_Settings.ShowCircle
        btn.Text = "Circle: " .. (Parry_Settings.ShowCircle and "ON" or "OFF")
    end)
end

CreateTestGUI()
print("✅ โหลดระบบ Auto Parry + GUI สำหรับทดสอบสำเร็จ!")
