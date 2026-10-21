-- services --
local vim = game:GetService("VirtualInputManager")
local players = game:GetService("Players")
local TS = game:GetService("TweenService")
local workspace = game:GetService("Workspace")
local replicatedStorage = game:GetService("ReplicatedStorage")
local runService = game:GetService("RunService")
-- local player
local player = players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoid = character:WaitForChild("Humanoid")
local HRP = character:WaitForChild("HumanoidRootPart")
-- flags --
local tweening = false
-- auto farm values --
local index = 1
 -- rayfield --
local repo = "https://raw.githubusercontent.com/deividcomsono/Obsidian/main/"
local Library = loadstring(game:HttpGet(repo .. "Library.lua"))()
local Options = Library.Options
local Toggles = Library.Toggles
Library:SetDPIScale(85)

-- UI color: white instead of the default purple accent
pcall(function()
    Library.Scheme.AccentColor = Color3.fromRGB(255, 255, 255)
end)

-- ZERO HUB / 3AM style floating open-close button
local function CreateZeroHUBToggleButton(iconId)
    local ToggleGui = Instance.new("ScreenGui")
    ToggleGui.Name = "Build_ZeroHUB_Toggle"
    ToggleGui.ResetOnSpawn = false
    ToggleGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
    ToggleGui.Parent = game:GetService("CoreGui")

    local ToggleButton = Instance.new("TextButton")
    ToggleButton.Name = "ToggleButton"
    ToggleButton.Text = ""
    ToggleButton.AutoButtonColor = false
    ToggleButton.Size = UDim2.fromOffset(46, 46)
    ToggleButton.Position = UDim2.fromOffset(15, 120)
    ToggleButton.BackgroundColor3 = Color3.fromRGB(18, 12, 14)
    ToggleButton.BackgroundTransparency = 0.05
    ToggleButton.ClipsDescendants = true
    ToggleButton.Parent = ToggleGui

    local Corner = Instance.new("UICorner")
    Corner.CornerRadius = UDim.new(0, 10)
    Corner.Parent = ToggleButton

    local Stroke = Instance.new("UIStroke")
    Stroke.Color = Color3.fromRGB(110, 25, 35)
    Stroke.Thickness = 1.2
    Stroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
    Stroke.Parent = ToggleButton

    local Stroke2 = Instance.new("UIStroke")
    Stroke2.Color = Color3.fromRGB(140, 30, 45)
    Stroke2.Thickness = 4
    Stroke2.Transparency = 0.6
    Stroke2.Parent = ToggleButton

    local IconFrame = Instance.new("Frame")
    IconFrame.Size = UDim2.fromScale(0.75, 0.75)
    IconFrame.Position = UDim2.fromScale(0.125, 0.125)
    IconFrame.BackgroundTransparency = 1
    IconFrame.ClipsDescendants = true
    IconFrame.Parent = ToggleButton

    pcall(function()
        local customIcon = Library:GetCustomIcon(iconId)
        if customIcon then
            local Icon = Instance.new("ImageLabel")
            Icon.BackgroundTransparency = 1
            Icon.Image = customIcon.Url
            Icon.ImageRectOffset = customIcon.ImageRectOffset
            Icon.ImageRectSize = customIcon.ImageRectSize
            Icon.Size = UDim2.fromScale(1, 1)
            Icon.ScaleType = Enum.ScaleType.Fit
            Icon.Parent = IconFrame
        end
    end)

    local TweenService = game:GetService("TweenService")
    ToggleButton.MouseButton1Click:Connect(function()
        TweenService:Create(ToggleButton, TweenInfo.new(0.08), {Size = UDim2.fromOffset(40, 40)}):Play()
        task.wait(0.08)
        TweenService:Create(ToggleButton, TweenInfo.new(0.08), {Size = UDim2.fromOffset(46, 46)}):Play()
        Library:Toggle()
    end)
    pcall(function() Library:MakeDraggable(ToggleButton, ToggleButton, true) end)
end
CreateZeroHUBToggleButton(124116752283304)

local LibraryWindow = Library:CreateWindow({
    Title = "Build A Boat For Treasure",
    Center = true,
    AutoShow = true,
    Resizable = false,
    Footer = "Build A Boat For Treasure",
    Icon = 110450246845485,
    IconSize = UDim2.fromOffset(40, 40),
    CornerRadius = 20,
    AutoLock = false,
    ShowCustomCursor = false,
    ShowMobileButtons = false,
    ToggleKeybind = Enum.KeyCode.LeftControl,
    Size = UDim2.fromOffset(500, 350),
    EnableSidebarResize = false,
    EnableCompacting = true,
    SidebarCompacted = true,
    NotifySide = "Right",
    TabPadding = 2,
    MenuFadeTime = 0
})

pcall(function()
    LibraryWindow:SetBackgroundImage("rbxassetid://94391249583867")
end)

-- Compatibility adapter: keeps the original Build systems intact while replacing only the UI layer.
local tabCounter = 0
local controlCounter = 0
local function nextId(prefix)
    controlCounter += 1
    return prefix .. tostring(controlCounter)
end

local function makeTab(name, icon)
    tabCounter += 1
    local tab = LibraryWindow:AddTab(name, icon or "swords")
    local group = tab:AddLeftGroupbox(name)

    local adapter = {}

    function adapter:CreateButton(data)
        local label = type(data) == "table" and (data.Name or "Button") or tostring(data)
        local callback = type(data) == "table" and data.Callback or nil
        group:AddButton(label, callback or function() end)
    end

    function adapter:CreateToggle(data)
        local label = data.Name or "Toggle"
        local default = data.CurrentValue
        if default == nil then default = data.Default end
        if default == nil then default = false end
        group:AddToggle(nextId("Toggle"), {
            Text = label,
            Default = default,
            Callback = data.Callback or function() end
        })
    end

    function adapter:CreateDropdown(data)
        local id = nextId("Dropdown")
        local options = data.Options or {}
        local current = data.CurrentOption
        if type(current) == "table" then current = current[1] end
        local obj = group:AddDropdown(id, {
            Text = data.Name or "Dropdown",
            Values = options,
            Default = current,
            Multi = false,
            Callback = function(value)
                if type(value) == "table" then
                    data.Callback(value)
                else
                    data.Callback({value})
                end
            end
        })
        return {
            Refresh = function(_, values)
                pcall(function() obj:SetValues(values) end)
                pcall(function() obj:SetValues(values or {}) end)
            end
        }
    end

    function adapter:CreateParagraph(data)
        local label = group:AddLabel((data.Title or "") .. "\n" .. (data.Content or ""))
        return {
            Set = function(_, value)
                value = value or {}
                local title = value.Title or data.Title or ""
                local content = value.Content or ""
                pcall(function() label:SetText(title .. "\n" .. content) end)
            end
        }
    end

    function adapter:CreateSection(text)
        group:AddLabel("-- " .. tostring(text) .. " --", true)
    end

    return adapter
end

local Rayfield = {}
function Rayfield:Notify(data)
    data = data or {}
    local title = data.Title or data.Name or "Notification"
    local content = data.Content or ""
    pcall(function()
        Library:Notify(title .. (content ~= "" and ("\n" .. content) or ""), data.Duration or 5)
    end)
end
local WindowAdapter = {}
function WindowAdapter:CreateTab(name, icon)
    return makeTab(name, icon)
end
Window = WindowAdapter

-- list for special blocks like glue that have multiple welds
local specialList = {"Glue"}
--paths
local blockData = player:WaitForChild("Data")
local blocksFolder = workspace:WaitForChild("Blocks")
-- variable to track paste percentage and show the player
local pastePercent = 0
-- variable to track how many used of each block there is ( doesnt scale with count unfortunately)
local usedList = {}
-- player input
local selectedBase = nil
local autofarm = false
local rescaleClick = false
local playerToBring = nil
local ignoreAnchored = true
local sitInMouseClickSeatToggle = false

-- auto build
local clipboard = nil
local function getBlockID(name)
    return blockData:FindFirstChild(name) and blockData:FindFirstChild(name).Value or 9 -- return 9 if block not found(WoodBlock)
end

local function setTransparency(transparencyWanted : number, block : Model) : ()
    if not block then return end
    if block.PPart.Transparency == transparencyWanted then return end
    local calls = transparencyWanted / 0.25
    local tool
    if character:FindFirstChild("PropertiesTool") then
        tool = character["PropertiesTool"]
    else
        humanoid:EquipTool(player.Backpack.PropertiesTool)
        task.wait()
        tool = character.PropertiesTool
    end

    local args = 
    {
        "Transparency",
        {
            block
        }
    }

    task.spawn(function()
        for i = 1,calls do
            tool.SetPropertieRF:InvokeServer(unpack(args))
        end
    end)
end

local function setAnchored(block : Model)
    if not block then return end
    local tool
    if character:FindFirstChild("PropertiesTool") then
        tool = character["PropertiesTool"]
    else
        humanoid:EquipTool(player.Backpack.PropertiesTool)
        task.wait()
        tool = character.PropertiesTool
    end

    local args = 
    {
        "Anchored",
        {
            block
        }
    }
    task.spawn(function()
        tool.SetPropertieRF:InvokeServer(unpack(args))
    end)
end

local function rescaleBlock(block:Model,newPos:CFrame,newSize:Vector3) : ()
    if not block then 
        print("Block Not Found, Function rescaleBlock")
        return 
    end
    local tool
    if character:FindFirstChild("ScalingTool") then
        tool = character["ScalingTool"]
    else
        humanoid:EquipTool(player.Backpack.ScalingTool)
        task.wait()
        tool = character.ScalingTool
    end

    local args = 
    {
        block,
        newSize,
        newPos
    }
    task.spawn(function()
        tool.RF:InvokeServer(unpack(args))
    end)
    
end

local function getPlayerZone(playerInstance : Player) : BasePart
    
    local teamColor = playerInstance.TeamColor
    for _,v in pairs(workspace:GetChildren()) do
        if v:FindFirstChild("TeamColor") and v.TeamColor.Value then
            if v.TeamColor.Value == teamColor then
                return v
            end
        end
    end
    print("Base Not Found for player: ".. playerInstance.Name)
    return nil
end

local function placeBlock(name : string,pos : CFrame,relativeTo : BasePart,Anchored : boolean) : ()
    local tool
    if character:FindFirstChild("BuildingTool") then
        tool = character["BuildingTool"]
    else
        humanoid:EquipTool(player.Backpack.BuildingTool)
        task.wait()
        tool = character.BuildingTool
    end
    if not relativeTo then relativeTo = getPlayerZone(player) end
    local args = 
    {
        name,
        getBlockID(name),
        relativeTo,
        relativeTo and relativeTo.CFrame:ToObjectSpace(pos) or CFrame.new(),
        ignoreAnchored and true or Anchored,
        pos,
        false, -- since im not doing 2 place blocks for now(springs etc)
    }
    task.spawn(function()
        tool.RF:InvokeServer(unpack(args))
    end)
end

local function paintBlock(block : Model, color : Color3)
    if not block then 
        print("Block Not Found, function paintBlock")
        return 
    end
    if not block:FindFirstChild("PPart") then 
        print("Not PPart found for: ".. block.Name)
        return
    end
    if block.PPart.Color == color then return end
    local tool
    if character:FindFirstChild("PaintingTool") then
        tool = character["PaintingTool"]
    else
        humanoid:EquipTool(player.Backpack.PaintingTool)
        task.wait()
        tool = character.PaintingTool
    end
    local args = {
        {
            block,
            color
        }
    }
    task.spawn(function()
        tool.RF:InvokeServer(args)
    end)
    
end

local function getJoint(model : Model) : JointInstance?
    for _,v in pairs(model.PPart:GetChildren()) do
        if v:IsA("Snap") or v:IsA("Weld") then
            if v.Part1 then 
                if not (v.Part1.Parent == model) then
                    return v.Part1
                end
            else
            end
        end
    end
    return getPlayerZone(player)
end

local function getNewBlockPos(hisBase : BasePart?, block : Model, myBase : BasePart?) : CFrame
    if not block or not block:FindFirstChild("PPart") then
        warn("Block missing PPart:", block and block.Name or "nil")
        return CFrame.new()
    end

    if not hisBase or not myBase then
        return block.PPart.CFrame
    end

    local offset = hisBase.CFrame:ToObjectSpace(block.PPart.CFrame)
    return myBase.CFrame * offset
end


local function copyBuild(blocks : Folder) : table
    local t = {}
    local myBase = getPlayerZone(player)
    local hisBase = getPlayerZone(players:FindFirstChild(blocks.Name))

    for _,block in ipairs(blocks:GetChildren()) do
        if block:FindFirstChild("PPart") then
            if not (getBlockID(block.Name) == 0 or (usedList[block.Name] or 0) > getBlockID(block.Name)) then 

                    --[[
                        print(
                    "Block index: " .. index ..
                    " | Name: " .. block.Name ..
                    " | Position: " .. tostring(block.PPart.CFrame) ..
                    " | Relative joint: " .. tostring(getJoint(block)) ..
                    " | Anchored: " .. tostring(block.PPart.Anchored) ..
                    " | Size: " .. tostring(block.PPart.Size) ..
                    " | Color: " .. tostring(block.PPart.Color)
                )]]
                local relative = getJoint(block)
                relative = relative == hisBase and myBase or relative
                if usedList[block.Name] then
                    usedList[block.Name] += 1
                else
                    usedList[block.Name] = 1
                end
                table.insert(t, {
                    Name = block.Name,
                    Pos = getNewBlockPos(hisBase, block, myBase),
                    Relative = getPlayerZone(player),
                    Transparency = block.PPart.Transparency,
                    Anchored = block.PPart.Anchored,
                    Size = block.PPart.Size,
                    Color = block.PPart.Color
                })
            else
                print("You Dont Have Enough: ".. block.Name .. "s")
            end
        else
            print(block.Name.. " Didnt Have A PPart")
        end
    end
    return t
end

local function getMissingBlocks(expectedList, createdList)
    local missing = {}

    for i, v in ipairs(expectedList) do
        local found = false
        for _, b in ipairs(createdList) do
            if b and b:FindFirstChild("PPart") and (b.Name == v.Name) then
                found = true
                break
            end
        end
        if not found then
            table.insert(missing, {Index = i, Name = v.Name, Pos = v.Pos})
        end
    end

    return missing
end

local function getBlock(expected, createdList)
    local best = nil
    local bestDist = math.huge

    for _, b in ipairs(createdList) do
        if b and b:FindFirstChild("PPart") and b.Name == expected.Name then
            local dist = (b.PPart.Position - expected.Pos.Position).Magnitude
            if dist < bestDist then
                bestDist = dist
                best = b
            end
        end
    end

    return best
end

local function getPlayerBase() : Folder
    for _,child in pairs(blocksFolder:GetChildren()) do
        if child.Name == player.Name then
            return child
        end
    end
end

local function pasteBuild(t, folder)
    pastePercent = 0
    local childrenDebug = 0
    local c
    local blocks = {}
    local tCount = #t
    local lastPlaced = tick()
    c = folder.ChildAdded:Connect(function(child)
        childrenDebug += 1
        lastPlaced = tick()
    end) 
    print("Started Placing Blocks")
    for i,v in ipairs(t) do
        placeBlock(v.Name,v.Pos,v.Relative,v.Anchored)
        pastePercent += 50/tCount
        if i % 20 == 0 then
            task.wait(0.05)
        end
    end
    repeat
        task.wait(0.1)
    until tick() - lastPlaced > 5
    print("Children Count After Placing: "..childrenDebug .. " Expected: ".. tCount)
    if  tCount - childrenDebug > 0 then
        local missing = getMissingBlocks(t,blocks)
        print("Missing" .. #missing .. "children which includes:")
            for _, b in ipairs(missing) do
                print("Index:", b.Index, "Name:", b.Name, "Position:", b.Pos.Position)
            end
    end
    print("Started Painting And Rescaling")
    local playerBaseList = folder:GetChildren()
    for i,v in ipairs(t) do
        local b = getBlock(v,playerBaseList)
        rescaleBlock(b,v.Pos,v.Size)
        paintBlock(b,v.Color)
        setTransparency(v.Transparency,b)
        if i % 20 == 0 then
            task.wait(0.05)
        end
        pastePercent += 50/tCount
    end
    c:Disconnect()
    pastePercent = 0
end

local function getPlayers()
    local playersy = {}

    for _,playery in pairs(game:GetService("Players"):GetChildren()) do
        table.insert(playersy,playery.DisplayName)
    end

    return playersy
end

local function bringPlayer(playerToBring : Player , firstSeat : Seat, secondSeat : Seat) : ()
    local originalPos = character:GetPivot()

    local otherPlayerCharacter = playerToBring.Character
    if not otherPlayerCharacter then
        print("Other Player No Character Found")
        return
    end
    local offset = firstSeat.CFrame:Inverse() * secondSeat.CFrame
    repeat
    local torso = otherPlayerCharacter:FindFirstChild("LowerTorso") or otherPlayerCharacter:FindFirstChild("Torso")
    if torso then
        local newPivot = torso.CFrame * offset:Inverse()
        firstSeat:PivotTo(newPivot + Vector3.new(math.random(-1,1),math.random(-1,1),math.random(-1,1)))
    end
        task.wait(0.5)
    until not otherPlayerCharacter.Parent or otherPlayerCharacter.Humanoid.SeatPart

    firstSeat:PivotTo(originalPos)
end

local function getCar() : Model
    return humanoid.SeatPart and humanoid.SeatPart.Parent or nil
end

local autoBuildTab = Window:CreateTab("Building","hammer")

autoBuildTab:CreateButton({
    Name = "Place Wood Block",
    Callback = function()
        placeBlock("WoodBlock",HRP.CFrame,nil,true)
    end,

})

autoBuildTab:CreateToggle({
    Name = "Rescale Block ( click block )",
    Callback = function(Value)
        rescaleClick = Value
        print("Set rescaleClick to: "..tostring(Value))
    end,
})

local mouse = player:GetMouse()

mouse.Button1Down:Connect(function()
    if rescaleClick then
        if mouse.Target then
            print(mouse.Target:GetFullName())
            local ppart = mouse.Target
            rescaleBlock(ppart.Parent,ppart.CFrame,Vector3.new(4,4,4))
        end
    end
end)

local function getRealName(DisplayNamey : string) : string
    for _,v in pairs(players:GetChildren()) do
        if v.DisplayName == DisplayNamey then return v.Name end
    end
    print("Player Not Found")
    return nil
end

local dd = autoBuildTab:CreateDropdown({
    Name = "Choose Player Base To Copy",
    Options = getPlayers(),
    CurrentOption = {"None Selected"},
    MultipleOptions = false,
    Callback = function(Options)
        local realName = getRealName(Options[1])
        for _,folder in pairs(blocksFolder:GetChildren()) do
            if folder.Name == realName then
                selectedBase = folder
            end
        end
    end,
})

players.PlayerAdded:Connect(function()
    dd:Refresh(getPlayers())
end)

autoBuildTab:CreateButton({
    Name = "Copy Base",
    Callback = function()
        if selectedBase then
            clipboard = copyBuild(selectedBase)
        else
            Rayfield:Notify({
                Title = "Please Select A Valid Player",
                Content = "Either No Player Selected or Player Left",
                Duration = 10,
                Image = "alert-triangle"
            })
        end
    end,
})

autoBuildTab:CreateButton({
    Name = "Paste Base",
    Callback = function()
        if clipboard then
            pasteBuild(clipboard, getPlayerBase())
        end
    end,
})

local pasteStatus = autoBuildTab:CreateParagraph({
    Title = "Auto Build Progress", 
    Content = "0%"

})

-- updater
task.spawn(function()
    while task.wait(0.5) do
        pcall(function()
            pasteStatus:Set({Title = "Auto Build Progress", Content = tostring(pastePercent) .. "%"})
        end)
    end
end)

autoBuildTab:CreateSection("auto build settings")
autoBuildTab:CreateToggle({
    Name = "Ignore Anchored State",
    CurrentValue = true,
    Callback = function(Value)
        ignoreAnchored = Value
    end,
})

local autoFarmTab = Window:CreateTab("Auto Farm","box")

autoFarmTab:CreateToggle({
    Name = "Auto Farm Toggle",
    CurrentValue = false,
    Callback = function(value)
        autofarm = value
    end,
})

local funTab = Window:CreateTab("Fun Tab","star")

local firstSeat = nil
local secondSeat = nil

funTab:CreateSection("Bring Player")

local dd2 = funTab:CreateDropdown({
    Name = "Choose Player To Lock Or Bring",
    Options = getPlayers(),
    CurrentOption = {"None Selected"},
    MultipleOptions = false,
    Callback = function(Options)
        local realName = getRealName(Options[1])
        playerToBring = players:FindFirstChild(realName)
    end,
})

players.PlayerAdded:Connect(function()
    dd2:Refresh(getPlayers())
end)

funTab:CreateButton({
    Name = "Sit In The First Seat and Click",
    Callback = function()
        firstSeat = humanoid.SeatPart
        print("firstSeat: "..firstSeat:GetFullName())
    end,
})

funTab:CreateButton({
    Name = "Sit In The Second Seat and Click",
    Callback = function()
        secondSeat = humanoid.SeatPart
        print("secondSeat: "..secondSeat:GetFullName())
    end,
})

funTab:CreateButton({
    Name = "Bring Player after selecting",
    Callback = function()
        if secondSeat and firstSeat then
            if secondSeat ~= firstSeat then
                if playerToBring then
                    bringPlayer(playerToBring,firstSeat,secondSeat)
                else
                Rayfield:Notify({
                    Name = "Please Select A Player and try again",
                    Content = "Select A Valid Player!",
                    Duration = 10,
                    Image = "alert-triangle"
                })
                end
            else
            Rayfield:Notify({
                Name = "Please Select Two DIFFERENT seats before trying again",
                Content = "Select 2 Different Seats connected to the same base and try again",
                Duration = 10,
                Image = "alert-triangle"
            })
            end
        else
            Rayfield:Notify({
                Name = "Please Select Both Seats Before Trying",
                Content = "Select 2 Different Seats connected to the same base and try again",
                Duration = 10,
                Image = "alert-triangle"
            })
        end
    end,
})


funTab:CreateButton({
    Name = "Car Fly",
    Callback = function()
        local Players = game:GetService("Players")
        local RunService = game:GetService("RunService")
        local UserInputService = game:GetService("UserInputService")

        local player = Players.LocalPlayer
        local humanoid = player.Character and player.Character:FindFirstChildWhichIsA("Humanoid")

        -- Flying variables
        local flying = false
        local flySpeed = 50
        local flyConnection
        local bv -- store BodyVelocity reference

        -- Create GUI
        local screenGui = Instance.new("ScreenGui")
        screenGui.Name = "CarFlyGUI"
        screenGui.Parent = player:WaitForChild("PlayerGui")
        screenGui.ResetOnSpawn = false

        local frame = Instance.new("Frame")
        frame.Size = UDim2.new(0, 220, 0, 120)
        frame.Position = UDim2.new(0.05, 0, 0.4, 0)
        frame.BackgroundColor3 = Color3.fromRGB(163, 255, 137)
        frame.Parent = screenGui

        -- Fly toggle button
        local toggleButton = Instance.new("TextButton")
        toggleButton.Size = UDim2.new(0, 100, 0, 30)
        toggleButton.Position = UDim2.new(0, 10, 0, 10)
        toggleButton.Text = "Toggle Fly"
        toggleButton.Parent = frame

        -- Speed label
        local speedLabel = Instance.new("TextLabel")
        speedLabel.Size = UDim2.new(0, 50, 0, 30)
        speedLabel.Position = UDim2.new(0, 120, 0, 10)
        speedLabel.Text = tostring(flySpeed)
        speedLabel.Parent = frame

        -- Plus and minus buttons
        local plusButton = Instance.new("TextButton")
        plusButton.Size = UDim2.new(0, 30, 0, 30)
        plusButton.Position = UDim2.new(0, 180, 0, 10)
        plusButton.Text = "+"
        plusButton.Parent = frame

        local minusButton = Instance.new("TextButton")
        minusButton.Size = UDim2.new(0, 30, 0, 30)
        minusButton.Position = UDim2.new(0, 180, 0, 50)
        minusButton.Text = "-"
        minusButton.Parent = frame

        -- Destroy button
        local destroyButton = Instance.new("TextButton")
        destroyButton.Size = UDim2.new(0, 100, 0, 30)
        destroyButton.Position = UDim2.new(0, 10, 0, 80)
        destroyButton.Text = "Destroy GUI"
        destroyButton.BackgroundColor3 = Color3.fromRGB(255, 80, 80)
        destroyButton.Parent = frame

        -- Movement controls
        local ctrl = {f=0, b=0, l=0, r=0}
        UserInputService.InputBegan:Connect(function(input, processed)
            if processed then return end
            if input.KeyCode == Enum.KeyCode.W then ctrl.f = 1 end
            if input.KeyCode == Enum.KeyCode.S then ctrl.b = -1 end
            if input.KeyCode == Enum.KeyCode.A then ctrl.l = -1 end
            if input.KeyCode == Enum.KeyCode.D then ctrl.r = 1 end
        end)

        UserInputService.InputEnded:Connect(function(input)
            if input.KeyCode == Enum.KeyCode.W then ctrl.f = 0 end
            if input.KeyCode == Enum.KeyCode.S then ctrl.b = 0 end
            if input.KeyCode == Enum.KeyCode.A then ctrl.l = 0 end
            if input.KeyCode == Enum.KeyCode.D then ctrl.r = 0 end
        end)

        -- Button functions
        toggleButton.MouseButton1Click:Connect(function()
            flying = not flying
            local car = getCar()
            if car then
                local primaryPart = car.PrimaryPart or car:FindFirstChildWhichIsA("BasePart")
                if primaryPart then
                    if flying then
                        -- create BodyVelocity once
                        if not bv or not bv.Parent then
                            bv = Instance.new("BodyVelocity")
                            bv.Name = "FlyBV"
                            bv.MaxForce = Vector3.new(9e9, 9e9, 9e9)
                            bv.Parent = primaryPart
                        end
                        -- start fly loop if not running
                        if not flyConnection then
                            flyConnection = RunService.RenderStepped:Connect(function()
                                if not flying then return end
                                local cam = workspace.CurrentCamera
                                local moveDir = (cam.CFrame.LookVector * (ctrl.f + ctrl.b)) +
                                                ((cam.CFrame * CFrame.new(ctrl.l + ctrl.r, 0, 0)).p - cam.CFrame.p)

                                if moveDir.Magnitude > 0 then
                                    bv.Velocity = moveDir.Unit * flySpeed
                                else
                                    bv.Velocity = Vector3.zero
                                end

                                -- sharp rotation to face camera lookVector
                                primaryPart.CFrame = CFrame.new(primaryPart.Position, primaryPart.Position + cam.CFrame.LookVector)
                            end)
                        end
                    else
                        -- stop flying
                        if bv then bv:Destroy() bv = nil end
                        if flyConnection then flyConnection:Disconnect() flyConnection = nil end
                    end
                end
            end
        end)

        plusButton.MouseButton1Click:Connect(function()
            flySpeed = flySpeed + 10
            speedLabel.Text = tostring(flySpeed)
        end)

        minusButton.MouseButton1Click:Connect(function()
            flySpeed = math.max(10, flySpeed - 10)
            speedLabel.Text = tostring(flySpeed)
        end)

        destroyButton.MouseButton1Click:Connect(function()
            flying = false
            if bv then bv:Destroy() bv = nil end
            if flyConnection then flyConnection:Disconnect() flyConnection = nil end
            screenGui:Destroy()
        end)
    end,
})


task.spawn(function()
    while task.wait(0.12) do
        if autofarm then
            if not HRP then continue end
            if index == 11 then
                local Stages = workspace:FindFirstChild("BoatStages")
                if not Stages then continue end
                local normalStages = Stages:FindFirstChild("NormalStages")
                if not normalStages then continue end
                local endpoint = normalStages:FindFirstChild("TheEnd")
                if not endpoint then continue end
                local chest = endpoint:FindFirstChild("GoldenChest")
                if not chest then continue end
                HRP:PivotTo(chest:GetPivot() + Vector3.new(0,0,-10))
                local ii = 0
                repeat 
                    task.wait(1) 
                    ii += 1
                    if ii % 20 == 0 then
                        HRP:PivotTo(chest:GetPivot() + Vector3.new(0,0,-10))
                    end
                    if not HRP then continue end
                until (HRP.Position - chest:GetPivot().Position).Magnitude > 500
                index = 1
            else
                local stages = workspace:FindFirstChild("BoatStages")
                if not stages then continue end
                local normalStages = stages:FindFirstChild("NormalStages")
                if not normalStages then continue end
                local roomName = "CaveStage"..index
                local stage = normalStages:FindFirstChild(roomName)
                if not stage then continue end
                local darkPart = stage:FindFirstChild("DarknessPart")
                if not darkPart then continue end
                character:PivotTo(darkPart.CFrame - Vector3.new(0,0,15))
                local tween2 = TS:Create(HRP,TweenInfo.new(2,Enum.EasingStyle.Linear),{CFrame = darkPart.CFrame + Vector3.new(0,0,20)})
                tweening = true
                tween2:Play()
                tween2.Completed:Wait()
                tweening = false
                index += 1
            end
        end
    end
end)

runService.Heartbeat:Connect(function()
    if tweening and HRP and HRP.Parent then
        HRP.AssemblyLinearVelocity = Vector3.zero
    end
end)

player.CharacterAdded:Connect(function(charactery)
    character = charactery
    HRP = character:WaitForChild("HumanoidRootPart")
    humanoid = character:WaitForChild("Humanoid")
end)

-- anti afk

task.spawn(function()
    while task.wait(100) do
            vim:SendKeyEvent(true, Enum.KeyCode.Tilde, false, nil)
            task.wait(0.1)
            vim:SendKeyEvent(false, Enum.KeyCode.Tilde, false, nil)
    end
end)

pcall(function()
    if Library and Library.ToggleKeybind then end
end)
