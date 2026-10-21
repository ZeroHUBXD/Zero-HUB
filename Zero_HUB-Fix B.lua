-- แก้
local MlbwbqwUwD = {
    ["wMIUloU"] = pcall,
    ["pqnlmZWUXx"] = print,
    ["NnDQubnoH0xz"] = pairs,
    ["DDHXmwpp"] = type,
    ["lII_pN_ubvn"] = select,
    ["b0lqW"] = typeof,
    ["oHxXvuu"] = ipairs,
    ["lZMNpHlwo"] = rawequal,
    ["HQ00zIOmxm0M"] = tonumber,
    ["WWDxINHqq0"] = tostring,
    ["DxIWvWHHO"] = next,
    ["wvnHuuzMl1Xb"] = unpack,
    ["WmN_0H0OZ1DUW"] = warn,
    ["IMzHlI0NIm"] = math["clamp"],
    ["qzWnm0u"] = math["min"],
    ["wI_DW_UXnq"] = math["ceil"],
    ["lWxnQW_Z"] = table["unpack"],
    ["DxIoqm"] = math["floor"],
    ["W01b0Ilb0bXoQ"] = math["max"],
    ["BzpMWwM_NWzzH"] = table["insert"],
    ["pxQv0z"] = table["remove"],
    ["vHulMD_1n_w"] = math["abs"],
    ["IWouQQQ"] = string["format"],
    ["qzlquwOlDwp"] = math["random"],
    ["BQmH_lnW_p"] = string["find"],
}
local MU_m1UmlXXDZ = {}
local NuD1bHO_vv = game["GetService"](game, "StarterGui")
-- ใช้ระบบแจ้งเตือนของ ZeroHUB หลังโหลด Library เสร็จ
-- PMHUB launcher UI removed.
-- The main script now starts automatically when this file is executed.
function RunMainScript()
    local env = getgenv()
    if env.__ZERO_HUB_RUNNING then
        warn("[Zero_HUB] สคริปต์กำลังทำงานอยู่แล้ว — ยกเลิกการเปิดซ้ำ")
        return
    end
    env.__ZERO_HUB_RUNNING = true
    local ok, err = pcall(function()
        local pUMIq_ = "https://raw.githubusercontent.com/deividcomsono/Obsidian/main/"
        local QolwvD0XnWnzM = loadstring(game["HttpGet"](game, pUMIq_ .. "Library.lua"))()
        local QOZpNNvbmDH = loadstring(game["HttpGet"](game, pUMIq_ .. "addons/ThemeManager.lua"))()
        local ppIHNN = loadstring(game["HttpGet"](game, pUMIq_ .. "addons/SaveManager.lua"))()
        QolwvD0XnWnzM:Notify("ขอบคุณที่ใช้สคริปต์ของเรา", 4)
        QolwvD0XnWnzM["MakeBoxPopOut"] = function(QHlZWIQqqW, qmb_D)
            if QHlZWIQqqW then
                QHlZWIQqqW["PoppedOut"] = false
                QHlZWIQqqW["PopOutEnabled"] = false
                QHlZWIQqqW["PopOutFloat"] = nil
                QHlZWIQqqW["PopOutPlaceholder"] = nil
                pcall(function()
                    QHlZWIQqqW["SetPoppedOut"] = function() end
                    QHlZWIQqqW["TogglePoppedOut"] = function() end
                    QHlZWIQqqW["RefreshPopOutPlaceholder"] = function() end
                end)
            end
        end
        QolwvD0XnWnzM["Scheme"]["AccentColor"] = Color3["fromRGB"](255, 255, 255)
        QolwvD0XnWnzM["Scheme"]["BackgroundColor"] = Color3["fromRGB"](0, 0, 0)
        QolwvD0XnWnzM["Scheme"]["MainColor"] = Color3["fromRGB"](0, 0, 0)
        QolwvD0XnWnzM["Scheme"]["OutlineColor"] = Color3["fromRGB"](255, 255, 255)
        QolwvD0XnWnzM["Scheme"]["FontColor"] = Color3["fromRGB"](255, 255, 255)
        local function CreateToggleButton(l0lopOpm1u_NH1)
            local bvqxxuwW0O = Instance["new"]("ScreenGui")
            bvqxxuwW0O["Name"] = "FallensToggle"
            bvqxxuwW0O["ResetOnSpawn"] = false
            bvqxxuwW0O["ZIndexBehavior"] = Enum["ZIndexBehavior"]["Sibling"]
            bvqxxuwW0O["Parent"] = game["GetService"](game, "CoreGui")
            local _zwbuHM_wxN = Instance["new"]("TextButton")
            _zwbuHM_wxN["Name"] = "ToggleButton"
            _zwbuHM_wxN["Text"] = ""
            _zwbuHM_wxN["AutoButtonColor"] = false
            _zwbuHM_wxN["Size"] = UDim2["fromOffset"](46, 46)
            _zwbuHM_wxN["Position"] = UDim2["fromOffset"](15, 120)
            _zwbuHM_wxN["BackgroundColor3"] = Color3["fromRGB"](18, 12, 14)
            _zwbuHM_wxN["BackgroundTransparency"] = 0.05
            _zwbuHM_wxN["ClipsDescendants"] = true
            _zwbuHM_wxN["Parent"] = bvqxxuwW0O
            local IzDbuzx = Instance["new"]("UICorner")
            IzDbuzx["CornerRadius"] = UDim["new"](0, 10)
            IzDbuzx["Parent"] = _zwbuHM_wxN
            local IQpMDnbMM = Instance["new"]("UIStroke")
            IQpMDnbMM["Color"] = Color3["fromRGB"](255, 255, 255)
            IQpMDnbMM["Thickness"] = 1.2
            IQpMDnbMM["ApplyStrokeMode"] = Enum["ApplyStrokeMode"]["Border"]
            IQpMDnbMM["Parent"] = _zwbuHM_wxN
            local uZOwp0 = Instance["new"]("UIStroke")
            uZOwp0["Color"] = Color3["fromRGB"](255, 255, 255)
            uZOwp0["Thickness"] = 4
            uZOwp0["Transparency"] = 0.6
            uZOwp0["Parent"] = _zwbuHM_wxN
            local uXvIDov = Instance["new"]("Frame")
            uXvIDov["Size"] = UDim2["fromScale"](0.75, 0.75)
            uXvIDov["Position"] = UDim2["fromScale"](0.125, 0.125)
            uXvIDov["BackgroundTransparency"] = 1
            uXvIDov["ClipsDescendants"] = true
            uXvIDov["Parent"] = _zwbuHM_wxN
            local wUIpmpmQDx = QolwvD0XnWnzM["GetCustomIcon"](QolwvD0XnWnzM, l0lopOpm1u_NH1)
            if wUIpmpmQDx then
                local IbpZm0qOU_ = Instance["new"]("ImageLabel")
                IbpZm0qOU_["BackgroundTransparency"] = 1
                IbpZm0qOU_["Image"] = wUIpmpmQDx["Url"]
                IbpZm0qOU_["ImageRectOffset"] = wUIpmpmQDx["ImageRectOffset"]
                IbpZm0qOU_["ImageRectSize"] = wUIpmpmQDx["ImageRectSize"]
                IbpZm0qOU_["Size"] = UDim2["fromScale"](1, 1)
                IbpZm0qOU_["Position"] = UDim2["fromScale"](0, 0)
                IbpZm0qOU_["ScaleType"] = Enum["ScaleType"]["Fit"]
                IbpZm0qOU_["Parent"] = uXvIDov
            end
            _zwbuHM_wxN["MouseEnter"]:Connect(function()
                game:GetService("TweenService"):Create(_zwbuHM_wxN, TweenInfo["new"](0.15), { ["BackgroundColor3"] = Color3["fromRGB"](35, 15, 20) }):Play()
            end)
            _zwbuHM_wxN["MouseLeave"]:Connect(function()
                game:GetService("TweenService"):Create(_zwbuHM_wxN, TweenInfo["new"](0.15), { ["BackgroundColor3"] = Color3["fromRGB"](18, 12, 14) }):Play()
            end)
            _zwbuHM_wxN["MouseButton1Click"]:Connect(function()
                game:GetService("TweenService"):Create(_zwbuHM_wxN, TweenInfo["new"](0.08), { ["Size"] = UDim2["fromOffset"](40, 40) }):Play()
                task["wait"](0.08)
                game:GetService("TweenService"):Create(_zwbuHM_wxN, TweenInfo["new"](0.08), { ["Size"] = UDim2["fromOffset"](46, 46) }):Play()
                QolwvD0XnWnzM:Toggle()
            end)
            QolwvD0XnWnzM:MakeDraggable(_zwbuHM_wxN, _zwbuHM_wxN, true)
            return _zwbuHM_wxN, bvqxxuwW0O
        end
        CreateToggleButton(101603563351741)
        local BqN_WWxw0 = QolwvD0XnWnzM["CreateWindow"](QolwvD0XnWnzM, {
            ["Title"] = "",
            ["Footer"] = "เขต Violence District",
            ["Icon"] = 119174844327238,
            ["IconSize"] = UDim2["fromOffset"](40, 40),
            ["CornerRadius"] = 20,
            ["NotifySide"] = "Right",
            ["ShowCustomCursor"] = false,
            -- ใช้ปุ่มเปิดเมนูของ Zero HUB เอง จึงปิด Toggle/Lock ของไลบรารีไม่ให้ซ้อนบนมือถือ
            ["ShowMobileButtons"] = false,
            ["ToggleKeybind"] = Enum["KeyCode"]["LeftControl"],
            -- สัดส่วนแบบภาพตัวอย่าง: กว้างพอดีจอแนวนอนและสูงไม่บังเกมมากเกินไป
            ["Size"] = UDim2["fromOffset"](
                math.clamp(
                    ((workspace.CurrentCamera and workspace.CurrentCamera.ViewportSize.X or 800) < (workspace.CurrentCamera and workspace.CurrentCamera.ViewportSize.Y or 600))
                        and ((workspace.CurrentCamera and workspace.CurrentCamera.ViewportSize.X or 800) * 0.92)
                        or ((workspace.CurrentCamera and workspace.CurrentCamera.ViewportSize.X or 800) * 0.62),
                    420,
                    1000
                ),
                math.clamp((workspace.CurrentCamera and workspace.CurrentCamera.ViewportSize.Y or 600) * 0.80, 320, 580)
            ),
            ["EnableSidebarResize"] = false,
            -- โทรศัพท์ให้ย่อ Sidebar แม้หมุนเป็นแนวนอน; PC แสดงชื่อเต็ม
            ["EnableCompacting"] = true,
            ["SidebarCompacted"] = game:GetService("UserInputService").TouchEnabled and not game:GetService("UserInputService").KeyboardEnabled,
        })
        pcall(function()
            BqN_WWxw0:SetBackgroundImage("rbxassetid://94391249583867")
        end)
        local OnOquOxzu = {
            ["info"] = BqN_WWxw0["AddTab"](BqN_WWxw0, "info", "info"),
            ["Visual"] = BqN_WWxw0["AddTab"](BqN_WWxw0, "ภาพ", "eye"),
            ["Combat"] = BqN_WWxw0["AddTab"](BqN_WWxw0, "ต่อสู้", "user"),
            ["Main"] = BqN_WWxw0["AddTab"](BqN_WWxw0, "หลัก", "swords"),
            ["Killer"] = BqN_WWxw0["AddTab"](BqN_WWxw0, "ฆาตกร", "skull"),
            ["Follow"] = BqN_WWxw0["AddTab"](BqN_WWxw0, "ติดตามผู้เล่น", "users"),
            ["Music"] = BqN_WWxw0["AddTab"](BqN_WWxw0, "เพลง", "music"),
            ["UISettings"] = BqN_WWxw0["AddTab"](BqN_WWxw0, "ตั้งค่า UI", "settings-2"),
        }
        local vXmuDWUpu = OnOquOxzu["Main"]:AddLeftGroupbox("เล็งเงียบ (ชะตาพลิกผัน)", "crosshair")
        local QnuUXmzQ = OnOquOxzu["Main"]:AddLeftGroupbox("เล็งอัตโนมัติ", "crosshair")
        local Qo0HDbZmXD_wp = OnOquOxzu["Main"]:AddLeftGroupbox("ล็อกเป้าด้วยไฟฉาย", "bolt")
        local MObUmONzqwx1 = OnOquOxzu["Main"]:AddLeftGroupbox("เป้าเล็ง", "crosshair")
        local HqnzDX1 = OnOquOxzu["Combat"]:AddLeftGroupbox("ข้ามสิ่งกีดขวางเร็ว", "bolt")
        local Mm1I0Dw_1xZZm = OnOquOxzu["Combat"]:AddLeftGroupbox("ระบบสิทธิพิเศษปลอม", "zap")
        local u0pwbvmwo = OnOquOxzu["Main"]:AddRightGroupbox("ฟังก์ชันสำคัญ", "shield")
        local OwQuNnzv = OnOquOxzu["Combat"]:AddRightGroupbox("ฟังก์ชันช่วยเหลือ", "star")
        local QQbUUQHnOWN1bD = OnOquOxzu["Combat"]:AddRightGroupbox("ระบบล่องหน", "user")
        local _W0nln = OnOquOxzu["UISettings"]:AddLeftGroupbox("เมนู", "wrench")
        -- Custom UI Background (Settings tab)
        local BackgroundBox = OnOquOxzu["UISettings"]:AddLeftGroupbox("พื้นหลัง UI", "image")
        local BackgroundLocalPath = ""
        local BackgroundUrl = ""
        local BackgroundOriginal = "rbxassetid://94391249583867"
        local BackgroundFileMap = {}
        local BackgroundFolderCandidates = {
            "Fallens/themes",
            "Workspace/Fallens/themes",
            "/storage/emulated/0/Delta/Workspace/Fallens/themes",
            "/storage/emulated/0/Delta/Workspace/Fallens",
        }
        local function BackgroundScanFiles()
            local choices = { "-- เลือกรูป --" }
            BackgroundFileMap = {}
            if type(listfiles) ~= "function" then
                return choices
            end
            for _, folder in ipairs(BackgroundFolderCandidates) do
                local ok, files = pcall(function()
                    return listfiles(folder)
                end)
                if ok and type(files) == "table" then
                    for _, path in ipairs(files) do
                        local lower = string.lower(tostring(path))
                        if lower:match("%.png$") or lower:match("%.jpg$") or lower:match("%.jpeg$") or lower:match("%.webp$") then
                            local name = tostring(path):match("([^/\\\\]+)$") or tostring(path)
                            if not BackgroundFileMap[name] then
                                BackgroundFileMap[name] = tostring(path)
                                table.insert(choices, name)
                            end
                        end
                    end
                end
            end
            return choices
        end
        local BackgroundImageDropdown
        local function BackgroundRefreshDropdown()
            local choices = BackgroundScanFiles()
            if BackgroundImageDropdown and type(BackgroundImageDropdown.SetValues) == "function" then
                pcall(function()
                    BackgroundImageDropdown:SetValues(choices)
                end)
            end
        end
        BackgroundImageDropdown = BackgroundBox:AddDropdown("ZeroHubBackgroundImageSelect", {
            Values = BackgroundScanFiles(),
            Default = 1,
            Multi = false,
            Text = "เลือกรูปจากโฟลเดอร์ themes",
            Callback = function(value)
                if value and BackgroundFileMap[value] then
                    BackgroundLocalPath = BackgroundFileMap[value]
                end
            end,
        })
        BackgroundBox:AddButton("รีเฟรชรายการรูป", function()
            BackgroundRefreshDropdown()
            pcall(function()
                game:GetService("StarterGui"):SetCore("SendNotification", {
                    Title = "Zero HUB • Background",
                    Text = "อัปเดตรายการไฟล์แล้ว หากไม่มีรูป ให้ตรวจโฟลเดอร์ themes",
                    Duration = 3,
                })
            end)
        end)
        BackgroundBox:AddButton("ใช้รูปที่เลือก", function()
            if BackgroundLocalPath == "" then
                pcall(function()
                    game:GetService("StarterGui"):SetCore("SendNotification", {
                        Title = "Zero HUB • Background",
                        Text = "กรุณาเลือกรูปจากรายการก่อน",
                        Duration = 3,
                    })
                end)
                return
            end
            task.spawn(function()
                local ok, asset = pcall(function()
                    if type(getcustomasset) == "function" then
                        return getcustomasset(BackgroundLocalPath)
                    elseif type(getsynasset) == "function" then
                        return getsynasset(BackgroundLocalPath)
                    end
                    error("ตัวรันไม่มี getcustomasset/getsynasset")
                end)
                local applied = false
                if ok and asset then
                    applied = pcall(function()
                        BqN_WWxw0:SetBackgroundImage(asset)
                    end)
                end
                pcall(function()
                    game:GetService("StarterGui"):SetCore("SendNotification", {
                        Title = "Zero HUB • Background",
                        Text = applied and "เปลี่ยนพื้นหลังแล้ว"
                            or "โหลดรูปไม่สำเร็จ ตรวจตำแหน่งไฟล์และ API ของ Delta",
                        Duration = 4,
                    })
                end)
            end)
        end)
        BackgroundBox:AddInput("ZeroHubBackgroundUrl", {
            Text = "ลิงก์รูป (สำรอง)",
            Default = "",
            Placeholder = "https://.../image.png",
            Numeric = false,
            Finished = true,
            Callback = function(value)
                BackgroundUrl = tostring(value or "")
            end,
        })
        BackgroundBox:AddButton("ใช้รูปจากลิงก์", function()
            if BackgroundUrl == "" then
                return
            end
            local ok = pcall(function()
                BqN_WWxw0:SetBackgroundImage(BackgroundUrl)
            end)
            if not ok then
                pcall(function()
                    game:GetService("StarterGui")
                        :SetCore("SendNotification", { Title = "Zero HUB • Background", Text = "ใช้ลิงก์นี้ไม่ได้", Duration = 3 })
                end)
            end
        end)
        BackgroundBox:AddButton("คืนพื้นหลังเดิม", function()
            pcall(function()
                BqN_WWxw0:SetBackgroundImage(BackgroundOriginal)
            end)
        end)
        local FakeNameBox = OnOquOxzu["UISettings"]:AddLeftGroupbox("ชื่อปลอม (HUD)", "user-round")
        local FakeNameValue = ""
        local FakeNameEnabled = false
        local FakeNameOriginals = setmetatable({}, { __mode = "k" })
        local FakeNameRunId = 0
        local function FakeNameIsTargetLabel(obj)
            if not obj or not obj:IsA("TextLabel") then
                return false
            end
            local text = tostring(obj.Text or "")
            local player = game:GetService("Players").LocalPlayer
            if not player then
                return false
            end
            return text == player.Name or text == player.DisplayName or text == string.lower(player.Name) or text == string.lower(player.DisplayName)
        end
        local function FakeNameApplyToVisibleHud()
            if not FakeNameEnabled or FakeNameValue == "" then
                return
            end
            local player = game:GetService("Players").LocalPlayer
            if not player then
                return
            end
            local roots = {}
            pcall(function()
                table.insert(roots, player:FindFirstChildOfClass("PlayerGui"))
            end)
            pcall(function()
                table.insert(roots, game:GetService("CoreGui"))
            end)
            for _, root in ipairs(roots) do
                if root then
                    pcall(function()
                        for _, obj in ipairs(root:GetDescendants()) do
                            if obj:IsA("TextLabel") then
                                local current = tostring(obj.Text or "")
                                if FakeNameIsTargetLabel(obj) then
                                    if FakeNameOriginals[obj] == nil then
                                        FakeNameOriginals[obj] = current
                                    end
                                    obj.Text = FakeNameValue
                                elseif FakeNameOriginals[obj] ~= nil and current == FakeNameValue then
                                    -- Keep already-updated labels stable without touching unrelated text.
                                    obj.Text = FakeNameValue
                                end
                            end
                        end
                    end)
                end
            end
        end
        local function FakeNameRestoreHud()
            FakeNameEnabled = false
            FakeNameRunId += 1
            for obj, original in pairs(FakeNameOriginals) do
                pcall(function()
                    if obj and obj.Parent and obj:IsA("TextLabel") and obj.Text == FakeNameValue then
                        obj.Text = original
                    end
                end)
                FakeNameOriginals[obj] = nil
            end
        end
        FakeNameBox:AddInput("ZeroHubFakeNameInput", {
            Text = "ชื่อปลอม",
            Default = "",
            Placeholder = "ใส่ชื่อที่ต้องการ",
            Numeric = false,
            Finished = true,
            Callback = function(value)
                FakeNameValue = tostring(value or "")
            end,
        })
        FakeNameBox:AddButton("Apply ชื่อปลอม", function()
            if FakeNameValue == "" then
                pcall(function()
                    game:GetService("StarterGui")
                        :SetCore("SendNotification", { Title = "Zero HUB • Fake Name", Text = "กรุณาใส่ชื่อก่อน", Duration = 3 })
                end)
                return
            end
            FakeNameEnabled = true
            FakeNameRunId += 1
            local thisRun = FakeNameRunId
            task.spawn(function()
                while FakeNameEnabled and FakeNameRunId == thisRun do
                    FakeNameApplyToVisibleHud()
                    task.wait(0.5)
                end
            end)
        end)
        FakeNameBox:AddButton("Reset ชื่อเดิม", function()
            FakeNameRestoreHud()
        end)
        local vNvNwM_1w = OnOquOxzu["Combat"]:AddRightGroupbox("เดินถอยหลัง", "user")
        local OqonUMnOp = OnOquOxzu["Combat"]:AddRightGroupbox("ย่อตัวอัตโนมัติ (Abyss)", "user")
        local qmoNOXxnbpqI = OnOquOxzu["Killer"]:AddLeftGroupbox("หอกเงียบ (Veil)", "ghost")
        local BonmDqZ = OnOquOxzu["Killer"]:AddRightGroupbox("ความสามารถฆาตกร", "skull")
        local Qu_DllDmwuuI = OnOquOxzu["Visual"]:AddLeftGroupbox("แสดงข้อมูลสิ่งมีชีวิต", "eye")
        local lZ0owHZMOqIImb = OnOquOxzu["Visual"]:AddLeftGroupbox("ตั้งค่าการแสดงข้อมูลผู้เล่น", "eye")
        local boqNXvwmX = OnOquOxzu["Visual"]:AddRightGroupbox("แสดงข้อมูลวัตถุ", "map")
        local qpbZM = OnOquOxzu["Combat"]:AddRightGroupbox("ล็อกมุมมอง", "eye")
        local FollowBox = OnOquOxzu["Follow"]:AddLeftGroupbox("ติดตาม / วาร์ป", "users")
        local ZeroFlyBox = OnOquOxzu["Follow"]:AddRightGroupbox("ระบบบิน", "plane")
        local MusicBox = OnOquOxzu["Music"]:AddLeftGroupbox("เครื่องเล่นเพลง", "music")
        local MusicSound = Instance.new("Sound")
        MusicSound.Name = "ZeroHubMusic"
        MusicSound.Volume = 0.5
        MusicSound.Looped = false
        MusicSound.PlayOnRemove = false
        MusicSound.Parent = game:GetService("SoundService")
        local MusicId = ""
        local ContentProvider = game:GetService("ContentProvider")
        MusicBox:AddInput("MusicAudioId", {
            Text = "รหัสเสียง Roblox",
            Default = "",
            Placeholder = "ใส่รหัสเสียง",
            Numeric = true,
            Finished = false,
            Callback = function(v)
                local id = tostring(v or ""):match("%d+")
                if id then
                    MusicId = id
                    MusicSound:Stop()
                    MusicSound.TimePosition = 0
                    MusicSound.SoundId = "rbxassetid://" .. id
                end
            end,
        })
        MusicBox:AddButton("▶ เล่น", function()
            if MusicId == "" or MusicSound.SoundId == "" then
                pcall(function()
                    game:GetService("StarterGui")
                        :SetCore("SendNotification", { Title = "เพลง", Text = "กรุณาใส่รหัสเสียงก่อน", Duration = 3 })
                end)
                return
            end
            MusicSound:Stop()
            MusicSound.TimePosition = 0
            local ok = pcall(function()
                ContentProvider:PreloadAsync({ MusicSound })
            end)
            if not ok then
                pcall(function()
                    game:GetService("StarterGui"):SetCore("SendNotification", {
                        Title = "เพลง",
                        Text = "โหลดเพลงไม่สำเร็จ — รหัสอาจใช้ไม่ได้หรือเพลงไม่อนุญาตให้ใช้",
                        Duration = 5,
                    })
                end)
                return
            end
            task.wait(0.15)
            MusicSound:Play()
        end)
        MusicBox:AddButton("⏸ หยุดชั่วคราว", function()
            if MusicSound.IsPlaying then
                MusicSound:Pause()
            end
        end)
        MusicBox:AddButton("⏹ หยุด", function()
            MusicSound:Stop()
            MusicSound.TimePosition = 0
        end)
        MusicBox:AddToggle("MusicLoop", {
            Text = "วนซ้ำ",
            Default = false,
            Callback = function(v)
                MusicSound.Looped = v
            end,
        })
        MusicBox:AddSlider("MusicVolume", {
            Text = "ระดับเสียง",
            Default = 0.5,
            Min = 0,
            Max = 1,
            Rounding = 2,
            Compact = false,
            Callback = function(v)
                MusicSound.Volume = tonumber(v) or 0.5
            end,
        })
        local WIDWH = game["GetService"](game, "Players")
        local WwNbnqHIQwppl = game["GetService"](game, "RunService")
        local M_QbbvZ0IU = game["GetService"](game, "UserInputService")
        local oZzw1oZIXX_ = game["GetService"](game, "ReplicatedStorage")
        local wxl1Uo1UbDnnb = game["GetService"](game, "Workspace")
        local QlMQp = game["GetService"](game, "VirtualInputManager")
        local pumZMHmIxqDun = game["GetService"](game, "GuiService")
        local pmDxuq1Qvl = game["GetService"](game, "CollectionService")
        local Q_qlzpNO1 = WIDWH["LocalPlayer"]
        local oZubzuHwUUDMv = wxl1Uo1UbDnnb["CurrentCamera"]
        -- =====================================================
        -- ZERO HUB: Role Notification
        -- แจ้งเตือนเมื่อผู้เล่นได้เป็น Killer หรือ Survivors
        -- =====================================================
        local ZeroRoleLast = nil
        local function ZeroRoleNotify(role)
            if role == "Killer" then
                QolwvD0XnWnzM:Notify("คุณได้เป็นฆาตกร", 4)
            elseif role == "Survivors" then
                QolwvD0XnWnzM:Notify("คุณได้เป็นผู้รอดชีวิต", 4)
            end
        end
        local function ZeroCheckRole()
            local team = Q_qlzpNO1.Team
            local role = team and team.Name or nil
            if role ~= ZeroRoleLast then
                ZeroRoleLast = role
                ZeroRoleNotify(role)
            end
        end
        Q_qlzpNO1:GetPropertyChangedSignal("Team"):Connect(ZeroCheckRole)
        task.spawn(function()
            task.wait(1)
            ZeroCheckRole()
            while task.wait(1) do
                ZeroCheckRole()
            end
        end)
        -- =====================================================
        -- KILLER COMBAT PACK
        -- Auto Attack + Beat Killer (auto kill) + Hitbox Expand
        -- Ported from Violence-District.lua
        -- =====================================================
        local ZeroCombat = { AutoAttack = false, AutoAttackRange = 12, HitboxExpand = false, HitboxSize = 15, BeatKiller = false, Target = nil }
        local ZeroOriginalHitboxes = {}
        local ZeroLastBasicAttack = 0
        local function ZeroGetTeamName(player)
            return player and player.Team and player.Team.Name or nil
        end
        local function ZeroIsKiller()
            return ZeroGetTeamName(Q_qlzpNO1) == "Killer"
        end
        local function ZeroIsSurvivor(player)
            return player and player ~= Q_qlzpNO1 and ZeroGetTeamName(player) == "Survivors"
        end
        local function ZeroGetRoot(player)
            local c = player and player.Character
            return c and c:FindFirstChild("HumanoidRootPart")
        end
        local function ZeroGetHumanoid(player)
            local c = player and player.Character
            return c and c:FindFirstChildOfClass("Humanoid")
        end
        local function ZeroAttack()
            local now = os.clock()
            if now - ZeroLastBasicAttack < 0.12 then
                return
            end
            ZeroLastBasicAttack = now
            pcall(function()
                local remotes = oZzw1oZIXX_:FindFirstChild("Remotes")
                local attacks = remotes and remotes:FindFirstChild("Attacks")
                local basicAttack = attacks and attacks:FindFirstChild("BasicAttack")
                if basicAttack then
                    basicAttack:FireServer(false)
                end
            end)
        end
        local function ZeroAutoAttackTick()
            if not ZeroCombat.AutoAttack or not ZeroIsKiller() then
                return
            end
            local myRoot = ZeroGetRoot(Q_qlzpNO1)
            if not myRoot then
                return
            end
            for _, player in ipairs(WIDWH:GetPlayers()) do
                if ZeroIsSurvivor(player) then
                    local tr = ZeroGetRoot(player)
                    local hum = ZeroGetHumanoid(player)
                    if tr and hum and hum.MaxHealth > 0 and hum.Health > 0 then
                        local pct = hum.Health / hum.MaxHealth
                        if pct > 0.25 and (tr.Position - myRoot.Position).Magnitude <= ZeroCombat.AutoAttackRange then
                            ZeroAttack()
                            break
                        end
                    end
                end
            end
        end
        local function ZeroBeatKillerTick()
            if not ZeroCombat.BeatKiller or not ZeroIsKiller() then
                ZeroCombat.Target = nil
                return
            end
            local myRoot = ZeroGetRoot(Q_qlzpNO1)
            if not myRoot then
                return
            end
            local target = ZeroCombat.Target
            local th = target and ZeroGetHumanoid(target)
            if not target or not ZeroIsSurvivor(target) or not th or th.MaxHealth <= 0 or (th.Health / th.MaxHealth) <= 0.25 then
                target = nil
                local closest, closestDistance = nil, math.huge
                for _, player in ipairs(WIDWH:GetPlayers()) do
                    if ZeroIsSurvivor(player) then
                        local tr = ZeroGetRoot(player)
                        local hum = ZeroGetHumanoid(player)
                        if tr and hum and hum.MaxHealth > 0 and (hum.Health / hum.MaxHealth) > 0.25 then
                            local distance = (tr.Position - myRoot.Position).Magnitude
                            if distance < closestDistance then
                                closestDistance = distance
                                closest = player
                            end
                        end
                    end
                end
                target = closest
                ZeroCombat.Target = target
            end
            if not target then
                return
            end
            local tr = ZeroGetRoot(target)
            th = ZeroGetHumanoid(target)
            if not tr or not th or th.MaxHealth <= 0 or (th.Health / th.MaxHealth) <= 0.25 then
                ZeroCombat.Target = nil
                return
            end
            local char = Q_qlzpNO1.Character
            if char then
                for _, part in ipairs(char:GetDescendants()) do
                    if part:IsA("BasePart") then
                        pcall(function()
                            part.CanCollide = false
                        end)
                    end
                end
            end
            local offset = myRoot.Position - tr.Position
            local dir = offset.Magnitude > 0.001 and offset.Unit or Vector3.new(1, 0, 0)
            pcall(function()
                myRoot.CFrame = CFrame.new(tr.Position + dir * 3 + Vector3.new(0, 1, 0), tr.Position)
            end)
            ZeroAttack()
        end
        local function ZeroRestoreHitboxes()
            for player, original in pairs(ZeroOriginalHitboxes) do
                if player and player.Character then
                    local root = player.Character:FindFirstChild("HumanoidRootPart")
                    if root then
                        pcall(function()
                            root.Size = original.Size
                            root.Transparency = original.Transparency
                            root.CanCollide = original.CanCollide
                        end)
                    end
                end
            end
            table.clear(ZeroOriginalHitboxes)
        end
        local function ZeroHitboxTick()
            if not ZeroCombat.HitboxExpand or not ZeroIsKiller() then
                ZeroRestoreHitboxes()
                return
            end
            for _, player in ipairs(WIDWH:GetPlayers()) do
                if ZeroIsSurvivor(player) then
                    local root = ZeroGetRoot(player)
                    local hum = ZeroGetHumanoid(player)
                    if root and hum and hum.Health > 0 then
                        if not ZeroOriginalHitboxes[player] then
                            ZeroOriginalHitboxes[player] = { Size = root.Size, Transparency = root.Transparency, CanCollide = root.CanCollide }
                        end
                        local size = tonumber(ZeroCombat.HitboxSize) or 15
                        pcall(function()
                            root.Size = Vector3.new(size, size, size)
                            root.Transparency = 0.7
                            root.CanCollide = false
                        end)
                    end
                end
            end
        end
        BonmDqZ:AddCheckbox("ZeroAutoAttack", {
            Text = "โจมตีอัตโนมัติ",
            Default = false,
            Callback = function(v)
                ZeroCombat.AutoAttack = v == true
            end,
        })
        BonmDqZ:AddSlider("ZeroAttackRange", {
            Text = "ระยะโจมตี",
            Default = 12,
            Min = 5,
            Max = 20,
            Rounding = 0,
            Callback = function(v)
                ZeroCombat.AutoAttackRange = tonumber(v) or 12
            end,
        })
        BonmDqZ:AddCheckbox("ZeroHitboxExpand", {
            Text = "ขยายขอบเขตการโจมตี",
            Default = false,
            Callback = function(v)
                ZeroCombat.HitboxExpand = v == true
                if not ZeroCombat.HitboxExpand then
                    ZeroRestoreHitboxes()
                end
            end,
        })
        BonmDqZ:AddSlider("ZeroHitboxSize", {
            Text = "ขนาดขอบเขตการโจมตี",
            Default = 15,
            Min = 5,
            Max = 40,
            Rounding = 0,
            Callback = function(v)
                ZeroCombat.HitboxSize = tonumber(v) or 15
            end,
        })
        BonmDqZ:AddCheckbox("ZeroBeatKiller", {
            Text = "ฆ้าผู้เล่นทั้งหมด",
            Default = false,
            Callback = function(v)
                ZeroCombat.BeatKiller = v == true
                if not ZeroCombat.BeatKiller then
                    ZeroCombat.Target = nil
                end
            end,
        })
        task.spawn(function()
            while task.wait(0.12) do
                pcall(ZeroAutoAttackTick)
                pcall(ZeroBeatKillerTick)
                pcall(ZeroHitboxTick)
            end
        end)
        -- =====================================================
        -- ZERO HUB: 5 Killer Infinity Systems
        -- Ported from VD.lua: only the requested five systems.
        -- =====================================================
        local ZeroInfPlayers = game:GetService("Players")
        local ZeroInfRunService = game:GetService("RunService")
        local ZeroInfLocalPlayer = ZeroInfPlayers.LocalPlayer
        local ZeroInfinity = { Abyss = false, Hidden = false, Myers = false }
        local function ZeroInfNotify(text)
            pcall(function()
                game:GetService("StarterGui"):SetCore("SendNotification", { Title = "Zero HUB", Text = text, Duration = 3 })
            end)
        end
        -- 1) Infinite Abyssal Burst (Abyss)
        getgenv().ZERO_AbyssBypassThread = nil
        getgenv().ZERO_AbyssHandler = nil
        local function ZeroStartAbyss()
            if getgenv().ZERO_AbyssBypassThread then
                return
            end
            getgenv().ZERO_AbyssBypassThread = task.spawn(function()
                while ZeroInfinity.Abyss do
                    pcall(function()
                        if not getgenv().ZERO_AbyssHandler then
                            for _, fn in pairs(getgc(true)) do
                                if type(fn) == "function" and islclosure(fn) then
                                    local c = debug.getconstants(fn)
                                    if table.find(c, "corrupt") and table.find(c, "Immobile") then
                                        getgenv().ZERO_AbyssHandler = fn
                                        break
                                    end
                                end
                            end
                        end
                        local fn = getgenv().ZERO_AbyssHandler
                        if fn then
                            for i, v in pairs(debug.getupvalues(fn)) do
                                if type(v) == "boolean" and v == false then
                                    debug.setupvalue(fn, i, true)
                                end
                            end
                        end
                    end)
                    task.wait()
                end
                getgenv().ZERO_AbyssBypassThread = nil
            end)
        end
        -- 2) Infinite Skill (Hidden)
        getgenv().ZERO_HiddenBypassThread = nil
        local function ZeroStartHidden()
            if getgenv().ZERO_HiddenBypassThread then
                return
            end
            getgenv().ZERO_HiddenBypassThread = task.spawn(function()
                local leapFunction, m2Function
                local lastScan = 0
                while ZeroInfinity.Hidden do
                    pcall(function()
                        if not leapFunction or not m2Function or os.clock() - lastScan >= 2 then
                            leapFunction = nil
                            m2Function = nil
                            for _, fn in pairs(getgc(true)) do
                                if type(fn) == "function" and islclosure(fn) then
                                    local info
                                    pcall(function()
                                        info = debug.getinfo(fn)
                                    end)
                                    if info then
                                        if info.name == "tryActivate" then
                                            leapFunction = fn
                                        elseif info.name == "playM2Animation" then
                                            m2Function = fn
                                        end
                                    end
                                end
                                if leapFunction and m2Function then
                                    break
                                end
                            end
                            lastScan = os.clock()
                        end
                        if leapFunction then
                            for i, v in pairs(debug.getupvalues(leapFunction)) do
                                if type(v) == "boolean" and v == true then
                                    debug.setupvalue(leapFunction, i, false)
                                end
                            end
                        end
                        if m2Function then
                            for i, v in pairs(debug.getupvalues(m2Function)) do
                                if type(v) == "boolean" and v == true then
                                    debug.setupvalue(m2Function, i, false)
                                end
                            end
                        end
                    end)
                    task.wait(0.1)
                end
                getgenv().ZERO_HiddenBypassThread = nil
            end)
        end
        -- 3) Infinite Grab (Myers)
        -- Veil cooldown bypass and Jason Pursuit bypass removed.
        -- 4) Infinite Grab (Myers)
        local ZeroMyers = {
            Enabled = false,
            Gui = nil,
            Button = nil,
            LockButton = nil,
            Locked = false,
            Size = 64,
            Dragging = false,
            Start = nil,
            StartPos = nil,
            Connections = {},
        }
        local function ZeroMyersDisconnectConnections()
            for _, connection in ipairs(ZeroMyers.Connections) do
                pcall(function()
                    connection:Disconnect()
                end)
            end
            table.clear(ZeroMyers.Connections)
        end
        local function ZeroMyersTarget()
            local char = ZeroInfLocalPlayer.Character
            local root = char and char:FindFirstChild("HumanoidRootPart")
            if not root then
                return nil
            end
            local best, bestDist = nil, math.huge
            for _, p in ipairs(ZeroInfPlayers:GetPlayers()) do
                if p ~= ZeroInfLocalPlayer and p.Character then
                    local r = p.Character:FindFirstChild("HumanoidRootPart")
                    local h = p.Character:FindFirstChildOfClass("Humanoid")
                    if r and h and h.Health > 0 then
                        local d = (r.Position - root.Position).Magnitude
                        if d < bestDist then
                            best, bestDist = p, d
                        end
                    end
                end
            end
            return best
        end
        local function ZeroMyersGrab()
            if not ZeroInfinity.Myers then
                return
            end
            local target = ZeroMyersTarget()
            if not target or not target.Character then
                return
            end
            pcall(function()
                local rs = game:GetService("ReplicatedStorage")
                local rem = rs:FindFirstChild("Remotes")
                local killers = rem and rem:FindFirstChild("Killers")
                local stalker = killers and killers:FindFirstChild("Stalker")
                local grab = stalker and stalker:FindFirstChild("grab")
                if grab then
                    grab:FireServer(target.Character)
                end
            end)
        end
        local function ZeroSetupMyersButton()
            local pg = game:GetService("CoreGui")
            if not pg then
                return
            end
            -- ล้าง connection ที่ผูกกับ UserInputService/กล้องจากปุ่มรอบก่อน
            ZeroMyersDisconnectConnections()
            local old = pg:FindFirstChild("ZeroMyersGrabUI")
            if old then
                old:Destroy()
            end
            ZeroMyers.Gui = Instance.new("ScreenGui")
            ZeroMyers.Gui.Name = "ZeroMyersGrabUI"
            ZeroMyers.Gui.ResetOnSpawn = false
            ZeroMyers.Gui.IgnoreGuiInset = true
            ZeroMyers.Gui.DisplayOrder = 9999
            ZeroMyers.Gui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
            -- ใช้ CoreGui เพื่อไม่ให้เกมล้างปุ่มตอนรีเซ็ต PlayerGui หรือเริ่มรอบใหม่
            ZeroMyers.Gui.Parent = pg
            -- ใช้รูปแบบปุ่มจับเดิมจาก V2 (วงกลม + แสงไล่สี)
            local b = Instance.new("ImageButton")
            b.Name = "Grab"
            b.Size = UDim2.fromOffset(ZeroMyers.Size, ZeroMyers.Size)
            b.Position = UDim2.new(0.72, 0, 0.72, 0)
            b.AnchorPoint = Vector2.new(0.5, 0.5)
            b.BackgroundColor3 = Color3.fromRGB(18, 18, 18)
            b.BackgroundTransparency = 0.15
            b.AutoButtonColor = true
            b.Image = ""
            -- แสดงปุ่มเฉพาะเมื่อเปิดระบบจับ
            b.Visible = ZeroInfinity.Myers == true
            b.ZIndex = 100
            b.Parent = ZeroMyers.Gui
            Instance.new("UICorner", b).CornerRadius = UDim.new(1, 0)
            local stroke = Instance.new("UIStroke", b)
            stroke.Color = Color3.fromRGB(255, 255, 255)
            stroke.Thickness = 2
            stroke.Transparency = 0.2
            local label = Instance.new("TextLabel")
            label.Name = "GrabLabel"
            label.Size = UDim2.new(1, 0, 1, 0)
            label.BackgroundTransparency = 1
            label.Text = "จับ"
            label.TextColor3 = Color3.fromRGB(255, 255, 255)
            label.TextScaled = true
            label.Font = Enum.Font.GothamBlack
            label.ZIndex = 101
            label.Parent = b
            local function applyShine(obj, baseColor)
                local grad = Instance.new("UIGradient")
                grad.Color = ColorSequence.new({
                    ColorSequenceKeypoint.new(0, baseColor),
                    ColorSequenceKeypoint.new(0.4, baseColor),
                    ColorSequenceKeypoint.new(0.5, Color3.fromRGB(255, 255, 255)),
                    ColorSequenceKeypoint.new(0.6, baseColor),
                    ColorSequenceKeypoint.new(1, baseColor),
                })
                grad.Rotation = 45
                grad.Offset = Vector2.new(-1, -1)
                grad.Parent = obj
                task.spawn(function()
                    local TweenService = game:GetService("TweenService")
                    local tween = TweenService:Create(grad, TweenInfo.new(2, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut, -1), { Offset = Vector2.new(1, 1) })
                    tween:Play()
                end)
            end
            applyShine(b, Color3.fromRGB(18, 18, 18))
            applyShine(label, Color3.fromRGB(220, 220, 220))
            ZeroMyers.Button = b
            b.InputBegan:Connect(function(i)
                if not ZeroMyers.Locked and (i.UserInputType == Enum.UserInputType.MouseButton1 or i.UserInputType == Enum.UserInputType.Touch) then
                    ZeroMyers.Dragging = true
                    ZeroMyers.Start = i.Position
                    ZeroMyers.StartPos = b.Position
                end
            end)
            b.InputEnded:Connect(function(i)
                if i.UserInputType == Enum.UserInputType.MouseButton1 or i.UserInputType == Enum.UserInputType.Touch then
                    ZeroMyers.Dragging = false
                end
            end)
            b.Activated:Connect(ZeroMyersGrab)
            local UserInputService = game:GetService("UserInputService")
            local function clampGrabButton()
                if not b or not b.Parent then
                    return
                end
                local camera = workspace.CurrentCamera
                if not camera then
                    return
                end
                local viewport = camera.ViewportSize
                local halfX = b.AbsoluteSize.X / 2
                local halfY = b.AbsoluteSize.Y / 2
                local x = math.clamp(b.AbsolutePosition.X + halfX, halfX, math.max(halfX, viewport.X - halfX))
                local y = math.clamp(b.AbsolutePosition.Y + halfY, halfY, math.max(halfY, viewport.Y - halfY))
                b.Position = UDim2.fromOffset(x, y)
            end
            table.insert(
                ZeroMyers.Connections,
                UserInputService.InputChanged:Connect(function(i)
                    if ZeroMyers.Dragging and (i.UserInputType == Enum.UserInputType.MouseMovement or i.UserInputType == Enum.UserInputType.Touch) then
                        local d = i.Position - ZeroMyers.Start
                        local camera = workspace.CurrentCamera
                        if not camera then
                            return
                        end
                        local viewport = camera.ViewportSize
                        local halfX = b.AbsoluteSize.X / 2
                        local halfY = b.AbsoluteSize.Y / 2
                        local startX = ZeroMyers.StartPos.X.Scale * viewport.X + ZeroMyers.StartPos.X.Offset
                        local startY = ZeroMyers.StartPos.Y.Scale * viewport.Y + ZeroMyers.StartPos.Y.Offset
                        local x = math.clamp(startX + d.X, halfX, math.max(halfX, viewport.X - halfX))
                        local y = math.clamp(startY + d.Y, halfY, math.max(halfY, viewport.Y - halfY))
                        b.Position = UDim2.fromOffset(x, y)
                    end
                end)
            )
            task.defer(clampGrabButton)
            if workspace.CurrentCamera then
                table.insert(ZeroMyers.Connections, workspace.CurrentCamera:GetPropertyChangedSignal("ViewportSize"):Connect(clampGrabButton))
            end
        end
        ZeroSetupMyersButton()
        local function ZeroSetMyers(v)
            ZeroInfinity.Myers = v == true
            if ZeroInfinity.Myers then
                -- ถ้าปุ่ม/ScreenGui ถูกเกมลบตอนจบรอบ ให้สร้างใหม่แทนการเปิด Visible ของปุ่มเก่า
                local pg = game:GetService("CoreGui")
                if not ZeroMyers.Gui or not ZeroMyers.Gui.Parent or not ZeroMyers.Button or not ZeroMyers.Button.Parent or (pg and ZeroMyers.Gui.Parent ~= pg) then
                    ZeroSetupMyersButton()
                else
                    ZeroMyers.Button.Visible = true
                end
            elseif ZeroMyers.Button and ZeroMyers.Button.Parent then
                ZeroMyers.Button.Visible = false
            end
        end
        local function ZeroSetMyersSize(value)
            ZeroMyers.Size = math.clamp(math.floor(tonumber(value) or 64), 44, 110)
            if ZeroMyers.Button then
                ZeroMyers.Button.Size = UDim2.fromOffset(ZeroMyers.Size, ZeroMyers.Size)
            end
        end
        BonmDqZ:AddCheckbox("ZeroInfAbyss", {
            Text = "สกิล Abyeeal ใช้ได้ไม่จำกัด (Abyee)",
            Default = false,
            Callback = function(v)
                ZeroInfinity.Abyss = v == true
                if v then
                    ZeroStartAbyss()
                end
            end,
        })
        BonmDqZ:AddCheckbox("ZeroInfHidden", {
            Text = "Skill ใช้ได้ไม่จำกัด (Hidden)",
            Default = false,
            Callback = function(v)
                ZeroInfinity.Hidden = v == true
                if v then
                    ZeroStartHidden()
                end
            end,
        })
        BonmDqZ:AddCheckbox("ZeroInfGrab", {
            Text = "จับได้ไม่จำกัด (Myers)",
            Default = false,
            Callback = function(v)
                ZeroSetMyers(v)
            end,
        })
        BonmDqZ:AddSlider("ZeroMyersButtonSize", {
            Text = "ขนาดปุ่มจับ",
            Default = 64,
            Min = 44,
            Max = 110,
            Rounding = 0,
            Callback = function(v)
                ZeroSetMyersSize(v)
            end,
        })
        BonmDqZ:AddCheckbox("ZeroMyersButtonLock", {
            Text = "ล็อกตำแหน่งปุ่มจับ",
            Default = false,
            Callback = function(v)
                ZeroMyers.Locked = v == true
            end,
        })
        ZeroInfLocalPlayer.CharacterAdded:Connect(function()
            task.wait(0.5)
            if ZeroInfinity.Myers then
                ZeroSetupMyersButton()
            end
        end)
        -- ตรวจว่าปุ่มจับยังอยู่หรือไม่ เพราะบางรอบเกมลบ UI จาก PlayerGui
        task.spawn(function()
            while true do
                task.wait(0.25)
                if ZeroInfinity.Myers then
                    local pg = game:GetService("CoreGui")
                    if pg and (not ZeroMyers.Gui or not ZeroMyers.Gui.Parent or ZeroMyers.Gui.Parent ~= pg or not ZeroMyers.Button or not ZeroMyers.Button.Parent) then
                        pcall(ZeroSetupMyersButton)
                    elseif ZeroMyers.Button and ZeroMyers.Button.Parent then
                        ZeroMyers.Button.Visible = true
                    end
                end
            end
        end)
        local FollowSelectedPlayerName = nil
        local FollowEnabled = false
        local FollowDistance = 0
        local FollowHeight = 0
        local FollowSpeed = 55
        local FollowNoclipParts = {}
        local FollowSetNoclip
        local function FollowGetPlayerNames()
            local names = {}
            for _, player in ipairs(WIDWH:GetPlayers()) do
                if player ~= Q_qlzpNO1 then
                    table.insert(names, player.Name)
                end
            end
            table.sort(names)
            if #names == 0 then
                names = { "ไม่มีผู้เล่นอื่น" }
            end
            return names
        end
        local FollowPlayerDropdown = FollowBox:AddDropdown("FollowPlayerSelect", {
            ["Values"] = FollowGetPlayerNames(),
            ["Default"] = 1,
            ["Multi"] = false,
            ["Text"] = "เลือกผู้เล่น",
            ["Callback"] = function(name)
                FollowSelectedPlayerName = (name == "ไม่มีผู้เล่นอื่น") and nil or name
            end,
        })
        local function FollowRefreshPlayerList()
            local names = FollowGetPlayerNames()
            pcall(function()
                FollowPlayerDropdown:SetValues(names)
            end)
            if FollowSelectedPlayerName then
                local found = false
                for _, name in ipairs(names) do
                    if name == FollowSelectedPlayerName then
                        found = true
                        break
                    end
                end
                if not found then
                    FollowSelectedPlayerName = nil
                    FollowEnabled = false
                    FollowSetNoclip(false)
                end
            end
        end
        FollowSetNoclip = function(enabled)
            local character = Q_qlzpNO1.Character
            if not character then
                return
            end
            if enabled then
                for _, object in ipairs(character:GetDescendants()) do
                    if object:IsA("BasePart") then
                        if FollowNoclipParts[object] == nil then
                            FollowNoclipParts[object] = object.CanCollide
                        end
                        object.CanCollide = false
                    end
                end
            else
                for part, oldValue in pairs(FollowNoclipParts) do
                    if part and part.Parent then
                        part.CanCollide = oldValue
                    end
                end
                table.clear(FollowNoclipParts)
            end
        end
        local function FollowGetTarget()
            if not FollowSelectedPlayerName then
                return nil
            end
            local player = WIDWH:FindFirstChild(FollowSelectedPlayerName)
            if not player or not player.Character then
                return nil
            end
            local root = player.Character:FindFirstChild("HumanoidRootPart")
            if not root then
                return nil
            end
            return player, root
        end
        local function FollowStop()
            FollowEnabled = false
            FollowSetNoclip(false)
            QolwvD0XnWnzM:Notify("หยุดการติดตามผู้เล่นแล้ว", 2)
        end
        FollowBox:AddButton("ติดตาม / หยุด", function()
            if FollowEnabled then
                FollowStop()
                return
            end
            local player, root = FollowGetTarget()
            if not player or not root then
                QolwvD0XnWnzM:Notify("กรุณาเลือกผู้เล่นที่ยังอยู่ในเกม", 3)
                return
            end
            FollowEnabled = true
            FollowSetNoclip(true)
            QolwvD0XnWnzM:Notify("กำลังติดตาม: " .. player.Name, 2)
        end)
        FollowBox:AddButton("วาร์ปไปหาผู้เล่น", function()
            local player, targetRoot = FollowGetTarget()
            local character = Q_qlzpNO1.Character
            local myRoot = character and character:FindFirstChild("HumanoidRootPart")
            if not player or not targetRoot or not myRoot then
                QolwvD0XnWnzM:Notify("กรุณาเลือกผู้เล่นที่ยังอยู่ในเกม", 3)
                return
            end
            myRoot.CFrame = targetRoot.CFrame
            QolwvD0XnWnzM:Notify("วาร์ปไปหา " .. player.Name .. " แล้ว", 2)
        end)
        FollowBox:AddButton("รีเฟรชรายชื่อผู้เล่น", function()
            FollowRefreshPlayerList()
            QolwvD0XnWnzM:Notify("รีเฟรชรายชื่อผู้เล่นแล้ว", 2)
        end)
        FollowBox:AddLabel("ติดตาม = บินเข้าหาผู้เล่น + ทะลุสิ่งกีดขวาง")
        FollowBox:AddLabel("หยุด = หยุดบินและคืนค่าการชนเดิม")
        -- =====================================================
        -- ZERO HUB: FLY (SEPARATE FROM FOLLOW / TP)
        -- Opening the Fly menu only shows the mobile controls.
        -- The FLY button itself starts/stops flying.
        -- UP / DOWN behavior is ported from the user's Fly.lua (+/- 2 studs).
        -- =====================================================
        do
            local Players = game:GetService("Players")
            local UIS = game:GetService("UserInputService")
            local RunService = game:GetService("RunService")
            local LocalPlayer = Players.LocalPlayer
            local FlyGui
            local FlyToggleButton
            local FlyUpButton
            local FlyDownButton
            local FlyEnabled = false
            local FlySpeed = 50
            local FlyBV
            local FlyBG
            local FlyRenderConnection
            local FlyVertical = 0
            local function getCharacterParts()
                local char = LocalPlayer.Character
                if not char then
                    return nil, nil, nil
                end
                local hum = char:FindFirstChildOfClass("Humanoid")
                local root = char:FindFirstChild("HumanoidRootPart")
                return char, hum, root
            end
            local function setFlyButton(on)
                if not FlyToggleButton then
                    return
                end
                FlyToggleButton.Text = on and "บิน: เปิด" or "บิน: ปิด"
                FlyToggleButton.BackgroundColor3 = on and Color3.fromRGB(35, 105, 65) or Color3.fromRGB(38, 40, 48)
            end
            local function stopFly()
                FlyEnabled = false
                FlyVertical = 0
                if FlyRenderConnection then
                    FlyRenderConnection:Disconnect()
                    FlyRenderConnection = nil
                end
                if FlyBV then
                    pcall(function()
                        FlyBV:Destroy()
                    end)
                    FlyBV = nil
                end
                if FlyBG then
                    pcall(function()
                        FlyBG:Destroy()
                    end)
                    FlyBG = nil
                end
                local _, hum = getCharacterParts()
                if hum then
                    pcall(function()
                        hum.PlatformStand = false
                    end)
                    pcall(function()
                        hum.AutoRotate = true
                    end)
                end
                setFlyButton(false)
            end
            local function startFly()
                local char, hum, root = getCharacterParts()
                if not char or not hum or not root then
                    pcall(function()
                        QolwvD0XnWnzM:Notify("ไม่พบตัวละครสำหรับบิน", 3)
                    end)
                    setFlyButton(false)
                    return
                end
                if FlyEnabled then
                    return
                end
                FlyEnabled = true
                FlyVertical = 0
                FlyBG = Instance.new("BodyGyro")
                FlyBG.Name = "ZeroHubFlyGyro"
                FlyBG.P = 90000
                FlyBG.MaxTorque = Vector3.new(9e9, 9e9, 9e9)
                FlyBG.CFrame = root.CFrame
                FlyBG.Parent = root
                FlyBV = Instance.new("BodyVelocity")
                FlyBV.Name = "ZeroHubFlyVelocity"
                FlyBV.MaxForce = Vector3.new(9e9, 9e9, 9e9)
                FlyBV.Velocity = Vector3.zero
                FlyBV.Parent = root
                pcall(function()
                    hum.PlatformStand = true
                end)
                pcall(function()
                    hum.AutoRotate = false
                end)
                setFlyButton(true)
                FlyRenderConnection = RunService.RenderStepped:Connect(function()
                    if not FlyEnabled then
                        return
                    end
                    local c, h, r = getCharacterParts()
                    if not c or not h or not r or h.Health <= 0 then
                        stopFly()
                        return
                    end
                    if not FlyBV or not FlyBG or FlyBV.Parent ~= r or FlyBG.Parent ~= r then
                        stopFly()
                        return
                    end
                    local camera = workspace.CurrentCamera
                    local move = h.MoveDirection
                    local velocity = Vector3.zero
                    -- Free flight: mobile joystick controls horizontal movement
                    -- relative to the camera; UP/DOWN buttons control vertical movement.
                    if camera then
                        local forward = Vector3.new(camera.CFrame.LookVector.X, 0, camera.CFrame.LookVector.Z)
                        local right = Vector3.new(camera.CFrame.RightVector.X, 0, camera.CFrame.RightVector.Z)
                        if forward.Magnitude > 0 then
                            forward = forward.Unit
                        end
                        if right.Magnitude > 0 then
                            right = right.Unit
                        end
                        local x = move:Dot(right)
                        local z = move:Dot(forward)
                        local horizontal = right * x + forward * z
                        if horizontal.Magnitude > 0.05 then
                            horizontal = horizontal.Unit * math.min(move.Magnitude, 1) * FlySpeed
                            velocity = horizontal
                        end
                        -- Keep the avatar level while flying; camera can look around freely.
                        local look = Vector3.new(camera.CFrame.LookVector.X, 0, camera.CFrame.LookVector.Z)
                        if look.Magnitude > 0 then
                            FlyBG.CFrame = CFrame.lookAt(r.Position, r.Position + look.Unit, Vector3.yAxis)
                        end
                    end
                    velocity = velocity + Vector3.new(0, FlyVertical * FlySpeed, 0)
                    FlyBV.Velocity = velocity
                    FlyVertical = 0
                end)
            end
            local function toggleFly()
                if FlyEnabled then
                    stopFly()
                else
                    startFly()
                end
            end
            local function moveVertical(amount)
                local char = LocalPlayer.Character
                local root = char and char:FindFirstChild("HumanoidRootPart")
                if root then
                    -- Same movement amount as the supplied Fly.lua.
                    root.CFrame = root.CFrame * CFrame.new(0, amount * 2, 0)
                end
            end
            local function buildFlyGui()
                if FlyGui then
                    FlyGui.Enabled = true
                    return
                end
                FlyGui = Instance.new("ScreenGui")
                FlyGui.Name = "ZeroHubFlyControls"
                FlyGui.ResetOnSpawn = false
                FlyGui.IgnoreGuiInset = true
                FlyGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
                FlyGui.Parent = LocalPlayer:WaitForChild("PlayerGui")
                FlyToggleButton = Instance.new("TextButton")
                FlyToggleButton.Name = "FlyToggle"
                FlyToggleButton.Size = UDim2.fromOffset(102, 46)
                FlyToggleButton.Position = UDim2.new(1, -190, 0, 150)
                FlyToggleButton.BackgroundColor3 = Color3.fromRGB(38, 40, 48)
                FlyToggleButton.Text = "บิน: ปิด"
                FlyToggleButton.TextColor3 = Color3.fromRGB(235, 235, 240)
                FlyToggleButton.TextSize = 13
                FlyToggleButton.Font = Enum.Font.GothamBold
                FlyToggleButton.AutoButtonColor = false
                FlyToggleButton.Parent = FlyGui
                local tc = Instance.new("UICorner")
                tc.CornerRadius = UDim.new(0, 11)
                tc.Parent = FlyToggleButton
                local ts = Instance.new("UIStroke")
                ts.Color = Color3.fromRGB(80, 82, 92)
                ts.Thickness = 1
                ts.Parent = FlyToggleButton
                -- Drag the FLY button itself. The UP/DOWN controls remain fixed.
                local dragging = false
                local dragStart = nil
                local startPos = nil
                local moved = false
                local dragInput = nil
                FlyToggleButton.InputBegan:Connect(function(input)
                    if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
                        dragging = true
                        moved = false
                        dragStart = input.Position
                        startPos = FlyToggleButton.Position
                        dragInput = input
                    end
                end)
                FlyToggleButton.InputChanged:Connect(function(input)
                    if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
                        dragInput = input
                    end
                end)
                UIS.InputChanged:Connect(function(input)
                    if not dragging or input ~= dragInput then
                        return
                    end
                    local delta = input.Position - dragStart
                    if math.abs(delta.X) > 5 or math.abs(delta.Y) > 5 then
                        moved = true
                    end
                    FlyToggleButton.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
                end)
                FlyToggleButton.InputEnded:Connect(function(input)
                    if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
                        if dragging and not moved then
                            toggleFly()
                        end
                        dragging = false
                        dragInput = nil
                    end
                end)
                local panel = Instance.new("Frame")
                panel.Name = "VerticalControls"
                panel.Size = UDim2.fromOffset(56, 106)
                panel.Position = UDim2.new(1, -74, 0, 255)
                panel.BackgroundTransparency = 1
                panel.Parent = FlyGui
                FlyUpButton = Instance.new("TextButton")
                FlyUpButton.Size = UDim2.fromOffset(56, 48)
                FlyUpButton.Position = UDim2.fromOffset(0, 0)
                FlyUpButton.BackgroundColor3 = Color3.fromRGB(38, 40, 48)
                FlyUpButton.Text = "▲"
                FlyUpButton.TextColor3 = Color3.fromRGB(235, 235, 240)
                FlyUpButton.TextSize = 19
                FlyUpButton.Font = Enum.Font.GothamBold
                FlyUpButton.AutoButtonColor = false
                FlyUpButton.Parent = panel
                local uc = Instance.new("UICorner")
                uc.CornerRadius = UDim.new(0, 11)
                uc.Parent = FlyUpButton
                FlyUpButton.MouseButton1Click:Connect(function()
                    moveVertical(1)
                end)
                FlyDownButton = Instance.new("TextButton")
                FlyDownButton.Size = UDim2.fromOffset(56, 48)
                FlyDownButton.Position = UDim2.fromOffset(0, 58)
                FlyDownButton.BackgroundColor3 = Color3.fromRGB(38, 40, 48)
                FlyDownButton.Text = "▼"
                FlyDownButton.TextColor3 = Color3.fromRGB(235, 235, 240)
                FlyDownButton.TextSize = 19
                FlyDownButton.Font = Enum.Font.GothamBold
                FlyDownButton.AutoButtonColor = false
                FlyDownButton.Parent = panel
                local dc = Instance.new("UICorner")
                dc.CornerRadius = UDim.new(0, 11)
                dc.Parent = FlyDownButton
                FlyDownButton.MouseButton1Click:Connect(function()
                    moveVertical(-1)
                end)
            end
            buildFlyGui()
            FlyGui.Enabled = false
            ZeroFlyBox:AddCheckbox("ZeroFlyMenuToggle", {
                Text = "แสดงปุ่มบิน",
                Default = false,
                Callback = function(v)
                    if v then
                        FlyGui.Enabled = true
                        setFlyButton(false)
                    -- Showing the UI does NOT start flying.
                    else
                        FlyGui.Enabled = false
                        stopFly()
                    end
                end,
            })
            ZeroFlyBox:AddSlider("ZeroFlySpeed", {
                Text = "ความเร็วบิน",
                Default = 50,
                Min = 10,
                Max = 100,
                Rounding = 0,
                Callback = function(v)
                    FlySpeed = tonumber(v) or 50
                end,
            })
            ZeroFlyBox:AddLabel("เปิดเมนู = แสดงปุ่มบินเท่านั้น")
            ZeroFlyBox:AddLabel("บิน = เปิด/ปิดการบิน")
            ZeroFlyBox:AddLabel("▲ / ▼ = ขึ้น / ลง 2 หน่วย")
            LocalPlayer.CharacterAdded:Connect(function()
                stopFly()
                if FlyGui then
                    FlyGui.Enabled = false
                end
                pcall(function()
                    ZeroFlyBox:FindFirstChild("ZeroFlyMenuToggle")
                end)
            end)
        end
        WIDWH.PlayerAdded:Connect(function()
            task.defer(FollowRefreshPlayerList)
        end)
        WIDWH.PlayerRemoving:Connect(function(player)
            if player.Name == FollowSelectedPlayerName then
                FollowSelectedPlayerName = nil
                FollowEnabled = false
                FollowSetNoclip(false)
                QolwvD0XnWnzM:Notify("ผู้เล่นเป้าหมายออกจากเกมแล้ว", 2)
            end
            task.defer(FollowRefreshPlayerList)
        end)
        Q_qlzpNO1.CharacterAdded:Connect(function()
            task.wait(0.25)
            if FollowEnabled then
                FollowSetNoclip(true)
            end
        end)
        WwNbnqHIQwppl.Heartbeat:Connect(function()
            if not FollowEnabled then
                return
            end
            local player, targetRoot = FollowGetTarget()
            local character = Q_qlzpNO1.Character
            local myRoot = character and character:FindFirstChild("HumanoidRootPart")
            if not player or not targetRoot or not myRoot then
                FollowStop()
                return
            end
            FollowSetNoclip(true)
            local targetPosition = targetRoot.Position
            local offset = targetPosition - myRoot.Position
            local distance = offset.Magnitude
            if distance > 0.05 then
                local step = math.min(FollowSpeed / 60, distance)
                local nextPosition = myRoot.Position + offset.Unit * step
                myRoot.CFrame = CFrame.new(nextPosition) * targetRoot.CFrame.Rotation
            else
                myRoot.CFrame = targetRoot.CFrame
            end
            myRoot.AssemblyLinearVelocity = Vector3.zero
        end)
        getgenv()["VD"] = getgenv()["VD"]
            or {
                ["aimbotEnabled"] = false,
                ["aimbotTargetMode"] = "Killer",
                ["aimbotPredict"] = true,
                ["aimbotStrength"] = 1,
                ["aimbotPredictStrength"] = 0.12,
                ["aimbotFOV"] = 250,
                ["aimbotThroughWall"] = false,
                ["aimbotAimPart"] = "HumanoidRootPart",
                ["aimbotFovCircle"] = false,
                ["aimbotLaser"] = true,
                ["aimbotOffsetX"] = 20,
                ["aimbotOffsetY"] = 0,
                ["vaultSpeedEnabled"] = false,
                ["vaultSpeedValue"] = 1.5,
                ["speedHackEnabled"] = false,
                ["speedValue"] = 32,
                ["KILLER_AntiBlind"] = false,
                ["jerkToolEnabled"] = false,
                ["korbloxLegEnabled"] = false,
                ["headlessEnabled"] = false,
                ["killerPowerActive"] = false,
                ["killerHitEnabled"] = false,
                ["flowstateEnabled"] = false,
                ["flowstateBoostEnabled"] = false,
                ["SURV_AutoParry"] = false,
                ["SURV_ParryDistance"] = 8,
                ["SURV_ShowParryCircle"] = false,
                ["SURV_ParryMode"] = "Normal",
                ["KILLER_BlockVaults"] = false,
                ["AutoSkillcheck"] = true,
                ["AutoSkillcheckMode"] = "Normal",
                ["HideSkillUI"] = false,
                ["fakePerksEnabled"] = false,
                ["flowstateBoostEnabled"] = false,
                ["quickRecoveryEnabled"] = false,
                ["perfectLandingEnabled"] = false,
                ["adrenalineRushEnabled"] = false,
                ["killerHitEnabled"] = false,
                ["killerShowName"] = false,
                ["killerShowOutline"] = true,
                ["killerOutlineOnly"] = false,
                ["killerColor"] = Color3["fromRGB"](255, 60, 60),
                ["killerMaxDistance"] = 500,
                ["survivorShowName"] = false,
                ["survivorShowOutline"] = true,
                ["survivorOutlineOnly"] = false,
                ["survivorColor"] = Color3["fromRGB"](60, 200, 255),
                ["survivorMaxDistance"] = 500,
                ["fillTransparency"] = 0.5,
                ["espScpEnabled"] = false,
                ["VIS_ShowHookCounter"] = false,
                ["RADAR_Enabled"] = false,
                ["RADAR_Range"] = 250,
                ["RADAR_Size"] = 170,
                ["RADAR_Transparency"] = 0.2,
                ["RADAR_ShowKiller"] = false,
                ["RADAR_ShowSurvivor"] = false,
                ["RADAR_ShowGenerator"] = false,
                ["RADAR_ShowPallet"] = false,
                ["RADAR_ShowHook"] = false,
                ["RADAR_ShowGate"] = false,
                ["RADAR_ShowWindow"] = false,
                ["RADAR_ShowZombie"] = false,
                ["SURV_FakeParry"] = false,
                ["SURV_FakeParryAnim"] = "Enten",
                ["SURV_FakeParryLocked"] = false,
                ["espScpShowName"] = true,
                ["espScpColor"] = Color3["fromRGB"](200, 60, 255),
                ["espScpDistance"] = 500,
                ["espGeneratorEnabled"] = false,
                ["espGeneratorProgressGen"] = false,
                ["espGenShowPK"] = false,
                ["espGeneratorColor"] = Color3["fromRGB"](200, 100, 0),
                ["espWindowEnabled"] = false,
                ["espWindowColor"] = Color3["fromRGB"](255, 223, 0),
                ["espPalletEnabled"] = false,
                ["espPalletColor"] = Color3["fromRGB"](53, 189, 166),
                ["espHookEnabled"] = false,
                ["espHookColor"] = Color3["fromRGB"](252, 116, 116),
                ["espGateEnabled"] = false,
                ["espGateColor"] = Color3["fromRGB"](255, 255, 255),
                ["godMode"] = false,
                ["antiFallDamage"] = false,
                ["crosshairEnabled"] = false,
                ["crosshairStyle"] = "Plus",
                ["crosshairSize"] = 1,
                ["crosshairOpacity"] = 1,
                ["crosshairColor"] = Color3["fromRGB"](255, 255, 255),
                ["lockFovEnabled"] = false,
                ["customFovValue"] = 70,
                ["moonwalkEnabled"] = false,
                ["moonwalkMode"] = "Classic",
                ["moonwalkSwayAmp"] = 0.55,
                ["moonwalkSwaySpeed"] = 6,
                ["autoCrouchEnabled"] = false,
                ["autoCrouchRadius"] = 18,
                ["aimlockFlashlightEnabled"] = false,
                ["aimlockFlashlightSmooth"] = 0.35,
                ["mayersNoCooldownEnabled"] = false,
                ["spearEnabled"] = false,
                ["spearFovRadius"] = 150,
                ["spearPrediction"] = true,
                ["spearDamping"] = true,
                ["spearPingLead"] = 1,
                ["spearVelocityLead"] = 1.0,
                ["spearSnaplineMaxDistance"] = 400,
                ["spearSnaplineShowText"] = true,
                ["spearIndicatorEnabled"] = false,
                ["spearFovCircleEnabled"] = false,
                ["spearSnapLineEnabled"] = false,
                ["alwaysFastVault"] = false,
                ["noclipEnabled"] = false,
                ["VIS_WeatherTheme"] = "Default",
                ["Fullbright"] = false,
                ["NO_Fog"] = false,
                ["dropAllPalletsEnabled"] = false,
                ["instantHealEnabled"] = false,
                ["instantHealActive"] = false,
            }
        local u00bmxHb = nil
        local DoWXwl = nil
        local function UpdateImmobileState()
            for OXznZWvqnH1qZD, v_IWH1 in pairs(getgc(true)) do
                if type(v_IWH1) == "function" and islclosure(v_IWH1) then
                    local WDq1ol = debug["getconstants"](v_IWH1)
                    if table["find"](WDq1ol, "corrupt") and table["find"](WDq1ol, "Immobile") then
                        DoWXwl = v_IWH1
                        break
                    end
                end
            end
            if u00bmxHb then
                u00bmxHb["Disconnect"](u00bmxHb)
            end
            u00bmxHb = WwNbnqHIQwppl["Heartbeat"]:Connect(function()
                if DoWXwl then
                    local vbvWZ = debug["getupvalues"](DoWXwl)
                    for bHNH0D, QuxwZM1XblZ in pairs(vbvWZ) do
                        if type(QuxwZM1XblZ) == "boolean" and QuxwZM1XblZ == false then
                            pcall(function()
                                debug["setupvalue"](DoWXwl, bHNH0D, true)
                            end)
                        end
                    end
                end
                local qzzxDlwUUo1 = Q_qlzpNO1["Character"]
                if qzzxDlwUUo1 then
                    pcall(function()
                        qzzxDlwUUo1:SetAttribute("Immobile", false)
                        qzzxDlwUUo1:SetAttribute("immobile", false)
                        qzzxDlwUUo1:SetAttribute("AbyssCooldown", 0)
                        qzzxDlwUUo1:SetAttribute("Cooldown", 0)
                    end)
                end
            end)
        end
        Q_qlzpNO1["CharacterAdded"]:Connect(function()
            task["wait"](1)
            if VD["abyssBypassEnabled"] then
                UpdateImmobileState()
            end
        end)
        local BqmuoQ = game["GetService"](game, "TextService")
        getgenv()["VD"] = getgenv()["VD"] or {}
        VD["invisibleEnabled"] = VD["invisibleEnabled"] or false
        local IHQqwuo = false
        local BOqUMvbM = nil
        local Q_UqzWO1q1HWqm = 0
        local OUUunW0 = 0
        local OHb1vzuuIMq1O = 0
        local QmzXUbUo_ = false
        local I1_zuNM_N = nil
        local vQnoZOQ = nil
        local bOWbmwXQDI_ = {}
        local wDQw_ = Vector3["new"](0, -6000, 0)
        local OvMW11m = 0.5
        local pzxvbZxUmoWmq = 5
        local function FindUpdateCharacterLookRemote()
            local HHIMIIHDUUxo, BvZvn_u = pcall(function()
                local vwQmI = oZzw1oZIXX_["FindFirstChild"](oZzw1oZIXX_, "Remotes")
                if not vwQmI then
                    return nil
                end
                local MOZnubOMbuUQnI = vwQmI["FindFirstChild"](vwQmI, "Game")
                if not MOZnubOMbuUQnI then
                    return nil
                end
                local lQvolXz_zUvvm = MOZnubOMbuUQnI["FindFirstChild"](MOZnubOMbuUQnI, "UpdateCharacterLook")
                if lQvolXz_zUvvm and lQvolXz_zUvvm["IsA"](lQvolXz_zUvvm, "RemoteEvent") then
                    return lQvolXz_zUvvm
                end
                return nil
            end)
            if HHIMIIHDUUxo then
                return BvZvn_u
            end
            return nil
        end
        local function PrepareCharacterLookArguments(...)
            local wXN0DWOX = {}
            local D_w_mwbNMN = select("#", ...)
            for Oxzquz = 1, D_w_mwbNMN do
                local uvNUx_ = select(Oxzquz, ...)
                if typeof(uvNUx_) == "CFrame" then
                    uvNUx_ = uvNUx_ + wDQw_
                end
                wXN0DWOX[Oxzquz] = uvNUx_
            end
            return table.unpack(wXN0DWOX, 1, D_w_mwbNMN)
        end
        local function FireCharacterLookUpdate()
            if not IHQqwuo then
                return false
            end
            if type(BOqUMvbM) ~= "table" or #BOqUMvbM ~= 5 then
                return false
            end
            local IuWoX1QmnDOp = FindUpdateCharacterLookRemote()
            if not IuWoX1QmnDOp then
                return false
            end
            local vluUXqZ = table["pack"](pcall(PrepareCharacterLookArguments, table.unpack(BOqUMvbM)))
            if not vluUXqZ[1] then
                return false
            end
            local WINxwU = IuWoX1QmnDOp["FireServer"]
            if typeof(WINxwU) ~= "function" then
                return false
            end
            local wUDn1u_Q = pcall(WINxwU, IuWoX1QmnDOp, table.unpack(vluUXqZ, 2, vluUXqZ["n"]))
            if wUDn1u_Q then
                Q_UqzWO1q1HWqm = 0
                OUUunW0 = OUUunW0 + 1
            else
                Q_UqzWO1q1HWqm = Q_UqzWO1q1HWqm + 1
            end
            return wUDn1u_Q
        end
        local function RemoveInvisibleHighlight(DwzXwUZX)
            if DwzXwUZX == nil then
                return
            end
            for W_1qMHpHxXXlH, pOm1lNM in ipairs(DwzXwUZX["GetChildren"](DwzXwUZX)) do
                if pOm1lNM["Name"] == "Bolong_Invis" and pOm1lNM["IsA"](pOm1lNM, "Highlight") then
                    pcall(function()
                        pOm1lNM:Destroy()
                    end)
                end
            end
        end
        local function ClearInvisibleTag(u11xbqMH)
            if vQnoZOQ then
                pcall(function()
                    vQnoZOQ:Disconnect()
                end)
                vQnoZOQ = nil
            end
            if u11xbqMH == nil then
                return
            end
            local _oMoX = u11xbqMH["FindFirstChild"](u11xbqMH, "Head") or u11xbqMH["FindFirstChild"](u11xbqMH, "HumanoidRootPart")
            if _oMoX then
                local bOMXlbqOX1Z = _oMoX["FindFirstChild"](_oMoX, "Bolong_InvisTag")
                if bOMXlbqOX1Z then
                    pcall(function()
                        bOMXlbqOX1Z:Destroy()
                    end)
                end
            end
        end
        local function ApplyInvisibleVisuals(O_Wbvq1bQ)
            if O_Wbvq1bQ == nil then
                return
            end
            ClearInvisibleTag(O_Wbvq1bQ)
            if not IHQqwuo then
                return
            end
            local luqmpMblpxNO_q = O_Wbvq1bQ["FindFirstChild"](O_Wbvq1bQ, "Head") or O_Wbvq1bQ["FindFirstChild"](O_Wbvq1bQ, "HumanoidRootPart")
            if not luqmpMblpxNO_q then
                return
            end
            pcall(function()
                local bUzDI0xZWHUInQ = "[ PMHUB ]"
                local wmq1W1ZquzWuuz = 12
                local OxluNMop = Enum["Font"]["GothamBold"]
                local QHDl0qO = 110
                pcall(function()
                    QHDl0qO = BqmuoQ["GetTextSize"](BqmuoQ, bUzDI0xZWHUInQ, wmq1W1ZquzWuuz, OxluNMop, Vector2["new"](1000, 26))["X"]
                end)
                local DxbxHvZ1, BbqZQxUxnMq, _qupHQu, _1mw0WZ0oH = 14, 4, 1.5, 5
                local I0bxlvMwp = 14
                local BZDobHZUw_p0 = math.ceil(_1mw0WZ0oH * 2 + DxbxHvZ1 + BbqZQxUxnMq + QHDl0qO)
                local WuvmWlpow_ = DxbxHvZ1 + _1mw0WZ0oH * 2
                local w_HMo1 = Instance["new"]("BillboardGui")
                w_HMo1["Name"] = "Bolong_InvisTag"
                w_HMo1["AlwaysOnTop"] = true
                w_HMo1["Size"] = UDim2["new"](0, BZDobHZUw_p0, 0, WuvmWlpow_)
                w_HMo1["StudsOffset"] = Vector3["new"](0, 1.5, 0)
                w_HMo1["Adornee"] = luqmpMblpxNO_q
                local IUovN_NN0NXoQ, uoZIXWm = _1mw0WZ0oH, _1mw0WZ0oH
                local OUMpHllubqUzv = _1mw0WZ0oH + DxbxHvZ1 + BbqZQxUxnMq
                local wx_uqpzwQZz = _1mw0WZ0oH + math.floor((DxbxHvZ1 - I0bxlvMwp) / 2)
                local function ScaleNotificationElement(oovlD, QoHwxoX)
                    return math.floor(oovlD * QoHwxoX + 0.5)
                end
                local QOw0vz = Instance["new"]("ImageLabel")
                QOw0vz["Name"] = "Icon"
                QOw0vz["Position"] = UDim2["fromOffset"](IUovN_NN0NXoQ, uoZIXWm)
                QOw0vz["Size"] = UDim2["new"](0, DxbxHvZ1, 0, DxbxHvZ1)
                QOw0vz["BackgroundTransparency"] = 1
                QOw0vz["Image"] = "rbxassetid://101603563351741"
                QOw0vz["ZIndex"] = 2
                QOw0vz["Parent"] = w_HMo1
                local _U0IU = {}
                for _0NMpzWuDmZUq, Quo0_z1I in ipairs({ { 2, 0.6 }, { 4, 0.85 } }) do
                    local bmzDIWnbNxxz, DUwoUmu_W_0w = Quo0_z1I[1], Quo0_z1I[2]
                    local _xbuwlQpvqQvu = Instance["new"]("ImageLabel")
                    _xbuwlQpvqQvu["Name"] = "Halo" .. _0NMpzWuDmZUq
                    _xbuwlQpvqQvu["Position"] = UDim2["fromOffset"](IUovN_NN0NXoQ - bmzDIWnbNxxz, uoZIXWm - bmzDIWnbNxxz)
                    _xbuwlQpvqQvu["Size"] = UDim2["new"](0, DxbxHvZ1 + bmzDIWnbNxxz * 2, 0, DxbxHvZ1 + bmzDIWnbNxxz * 2)
                    _xbuwlQpvqQvu["BackgroundTransparency"] = 1
                    _xbuwlQpvqQvu["Image"] = "rbxassetid://101603563351741"
                    _xbuwlQpvqQvu["ImageColor3"] = Color3["new"](0, 0, 0)
                    _xbuwlQpvqQvu["ImageTransparency"] = DUwoUmu_W_0w
                    _xbuwlQpvqQvu["ZIndex"] = 1
                    _xbuwlQpvqQvu["Parent"] = w_HMo1
                    _U0IU[#_U0IU + 1] = { ["o"] = _xbuwlQpvqQvu, ["pad"] = bmzDIWnbNxxz }
                end
                local IQm1Z_IZ1OONml = {}
                for IOUwwnpwHvu, MHmwUbXUZQD in ipairs({
                    { _qupHQu, 0 },
                    { -_qupHQu, 0 },
                    { 0, _qupHQu },
                    { 0, -_qupHQu },
                    { _qupHQu * 0.7, _qupHQu * 0.7 },
                    { _qupHQu * 0.7, -_qupHQu * 0.7 },
                    { -_qupHQu * 0.7, _qupHQu * 0.7 },
                    { -_qupHQu * 0.7, -_qupHQu * 0.7 },
                }) do
                    local wmqNoDwH_p = Instance["new"]("TextLabel")
                    wmqNoDwH_p["Name"] = "Glow" .. IOUwwnpwHvu
                    wmqNoDwH_p["Position"] = UDim2["fromOffset"](OUMpHllubqUzv + MHmwUbXUZQD[1], wx_uqpzwQZz + MHmwUbXUZQD[2])
                    wmqNoDwH_p["Size"] = UDim2["new"](0, QHDl0qO, 0, I0bxlvMwp)
                    wmqNoDwH_p["BackgroundTransparency"] = 1
                    wmqNoDwH_p["Text"] = bUzDI0xZWHUInQ
                    wmqNoDwH_p["TextColor3"] = Color3["new"](0, 0, 0)
                    wmqNoDwH_p["TextTransparency"] = 0.8
                    wmqNoDwH_p["TextSize"] = wmq1W1ZquzWuuz
                    wmqNoDwH_p["Font"] = OxluNMop
                    wmqNoDwH_p["ZIndex"] = 1
                    wmqNoDwH_p["Parent"] = w_HMo1
                    IQm1Z_IZ1OONml[#IQm1Z_IZ1OONml + 1] = { ["o"] = wmqNoDwH_p, ["dx"] = MHmwUbXUZQD[1], ["dy"] = MHmwUbXUZQD[2] }
                end
                local _1bMM = Instance["new"]("TextLabel")
                _1bMM["Name"] = "Label"
                _1bMM["Position"] = UDim2["fromOffset"](OUMpHllubqUzv, wx_uqpzwQZz)
                _1bMM["Size"] = UDim2["new"](0, QHDl0qO, 0, I0bxlvMwp)
                _1bMM["BackgroundTransparency"] = 1
                _1bMM["Text"] = bUzDI0xZWHUInQ
                _1bMM["TextColor3"] = Color3["fromRGB"](255, 255, 255)
                _1bMM["TextSize"] = wmq1W1ZquzWuuz
                _1bMM["Font"] = OxluNMop
                _1bMM["ZIndex"] = 2
                _1bMM["Parent"] = w_HMo1
                w_HMo1["Parent"] = luqmpMblpxNO_q
                local bwpNMQO, vbQvlQzZ0O, BxxOvz_XNHOO_U = 25, 0.45, 1.35
                if vQnoZOQ then
                    pcall(function()
                        vQnoZOQ:Disconnect()
                    end)
                    vQnoZOQ = nil
                end
                vQnoZOQ = WwNbnqHIQwppl["RenderStepped"]:Connect(function()
                    if not w_HMo1["Parent"] then
                        return
                    end
                    local wq1nqOOqN = wxl1Uo1UbDnnb["CurrentCamera"]
                    if not wq1nqOOqN then
                        return
                    end
                    local _1wMxzv = luqmpMblpxNO_q["Parent"] and luqmpMblpxNO_q["Position"] or nil
                    if not _1wMxzv then
                        return
                    end
                    local vnp0MUWHv = (wq1nqOOqN["CFrame"]["Position"] - _1wMxzv)["Magnitude"]
                    if vnp0MUWHv < 1 then
                        vnp0MUWHv = 1
                    end
                    local QUzIH = bwpNMQO / vnp0MUWHv
                    if QUzIH < vbQvlQzZ0O then
                        QUzIH = vbQvlQzZ0O
                    elseif QUzIH > BxxOvz_XNHOO_U then
                        QUzIH = BxxOvz_XNHOO_U
                    end
                    w_HMo1["Size"] = UDim2["fromOffset"](ScaleNotificationElement(BZDobHZUw_p0, QUzIH), ScaleNotificationElement(WuvmWlpow_, QUzIH))
                    QOw0vz["Position"] = UDim2["fromOffset"](ScaleNotificationElement(IUovN_NN0NXoQ, QUzIH), ScaleNotificationElement(uoZIXWm, QUzIH))
                    QOw0vz["Size"] = UDim2["new"](0, ScaleNotificationElement(DxbxHvZ1, QUzIH), 0, ScaleNotificationElement(DxbxHvZ1, QUzIH))
                    for pWHuZp_vW_xb, MqU0n in ipairs(_U0IU) do
                        MqU0n["o"]["Position"] =
                            UDim2["fromOffset"](ScaleNotificationElement(IUovN_NN0NXoQ - MqU0n["pad"], QUzIH), ScaleNotificationElement(uoZIXWm - MqU0n["pad"], QUzIH))
                        MqU0n["o"]["Size"] =
                            UDim2["new"](0, ScaleNotificationElement(DxbxHvZ1 + MqU0n["pad"] * 2, QUzIH), 0, ScaleNotificationElement(DxbxHvZ1 + MqU0n["pad"] * 2, QUzIH))
                    end
                    for OQWQ0loz, DDWbbmp in ipairs(IQm1Z_IZ1OONml) do
                        DDWbbmp["o"]["Position"] =
                            UDim2["fromOffset"](ScaleNotificationElement(OUMpHllubqUzv + DDWbbmp["dx"], QUzIH), ScaleNotificationElement(wx_uqpzwQZz + DDWbbmp["dy"], QUzIH))
                        DDWbbmp["o"]["Size"] = UDim2["new"](0, ScaleNotificationElement(QHDl0qO, QUzIH), 0, ScaleNotificationElement(I0bxlvMwp, QUzIH))
                        DDWbbmp["o"]["TextSize"] = ScaleNotificationElement(wmq1W1ZquzWuuz, QUzIH)
                    end
                    _1bMM["Position"] = UDim2["fromOffset"](ScaleNotificationElement(OUMpHllubqUzv, QUzIH), ScaleNotificationElement(wx_uqpzwQZz, QUzIH))
                    _1bMM["Size"] = UDim2["new"](0, ScaleNotificationElement(QHDl0qO, QUzIH), 0, ScaleNotificationElement(I0bxlvMwp, QUzIH))
                    _1bMM["TextSize"] = ScaleNotificationElement(wmq1W1ZquzWuuz, QUzIH)
                end)
            end)
        end
        local function SetInvisibleCharacterState(HbQWlvDIZWw1HO, INzq1_NXDMUWvM)
            if HbQWlvDIZWw1HO == nil then
                return
            end
            RemoveInvisibleHighlight(HbQWlvDIZWw1HO)
            if not INzq1_NXDMUWvM then
                ClearInvisibleTag(HbQWlvDIZWw1HO)
                for N_XDubOq, _pqzZwnM_Zb in ipairs(bOWbmwXQDI_) do
                    if _pqzZwnM_Zb and _pqzZwnM_Zb["Parent"] then
                        pcall(function()
                            _pqzZwnM_Zb["Transparency"] = 0
                        end)
                    end
                end
                bOWbmwXQDI_ = {}
                return
            end
            bOWbmwXQDI_ = {}
            for WooHwWpoWuu, IU0nxI0 in ipairs(HbQWlvDIZWw1HO["GetDescendants"](HbQWlvDIZWw1HO)) do
                if IU0nxI0["IsA"](IU0nxI0, "BasePart") and IU0nxI0["Transparency"] == 0 then
                    bOWbmwXQDI_[#bOWbmwXQDI_ + 1] = IU0nxI0
                end
            end
            for vQb_N, I0QbNb in ipairs(bOWbmwXQDI_) do
                pcall(function()
                    I0QbNb["Transparency"] = OvMW11m
                end)
            end
            local pxZHN1oHO, lwN1up1UWH = pcall(function()
                return Instance["new"]("Highlight")
            end)
            if pxZHN1oHO and lwN1up1UWH then
                lwN1up1UWH["Name"] = "Bolong_Invis"
                lwN1up1UWH["Adornee"] = HbQWlvDIZWw1HO
                lwN1up1UWH["FillColor"] = Color3["fromRGB"](184, 106, 4)
                lwN1up1UWH["OutlineColor"] = Color3["fromRGB"](255, 255, 255)
                lwN1up1UWH["DepthMode"] = Enum["HighlightDepthMode"]["AlwaysOnTop"]
                lwN1up1UWH["FillTransparency"] = 1
                lwN1up1UWH["OutlineTransparency"] = 0
                lwN1up1UWH["Parent"] = HbQWlvDIZWw1HO
            end
            -- Removed PMHUB Billboard tag to prevent [ PMHUB ] overlay when Invisible mode is enabled.
        end
        local function HookInvisibleRemoteCalls()
            if QmzXUbUo_ then
                return
            end
            local oXZOoW0QXxn = pcall(function()
                local WowWZDovw
                WowWZDovw = hookmetamethod(game, "__namecall", function(uZMObWwx0DXwW, ...)
                    if checkcaller() then
                        return WowWZDovw(uZMObWwx0DXwW, ...)
                    end
                    if getnamecallmethod() ~= "FireServer" then
                        return WowWZDovw(uZMObWwx0DXwW, ...)
                    end
                    local bbZOONoZupx, lmozxoOZXIXb = pcall(function()
                        return uZMObWwx0DXwW["Name"]
                    end)
                    if not bbZOONoZupx or typeof(lmozxoOZXIXb) ~= "string" then
                        return WowWZDovw(uZMObWwx0DXwW, ...)
                    end
                    if string["lower"](lmozxoOZXIXb) ~= "updatecharacterlook" then
                        return WowWZDovw(uZMObWwx0DXwW, ...)
                    end
                    if not IHQqwuo then
                        if select("#", ...) == 5 then
                            local pwlDpl, qnu_uUD, wIwzv0pOXul, _Mu_1muMInnWpZ, owuHHMm = ...
                            if
                                typeof(pwlDpl) == "CFrame"
                                and typeof(qnu_uUD) == "CFrame"
                                and typeof(wIwzv0pOXul) == "CFrame"
                                and typeof(_Mu_1muMInnWpZ) == "CFrame"
                                and typeof(owuHHMm) == "CFrame"
                            then
                                BOqUMvbM = { pwlDpl, qnu_uUD, wIwzv0pOXul, _Mu_1muMInnWpZ, owuHHMm }
                            end
                        end
                        return WowWZDovw(uZMObWwx0DXwW, ...)
                    end
                    local q1WDwN = Q_qlzpNO1["Character"]
                    local OzNm1I0pq1Zxn = q1WDwN and q1WDwN["FindFirstChild"](q1WDwN, "HumanoidRootPart")
                    if OzNm1I0pq1Zxn == nil then
                        return WowWZDovw(uZMObWwx0DXwW, ...)
                    end
                    if select("#", ...) ~= 5 then
                        OHb1vzuuIMq1O = OHb1vzuuIMq1O + 1
                        return nil
                    end
                    local WouUnMxzo1qzHU = table["pack"](pcall(PrepareCharacterLookArguments, ...))
                    if not WouUnMxzo1qzHU[1] then
                        return WowWZDovw(uZMObWwx0DXwW, ...)
                    end
                    if Q_UqzWO1q1HWqm >= pzxvbZxUmoWmq then
                        return WowWZDovw(uZMObWwx0DXwW, table.unpack(WouUnMxzo1qzHU, 2, WouUnMxzo1qzHU["n"]))
                    end
                    local pqQzZZ1n = uZMObWwx0DXwW["FireServer"]
                    local HnWzzOvpWzw = false
                    if typeof(pqQzZZ1n) == "function" then
                        HnWzzOvpWzw = pcall(pqQzZZ1n, uZMObWwx0DXwW, table.unpack(WouUnMxzo1qzHU, 2, WouUnMxzo1qzHU["n"]))
                    end
                    if HnWzzOvpWzw then
                        Q_UqzWO1q1HWqm = 0
                        OUUunW0 = OUUunW0 + 1
                    else
                        Q_UqzWO1q1HWqm = Q_UqzWO1q1HWqm + 1
                    end
                    return nil
                end)
            end)
            if oXZOoW0QXxn then
                QmzXUbUo_ = true
            end
        end
        if not I1_zuNM_N then
            I1_zuNM_N = Q_qlzpNO1["CharacterAdded"]:Connect(function(QOlZlXxuIm_I1_)
                BOqUMvbM = nil
                if IHQqwuo then
                    task["spawn"](function()
                        task["wait"](1)
                        if IHQqwuo then
                            SetInvisibleCharacterState(QOlZlXxuIm_I1_, true)
                        end
                    end)
                end
            end)
        end
        HookInvisibleRemoteCalls()
        local function SetInvisibleEnabled(_pDI_UDlDOZ0)
            IHQqwuo = _pDI_UDlDOZ0
            VD["invisibleEnabled"] = _pDI_UDlDOZ0
            local DOHDo = Q_qlzpNO1["Character"]
            if _pDI_UDlDOZ0 then
                if DOHDo then
                    SetInvisibleCharacterState(DOHDo, true)
                end
                FireCharacterLookUpdate()
                QolwvD0XnWnzM:Notify("เปิดใช้งานระบบล่องหนแล้ว", 3)
            else
                if DOHDo then
                    SetInvisibleCharacterState(DOHDo, false)
                end
                QolwvD0XnWnzM["Notify"](QolwvD0XnWnzM, "ปิดใช้งานระบบล่องหนแล้ว", 3)
            end
        end
        local _1OUbnbM = getgenv()["VD"]
        local BQbNzUO_0uDlv = nil
        local function CreateInvisibleTool()
            if BQbNzUO_0uDlv then
                BQbNzUO_0uDlv["Destroy"](BQbNzUO_0uDlv)
            end
            local Ow0WoI = Q_qlzpNO1
            local ppQlQ = Ow0WoI["Character"]
            if not ppQlQ then
                return
            end
            local BNQwbU = ppQlQ["FindFirstChildWhichIsA"](ppQlQ, "Humanoid")
            local pb0QNQqxxvQN1 = Ow0WoI["FindFirstChildWhichIsA"](Ow0WoI, "Backpack")
            if not BNQwbU or not pb0QNQqxxvQN1 then
                return
            end
            local HDoUmqQZI = Instance["new"]("Tool")
            HDoUmqQZI["Name"] = "ไอเทม ช.ว"
            HDoUmqQZI["ToolTip"] = "ไอเทมพิเศษสำหรับการทดสอบ"
            HDoUmqQZI["RequiresHandle"] = false
            HDoUmqQZI["Parent"] = pb0QNQqxxvQN1
            BQbNzUO_0uDlv = HDoUmqQZI
            local uUv1ID0 = false
            local vbUpOxMQopoZq = nil
            local function HandleInvisibleToolInput()
                uUv1ID0 = false
                if vbUpOxMQopoZq then
                    vbUpOxMQopoZq["Stop"](vbUpOxMQopoZq)
                    vbUpOxMQopoZq = nil
                end
            end
            HDoUmqQZI["Equipped"]:Connect(function()
                uUv1ID0 = true
            end)
            HDoUmqQZI["Unequipped"]:Connect(HandleInvisibleToolInput)
            BNQwbU["Died"]:Connect(HandleInvisibleToolInput)
            task["spawn"](function()
                while task["wait"](0.1) do
                    if not _1OUbnbM["jerkToolEnabled"] or not uUv1ID0 then
                        if vbUpOxMQopoZq then
                            vbUpOxMQopoZq["Stop"](vbUpOxMQopoZq)
                        end
                        continue
                    end
                    local Q1bol = BNQwbU["RigType"] == Enum["HumanoidRigType"]["R15"]
                    if not vbUpOxMQopoZq then
                        local lIwDUzMZQ0QpQx = Instance["new"]("Animation")
                        lIwDUzMZQ0QpQx["AnimationId"] = not Q1bol and "rbxassetid://72042024" or "rbxassetid://698251653"
                        vbUpOxMQopoZq = BNQwbU["LoadAnimation"](BNQwbU, lIwDUzMZQ0QpQx)
                    end
                    vbUpOxMQopoZq["Play"](vbUpOxMQopoZq)
                    vbUpOxMQopoZq:AdjustSpeed(Q1bol and 0.7 or 0.65)
                    vbUpOxMQopoZq["TimePosition"] = 0.6
                    task["wait"](0.1)
                    while vbUpOxMQopoZq and vbUpOxMQopoZq["TimePosition"] < (not Q1bol and 0.65 or 0.7) do
                        task["wait"](0.1)
                    end
                    if vbUpOxMQopoZq then
                        vbUpOxMQopoZq["Stop"](vbUpOxMQopoZq)
                    end
                end
            end)
        end
        Q_qlzpNO1["CharacterAdded"]:Connect(function()
            task["wait"](1)
            if _1OUbnbM["jerkToolEnabled"] then
                CreateInvisibleTool()
            end
        end)
        local function NoclipFunction()
            local wQmbb = Q_qlzpNO1["Character"]
            if not wQmbb then
                return
            end
            pcall(function()
                local HDXW0HlMNq = wQmbb["FindFirstChild"](wQmbb, "Right Leg")
                if HDXW0HlMNq then
                    HDXW0HlMNq["Transparency"] = 1
                end
                local NqmMmwH = wQmbb["FindFirstChild"](wQmbb, "KorlessLegMesh")
                if NqmMmwH then
                    NqmMmwH["Destroy"](NqmMmwH)
                end
                if _1OUbnbM["korbloxLegEnabled"] and HDXW0HlMNq then
                    local OXwZ1bDnQW = Instance["new"]("MeshPart")
                    OXwZ1bDnQW["Name"] = "KorlessLegMesh"
                    OXwZ1bDnQW["Size"] = Vector3["new"](1.5, 1.5, 1.5)
                    OXwZ1bDnQW["CanCollide"] = false
                    OXwZ1bDnQW["MeshId"] = "rbxassetid://902942096"
                    OXwZ1bDnQW["TextureID"] = "rbxassetid://902843398"
                    OXwZ1bDnQW["CFrame"] = HDXW0HlMNq["CFrame"] * CFrame["new"](0, 0.5, 0)
                    OXwZ1bDnQW["Parent"] = wQmbb
                    local INZoz_qHxH = Instance["new"]("WeldConstraint")
                    INZoz_qHxH["Part0"] = HDXW0HlMNq
                    INZoz_qHxH["Part1"] = OXwZ1bDnQW
                    INZoz_qHxH["Parent"] = OXwZ1bDnQW
                end
            end)
        end
        local function CharacterFunction()
            local OXz0UHpZwHUo = Q_qlzpNO1["Character"]
            if not OXz0UHpZwHUo then
                return
            end
            pcall(function()
                local BbDxMvm1 = OXz0UHpZwHUo["FindFirstChild"](OXz0UHpZwHUo, "Right Leg")
                if BbDxMvm1 then
                    BbDxMvm1["Transparency"] = 0
                end
                local W0x0IbOZ = OXz0UHpZwHUo["FindFirstChild"](OXz0UHpZwHUo, "KorlessLegMesh")
                if W0x0IbOZ then
                    W0x0IbOZ["Destroy"](W0x0IbOZ)
                end
            end)
        end
        local function CharacterFunction2()
            local Wvon1DMOW = Q_qlzpNO1["Character"]
            if not Wvon1DMOW then
                return
            end
            pcall(function()
                local bbUuWNubMoZ = Wvon1DMOW["FindFirstChild"](Wvon1DMOW, "Head")
                if bbUuWNubMoZ then
                    bbUuWNubMoZ["Transparency"] = _1OUbnbM["headlessEnabled"] and 1 or 0
                    local _1wDXumlpzUHz = bbUuWNubMoZ["FindFirstChild"](bbUuWNubMoZ, "face")
                    if _1wDXumlpzUHz then
                        _1wDXumlpzUHz["Transparency"] = _1OUbnbM["headlessEnabled"] and 1 or 0
                    end
                end
            end)
        end
        local function CharacterFunction3()
            local BHuQo_qvx = Q_qlzpNO1["Character"]
            if not BHuQo_qvx then
                return
            end
            pcall(function()
                local _nvmoqMI1QU = BHuQo_qvx["FindFirstChild"](BHuQo_qvx, "Head")
                if _nvmoqMI1QU then
                    _nvmoqMI1QU["Transparency"] = 0
                    local ovzXwoOUu = _nvmoqMI1QU["FindFirstChild"](_nvmoqMI1QU, "face")
                    if ovzXwoOUu then
                        ovzXwoOUu["Transparency"] = 0
                    end
                end
            end)
        end
        Q_qlzpNO1["CharacterAdded"]:Connect(function()
            task["wait"](1)
            if _1OUbnbM["korbloxLegEnabled"] then
                NoclipFunction()
            end
            if _1OUbnbM["headlessEnabled"] then
                CharacterFunction2()
            end
        end)
        local function CharacterFunction4()
            if gethui then
                return gethui()
            end
            local qqlOvMDo, WUUxbW = pcall(function()
                return game["GetService"](game, "CoreGui")
            end)
            if qqlOvMDo and WUUxbW then
                return WUUxbW
            end
            return Q_qlzpNO1["FindFirstChild"](Q_qlzpNO1, "PlayerGui") or wxl1Uo1UbDnnb
        end
        local lUH0v_qHbXH = { ["PreciseDistanceEnabled"] = true, ["MaxDistance"] = 14 }
        local vwvnqNOwqZmqO = Instance["new"]("CylinderHandleAdornment")
        vwvnqNOwqZmqO["Name"] = "KYS_ParryRange"
        vwvnqNOwqZmqO["Radius"] = _1OUbnbM["SURV_ParryDistance"] or 8
        vwvnqNOwqZmqO["InnerRadius"] = math.max(0.1, (_1OUbnbM["SURV_ParryDistance"] or 8) - 0.15)
        vwvnqNOwqZmqO["Height"] = 0.01
        vwvnqNOwqZmqO["AlwaysOnTop"] = false
        vwvnqNOwqZmqO["Adornee"] = wxl1Uo1UbDnnb["FindFirstChildOfClass"](wxl1Uo1UbDnnb, "Terrain")
        vwvnqNOwqZmqO["Transparency"] = 1
        vwvnqNOwqZmqO["Parent"] = CharacterFunction4()
        local HxWNz1vZW0bNqN = CFrame["new"]()
        local function CharacterFunction5()
            if not _1OUbnbM["SURV_ShowParryCircle"] or not _1OUbnbM["SURV_AutoParry"] then
                vwvnqNOwqZmqO["Transparency"] = 1
                return
            end
            local _pX_QW0q_z = Q_qlzpNO1["Character"]
            local l1ouNbvNnM = _pX_QW0q_z and _pX_QW0q_z["FindFirstChild"](_pX_QW0q_z, "HumanoidRootPart")
            if not l1ouNbvNnM then
                vwvnqNOwqZmqO["Transparency"] = 1
                return
            end
            local _0mHll = lUH0v_qHbXH["PreciseDistanceEnabled"] and (_1OUbnbM["SURV_ParryDistance"] or 8) or lUH0v_qHbXH["MaxDistance"]
            vwvnqNOwqZmqO["Transparency"] = 0.05
            vwvnqNOwqZmqO["Radius"] = _0mHll
            vwvnqNOwqZmqO["InnerRadius"] = math.max(0.1, _0mHll - 0.13)
            local boO0NWXp = RaycastParams["new"]()
            boO0NWXp["FilterDescendantsInstances"] = { _pX_QW0q_z }
            boO0NWXp["FilterType"] = Enum["RaycastFilterType"]["Exclude"]
            local lHz_N = wxl1Uo1UbDnnb["Raycast"](wxl1Uo1UbDnnb, l1ouNbvNnM["Position"], Vector3["new"](0, -15, 0), boO0NWXp)
            local IzQXUXZZ = lHz_N and lHz_N["Position"] or (l1ouNbvNnM["Position"] - Vector3["new"](0, 3, 0))
            local bXMlN11M = CFrame["new"](IzQXUXZZ + Vector3["new"](0, 0.05, 0)) * CFrame["Angles"](math["pi"] / 2, 0, 0)
            HxWNz1vZW0bNqN = HxWNz1vZW0bNqN["Lerp"](HxWNz1vZW0bNqN, bXMlN11M, 0.3)
            vwvnqNOwqZmqO["CFrame"] = HxWNz1vZW0bNqN
        end
        WwNbnqHIQwppl["Heartbeat"]:Connect(function()
            if _1OUbnbM["SURV_ShowParryCircle"] and _1OUbnbM["SURV_AutoParry"] then
                if _1OUbnbM["SURV_ParryMode"] == "Aggressive" then
                    vwvnqNOwqZmqO["Color3"] = Color3["fromRGB"](255, 0, 80)
                else
                    vwvnqNOwqZmqO["Color3"] = Color3["fromRGB"](0, 230, 255)
                end
                CharacterFunction5()
            else
                vwvnqNOwqZmqO["Transparency"] = 1
            end
        end)
        getgenv()["SilentAimSettings"] = {
            ["Enabled"] = false,
            ["FovVisible"] = false,
            ["LaserEsp"] = true,
            ["TargetType"] = "Killer",
            ["FovRadius"] = 1000,
            ["Prediction"] = true,
            ["Damping"] = true,
        }
        local uMvUXlzW = getgenv()["SilentAimSettings"]
        local NQW1Z = {
            ["silentAimEnabled"] = false,
            ["silentAimFovVisible"] = false,
            ["laserEspEnabled"] = false,
            ["silentAimTarget"] = nil,
            ["silentAimLookVector"] = nil,
            ["silentAimPredictedPos"] = nil,
            ["silentAimTrackChar"] = nil,
            ["silentAimHistory"] = {},
            ["silentAimSmoothedVel"] = Vector3["new"](0, 0, 0),
            ["silentAimTargetVel"] = Vector3["new"](0, 0, 0),
            ["triggerLaser"] = false,
            ["currentMuzzlePos"] = nil,
            ["currentTargetPos"] = nil,
            ["FOVCircle"] = nil,
        }
        local qllwDXoxUZ = {}
        local function CharacterFunction6(w0nOMqI, Nq_0Wv, bbX1XvbQQZwx)
            qllwDXoxUZ[#qllwDXoxUZ + 1] = { ["name"] = w0nOMqI, ["interval"] = Nq_0Wv, ["timer"] = 0, ["fn"] = bbX1XvbQQZwx }
        end
        local function CharacterFunction7(BDzwlpM1IM1_Qb)
            if not BDzwlpM1IM1_Qb then
                return "survivor"
            end
            local BonDIDxUvb, MnbDx = pcall(function()
                return BDzwlpM1IM1_Qb["Team"] and BDzwlpM1IM1_Qb["Team"]["Name"]:lower() or ""
            end)
            return (BonDIDxUvb and MnbDx["find"](MnbDx, "killer")) and "killer" or "survivor"
        end
        local lwHwOlUpQvwI = {}
        local buInvw = 0
        local function AimbotFunction(WQwlD)
            if type(WQwlD) ~= "string" or WQwlD == "" then
                return false
            end
            local HuZ1vOvHX1QQ = WQwlD["lower"](WQwlD)
            if HuZ1vOvHX1QQ["find"](HuZ1vOvHX1QQ, "zombie") then
                return true
            end
            if HuZ1vOvHX1QQ == "scp" then
                return true
            end
            for pzHzl0nzvv = 1, 9 do
                if HuZ1vOvHX1QQ == ("scp" .. pzHzl0nzvv) or HuZ1vOvHX1QQ["find"](HuZ1vOvHX1QQ, "^scp%-" .. pzHzl0nzvv) then
                    return true
                end
            end
            return false
        end
        local function AimbotFunction2(bnIONHMvQD)
            local MMwWbmo1qznoz = bnIONHMvQD["PrimaryPart"]
            if not MMwWbmo1qznoz then
                local oZMObWWW = bnIONHMvQD["FindFirstChild"](bnIONHMvQD, "HumanoidRootPart")
                if oZMObWWW and oZMObWWW["IsA"](oZMObWWW, "BasePart") then
                    MMwWbmo1qznoz = oZMObWWW
                end
            end
            if not MMwWbmo1qznoz then
                for DIxM_QU1lOzDWW, uvpnNlwvN1 in ipairs(bnIONHMvQD["GetChildren"](bnIONHMvQD)) do
                    if uvpnNlwvN1["IsA"](uvpnNlwvN1, "BasePart") then
                        MMwWbmo1qznoz = uvpnNlwvN1
                        break
                    end
                end
            end
            return MMwWbmo1qznoz
        end
        local function AimbotFunction3()
            local WzMqWulmvD = {}
            for q_mU_, B1ooqDnUuUDQ in ipairs(WIDWH["GetPlayers"](WIDWH)) do
                if B1ooqDnUuUDQ["Character"] then
                    WzMqWulmvD[B1ooqDnUuUDQ["Character"]] = true
                end
            end
            local vnzDDMHWbQ = {}
            for lOzOou0mmqNm, Q0WMwHxWOq in ipairs(wxl1Uo1UbDnnb["GetDescendants"](wxl1Uo1UbDnnb)) do
                if Q0WMwHxWOq["IsA"](Q0WMwHxWOq, "Model") and not WzMqWulmvD[Q0WMwHxWOq] and AimbotFunction(Q0WMwHxWOq["Name"]) then
                    vnzDDMHWbQ[#vnzDDMHWbQ + 1] = Q0WMwHxWOq
                end
            end
            lwHwOlUpQvwI = vnzDDMHWbQ
            buInvw = tick()
        end
        do
            local function AimbotFunction4()
                local q0DpxvXvN_ = Instance["new"]("ScreenGui")
                q0DpxvXvN_["Name"] = "SilentAimFOV"
                q0DpxvXvN_["ResetOnSpawn"] = false
                q0DpxvXvN_["DisplayOrder"] = 999999
                pcall(function()
                    q0DpxvXvN_["Parent"] = CharacterFunction4()
                end)
                NQW1Z["FOVCircle"] = Instance["new"]("Frame")
                NQW1Z["FOVCircle"]["Size"] = UDim2["new"](0, uMvUXlzW["FovRadius"] * 2, 0, uMvUXlzW["FovRadius"] * 2)
                NQW1Z["FOVCircle"]["Position"] = UDim2["new"](0.5, 0, 0.5, 0)
                NQW1Z["FOVCircle"]["AnchorPoint"] = Vector2["new"](0.5, 0.5)
                NQW1Z["FOVCircle"]["BackgroundColor3"] = Color3["fromRGB"](255, 255, 255)
                NQW1Z["FOVCircle"]["BackgroundTransparency"] = 1
                NQW1Z["FOVCircle"]["Visible"] = false
                NQW1Z["FOVCircle"]["Parent"] = q0DpxvXvN_
                local lOvQxlHoNz_b = Instance["new"]("UICorner")
                lOvQxlHoNz_b["CornerRadius"] = UDim["new"](1, 0)
                lOvQxlHoNz_b["Parent"] = NQW1Z["FOVCircle"]
                local luv11DxOOM1U = Instance["new"]("UIStroke")
                luv11DxOOM1U["Color"] = Color3["fromRGB"](255, 255, 255)
                luv11DxOOM1U["Thickness"] = 2
                luv11DxOOM1U["Transparency"] = 0.2
                luv11DxOOM1U["Parent"] = NQW1Z["FOVCircle"]
            end
            AimbotFunction4()
            local function CharacterFunction8(qxnOD_Nu1)
                if not qxnOD_Nu1 then
                    return nil
                end
                local ovIXpZN = qxnOD_Nu1["FindFirstChild"](qxnOD_Nu1, "UpperTorso")
                if ovIXpZN and ovIXpZN["IsA"](ovIXpZN, "BasePart") then
                    return ovIXpZN["Position"]
                end
                local _oNxwXuovQQp = qxnOD_Nu1["FindFirstChild"](qxnOD_Nu1, "Torso")
                if _oNxwXuovQQp and _oNxwXuovQQp["IsA"](_oNxwXuovQQp, "BasePart") then
                    return _oNxwXuovQQp["Position"]
                end
                local N0plQm = qxnOD_Nu1["FindFirstChild"](qxnOD_Nu1, "HumanoidRootPart")
                if N0plQm then
                    return N0plQm["Position"]
                end
                return nil
            end
            local function CharacterFunction9()
                local Ow1Qo_ = Q_qlzpNO1["Character"]
                if not Ow1Qo_ then
                    return nil
                end
                local oMNoIvzMnI, wzxzwvNNlWoN = pcall(function()
                    return Ow1Qo_["FindFirstChild"](Ow1Qo_, "Twist of Fate"):FindFirstChild("Right Arm"):FindFirstChild("gun"):FindFirstChild("gun")
                end)
                if oMNoIvzMnI and wzxzwvNNlWoN and wzxzwvNNlWoN["IsA"](wzxzwvNNlWoN, "BasePart") then
                    return wzxzwvNNlWoN["Position"]
                end
                local vMopW_WZ = Ow1Qo_["FindFirstChild"](Ow1Qo_, "Right Arm") or Ow1Qo_["FindFirstChild"](Ow1Qo_, "RightHand")
                if vMopW_WZ then
                    return vMopW_WZ["Position"]
                end
                return nil
            end
            local MzHNb1 = oZzw1oZIXX_["WaitForChild"](oZzw1oZIXX_, "Remotes"):WaitForChild("Items"):WaitForChild("Twist of Fate"):WaitForChild("Fire")
            local oHUQowvl_X
            pcall(function()
                oHUQowvl_X = hookmetamethod(game, "__namecall", function(HWUoNDv, ...)
                    local DwzloW0z = getnamecallmethod()
                    if DwzloW0z == "FireServer" and rawequal(HWUoNDv, MzHNb1) then
                        local WpQWWM1QbnzHD1 = table["pack"](...)
                        if NQW1Z["silentAimEnabled"] and typeof(NQW1Z["silentAimLookVector"]) == "Vector3" then
                            if WpQWWM1QbnzHD1["n"] >= 3 and typeof(WpQWWM1QbnzHD1[3]) == "Vector3" then
                                WpQWWM1QbnzHD1[3] = NQW1Z["silentAimLookVector"]
                                if NQW1Z["laserEspEnabled"] then
                                    NQW1Z["triggerLaser"] = true
                                end
                            elseif WpQWWM1QbnzHD1["n"] >= 2 and typeof(WpQWWM1QbnzHD1[2]) == "Vector3" then
                                WpQWWM1QbnzHD1[2] = NQW1Z["silentAimLookVector"]
                                if NQW1Z["laserEspEnabled"] then
                                    NQW1Z["triggerLaser"] = true
                                end
                            end
                        end
                        return oHUQowvl_X(HWUoNDv, table.unpack(WpQWWM1QbnzHD1, 1, WpQWWM1QbnzHD1["n"]))
                    end
                    return oHUQowvl_X(HWUoNDv, ...)
                end)
            end)
            CharacterFunction6("UpdateSilentAimTarget", 0.15, function()
                NQW1Z["silentAimEnabled"] = uMvUXlzW["Enabled"]
                NQW1Z["silentAimFovVisible"] = uMvUXlzW["FovVisible"]
                NQW1Z["laserEspEnabled"] = uMvUXlzW["LaserEsp"]
                if NQW1Z["FOVCircle"] then
                    NQW1Z["FOVCircle"]["Visible"] = NQW1Z["silentAimFovVisible"]
                    local DwH1bbDxIOIX_0 = uMvUXlzW["FovRadius"] * 2
                    if NQW1Z["FOVCircle"]["Size"]["X"]["Offset"] ~= DwH1bbDxIOIX_0 then
                        NQW1Z["FOVCircle"]["Size"] = UDim2["new"](0, DwH1bbDxIOIX_0, 0, DwH1bbDxIOIX_0)
                    end
                end
                if not NQW1Z["silentAimEnabled"] then
                    NQW1Z["silentAimTarget"] = nil
                    NQW1Z["silentAimLookVector"] = nil
                    NQW1Z["silentAimPredictedPos"] = nil
                    NQW1Z["silentAimTrackChar"] = nil
                    NQW1Z["silentAimHistory"] = {}
                    return
                end
                local lMxb0lmX = Q_qlzpNO1["Character"]
                if not lMxb0lmX then
                    return
                end
                local WpoDlZ_lH_WbWH = lMxb0lmX["FindFirstChild"](lMxb0lmX, "HumanoidRootPart")
                if not WpoDlZ_lH_WbWH then
                    return
                end
                if not oZubzuHwUUDMv then
                    return
                end
                local bouO0Xqxz0bIv = nil
                local O1pbObDIDNw = math["huge"]
                local pXnUZzIOxXmlwl = nil
                local bbln0DvNwWnxX = uMvUXlzW["TargetType"] or "Killer"
                if bbln0DvNwWnxX == "Zombie" then
                    if tick() - buInvw > 2.0 then
                        AimbotFunction3()
                    end
                    for vmWUbOvvvlQ = 1, #lwHwOlUpQvwI do
                        local lOoWDvbxIMn_z = lwHwOlUpQvwI[vmWUbOvvvlQ]
                        if lOoWDvbxIMn_z and lOoWDvbxIMn_z["Parent"] then
                            local wnNDn = AimbotFunction2(lOoWDvbxIMn_z)
                            if wnNDn then
                                local WDOluZ1HuIbn = wnNDn["Position"]
                                local Bu1noZQonx = (WDOluZ1HuIbn - WpoDlZ_lH_WbWH["Position"])["Magnitude"]
                                if Bu1noZQonx < O1pbObDIDNw then
                                    O1pbObDIDNw = Bu1noZQonx
                                    bouO0Xqxz0bIv = WDOluZ1HuIbn
                                    pXnUZzIOxXmlwl = lOoWDvbxIMn_z
                                end
                            end
                        end
                    end
                else
                    for BNnZWOH_ZqNnMp, qlUWQlzlZ in ipairs(WIDWH["GetPlayers"](WIDWH)) do
                        if qlUWQlzlZ ~= Q_qlzpNO1 then
                            if bbln0DvNwWnxX == "Killer" and CharacterFunction7(qlUWQlzlZ) ~= "killer" then
                                continue
                            end
                            if bbln0DvNwWnxX == "Survivor" and CharacterFunction7(qlUWQlzlZ) ~= "survivor" then
                                continue
                            end
                            local _wpZN1 = qlUWQlzlZ["Character"]
                            if _wpZN1 then
                                local IHWWI = _wpZN1["FindFirstChildOfClass"](_wpZN1, "Humanoid")
                                local Q1nluoH = CharacterFunction8(_wpZN1)
                                if IHWWI and IHWWI["Health"] > 0 and typeof(Q1nluoH) == "Vector3" then
                                    local b_UqwUnOHHO1Q = (Q1nluoH - WpoDlZ_lH_WbWH["Position"])["Magnitude"]
                                    if b_UqwUnOHHO1Q < O1pbObDIDNw then
                                        O1pbObDIDNw = b_UqwUnOHHO1Q
                                        bouO0Xqxz0bIv = Q1nluoH
                                        pXnUZzIOxXmlwl = _wpZN1
                                    end
                                end
                            end
                        end
                    end
                end
                local ONwvqIwupX = tick()
                local BvZlDuOINxZm = NQW1Z["silentAimSmoothedVel"]
                if typeof(BvZlDuOINxZm) ~= "Vector3" then
                    BvZlDuOINxZm = Vector3["new"](0, 0, 0)
                end
                if typeof(bouO0Xqxz0bIv) == "Vector3" then
                    if NQW1Z["silentAimTrackChar"] ~= pXnUZzIOxXmlwl then
                        NQW1Z["silentAimTrackChar"] = pXnUZzIOxXmlwl
                        NQW1Z["silentAimHistory"] = {}
                        BvZlDuOINxZm = Vector3["new"](0, 0, 0)
                    end
                    local DoQqxMqUD = NQW1Z["silentAimHistory"]
                    table.insert(DoQqxMqUD, { ["pos"] = bouO0Xqxz0bIv, ["t"] = ONwvqIwupX })
                    while #DoQqxMqUD > 1 and DoQqxMqUD[1]["t"] < ONwvqIwupX - 0.4 do
                        table.remove(DoQqxMqUD, 1)
                    end
                    if #DoQqxMqUD >= 2 then
                        local Dmn1HI = DoQqxMqUD[#DoQqxMqUD - 1]
                        local _nWxXQQ1Nou = DoQqxMqUD[#DoQqxMqUD]
                        local MZWDqDv = _nWxXQQ1Nou["t"] - Dmn1HI["t"]
                        if MZWDqDv > 0.001 then
                            local BmHvzq = (_nWxXQQ1Nou["pos"] - Dmn1HI["pos"]) / MZWDqDv
                            local wvoHnpWoZO = Vector3["new"](BmHvzq["X"], 0, BmHvzq["Z"])
                            local luNOobnnlzX = pXnUZzIOxXmlwl and pXnUZzIOxXmlwl["FindFirstChild"](pXnUZzIOxXmlwl, "HumanoidRootPart")
                            if luNOobnnlzX and luNOobnnlzX["IsA"](luNOobnnlzX, "BasePart") then
                                local llOHuWDnWQ, uUwZ_xp_0Q = pcall(function()
                                    return luNOobnnlzX["AssemblyLinearVelocity"]
                                end)
                                if llOHuWDnWQ and typeof(uUwZ_xp_0Q) == "Vector3" then
                                    local qXqDo1WqbO = Vector3["new"](uUwZ_xp_0Q["X"], 0, uUwZ_xp_0Q["Z"])
                                    if qXqDo1WqbO["Magnitude"] > 0.5 and qXqDo1WqbO["Magnitude"] < 100 then
                                        wvoHnpWoZO = wvoHnpWoZO["Lerp"](wvoHnpWoZO, qXqDo1WqbO, 0.5)
                                    end
                                end
                            end
                            if wvoHnpWoZO["Magnitude"] > 65 then
                                wvoHnpWoZO = wvoHnpWoZO["Unit"] * 65
                            end
                            if uMvUXlzW["Damping"] and BvZlDuOINxZm["Magnitude"] > 2 and wvoHnpWoZO["Magnitude"] > 2 then
                                if BvZlDuOINxZm["Dot"](BvZlDuOINxZm, wvoHnpWoZO) / (BvZlDuOINxZm["Magnitude"] * wvoHnpWoZO["Magnitude"]) < 0 then
                                    wvoHnpWoZO = wvoHnpWoZO * 0.7
                                end
                            end
                            BvZlDuOINxZm = BvZlDuOINxZm["Lerp"](BvZlDuOINxZm, wvoHnpWoZO, 0.45)
                        end
                    end
                    local u1vDONboQX = Vector3["new"](BvZlDuOINxZm["X"], 0, BvZlDuOINxZm["Z"])
                    if u1vDONboQX["Magnitude"] > 65 then
                        u1vDONboQX = u1vDONboQX["Unit"] * 65
                    end
                    BvZlDuOINxZm = u1vDONboQX
                else
                    NQW1Z["silentAimTrackChar"] = nil
                    NQW1Z["silentAimHistory"] = {}
                    BvZlDuOINxZm = Vector3["new"](0, 0, 0)
                end
                NQW1Z["silentAimTargetVel"] = BvZlDuOINxZm
                NQW1Z["silentAimSmoothedVel"] = BvZlDuOINxZm
                if typeof(bouO0Xqxz0bIv) == "Vector3" then
                    local wnvbWH = bouO0Xqxz0bIv
                    if typeof(wnvbWH) == "Vector3" then
                        local lUun1_Dx = true
                        local Hwl_Hm, N_NlN00Ip = oZubzuHwUUDMv["WorldToViewportPoint"](oZubzuHwUUDMv, wnvbWH)
                        if N_NlN00Ip then
                            local MHUWzq0pUqQ = Vector2["new"](oZubzuHwUUDMv["ViewportSize"]["X"] / 2, oZubzuHwUUDMv["ViewportSize"]["Y"] / 2)
                            local bXXpODXmvHQz = (Vector2["new"](Hwl_Hm["X"], Hwl_Hm["Y"]) - MHUWzq0pUqQ)["Magnitude"]
                            if bXXpODXmvHQz > uMvUXlzW["FovRadius"] then
                                lUun1_Dx = false
                            end
                        else
                            lUun1_Dx = false
                        end
                        if lUun1_Dx then
                            local wUDDuDxD0nW = CharacterFunction9()
                            if typeof(wUDDuDxD0nW) ~= "Vector3" then
                                wUDDuDxD0nW = oZubzuHwUUDMv["CFrame"]["Position"]
                            end
                            local uuuwIXU = wnvbWH - Vector3["new"](0, 1.2, 0)
                            local Wqbnz = uuuwIXU - wUDDuDxD0nW
                            local HM_oDxzuDQD = Wqbnz["Magnitude"]
                            if HM_oDxzuDQD > 0.1 then
                                local N0NIuWwH_wNxoM = uuuwIXU
                                if uMvUXlzW["Prediction"] then
                                    local BHpoNI = NQW1Z["silentAimSmoothedVel"]
                                    local vq0m0XHpQwO = 0.1
                                    local qQ1qzXuWmH = HM_oDxzuDQD / 200 + vq0m0XHpQwO
                                    N0NIuWwH_wNxoM = uuuwIXU + BHpoNI * qQ1qzXuWmH
                                    local Ion_xqbOQp = N0NIuWwH_wNxoM - wUDDuDxD0nW
                                    if Ion_xqbOQp["Magnitude"] > 0.1 then
                                        qQ1qzXuWmH = Ion_xqbOQp["Magnitude"] / 200 + vq0m0XHpQwO
                                        N0NIuWwH_wNxoM = uuuwIXU + BHpoNI * qQ1qzXuWmH
                                    end
                                    NQW1Z["silentAimPredictedPos"] = N0NIuWwH_wNxoM
                                else
                                    NQW1Z["silentAimPredictedPos"] = nil
                                end
                                local wv1qz0UObXOvX = N0NIuWwH_wNxoM - wUDDuDxD0nW
                                local _MZu_MDMn = wv1qz0UObXOvX["Magnitude"]
                                if _MZu_MDMn > 0.1 then
                                    NQW1Z["silentAimTarget"] = wnvbWH
                                    NQW1Z["silentAimLookVector"] = Vector3["new"](wv1qz0UObXOvX["X"] / _MZu_MDMn, wv1qz0UObXOvX["Y"] / _MZu_MDMn, wv1qz0UObXOvX["Z"] / _MZu_MDMn)
                                    NQW1Z["currentMuzzlePos"] = wUDDuDxD0nW
                                    NQW1Z["currentTargetPos"] = N0NIuWwH_wNxoM
                                else
                                    NQW1Z["silentAimTarget"] = nil
                                    NQW1Z["silentAimLookVector"] = nil
                                end
                            else
                                NQW1Z["silentAimTarget"] = nil
                                NQW1Z["silentAimLookVector"] = nil
                            end
                        else
                            NQW1Z["silentAimTarget"] = nil
                            NQW1Z["silentAimLookVector"] = nil
                        end
                    else
                        NQW1Z["silentAimTarget"] = nil
                        NQW1Z["silentAimLookVector"] = nil
                    end
                else
                    NQW1Z["silentAimTarget"] = nil
                    NQW1Z["silentAimLookVector"] = nil
                end
            end)
            CharacterFunction6("DrawLaserESP", 0, function()
                if not NQW1Z["triggerLaser"] then
                    return
                end
                NQW1Z["triggerLaser"] = false
                local lQWqWxpwDbpUmq = NQW1Z["currentMuzzlePos"]
                local O_pXqlOIzMm = NQW1Z["currentTargetPos"]
                if typeof(lQWqWxpwDbpUmq) ~= "Vector3" or typeof(O_pXqlOIzMm) ~= "Vector3" then
                    return
                end
                local OQlMXzN1H = (lQWqWxpwDbpUmq - O_pXqlOIzMm)["Magnitude"]
                if OQlMXzN1H < 0.1 then
                    return
                end
                local wnwpDz_QQ = Instance["new"]("Part")
                wnwpDz_QQ["Name"] = "SilentLaser"
                wnwpDz_QQ["Anchored"] = true
                wnwpDz_QQ["CanCollide"] = false
                wnwpDz_QQ["Material"] = Enum["Material"]["Neon"]
                wnwpDz_QQ["Color"] = Color3["fromRGB"](255, 0, 0)
                wnwpDz_QQ["Transparency"] = 0.3
                wnwpDz_QQ["Size"] = Vector3["new"](0.15, 0.15, OQlMXzN1H)
                wnwpDz_QQ["CFrame"] = CFrame["new"](lQWqWxpwDbpUmq, O_pXqlOIzMm) * CFrame["new"](0, 0, -OQlMXzN1H / 2)
                wnwpDz_QQ["Parent"] = wxl1Uo1UbDnnb
                task["delay"](0.4, function()
                    if wnwpDz_QQ then
                        wnwpDz_QQ["Destroy"](wnwpDz_QQ)
                    end
                end)
            end)
        end
        WwNbnqHIQwppl["Heartbeat"]:Connect(function(W_llDxU)
            for lowowIIUOq = 1, #qllwDXoxUZ do
                local q_oHbuMD1zMZ = qllwDXoxUZ[lowowIIUOq]
                q_oHbuMD1zMZ["timer"] = q_oHbuMD1zMZ["timer"] + W_llDxU
                if q_oHbuMD1zMZ["timer"] >= q_oHbuMD1zMZ["interval"] then
                    q_oHbuMD1zMZ["timer"] = 0
                    q_oHbuMD1zMZ["fn"](W_llDxU)
                end
            end
        end)
        local MbnHqZNZxQUUq = {
            ["rbxassetid://113255068724446"] = true,
            ["rbxassetid://74968262036854"] = true,
            ["rbxassetid://110355011987939"] = true,
            ["rbxassetid://139369275981139"] = true,
            ["rbxassetid://132817836308238"] = true,
            ["rbxassetid://129784271201071"] = true,
            ["rbxassetid://133963973694098"] = true,
            ["rbxassetid://117042998468241"] = true,
            ["rbxassetid://105374834496520"] = true,
            ["rbxassetid://111920872708571"] = true,
            ["rbxassetid://78432063483146"] = true,
            ["rbxassetid://118907603246885"] = true,
            ["rbxassetid://138720291317243"] = true,
            ["rbxassetid://115244153053858"] = true,
            ["rbxassetid://130593238885843"] = true,
            ["rbxassetid://122812055447896"] = true,
            ["rbxassetid://78935059863801"] = true,
            ["rbxassetid://135002183282873"] = true,
            ["rbxassetid://121216847022485"] = true,
            ["rbxassetid://82666958311998"] = true,
            ["rbxassetid://106871536134254"] = true,
            ["rbxassetid://109402730355822"] = true,
            ["rbxassetid://117070354890871"] = true,
        }
        -- Hybrid Parry: รองรับ AnimationId ที่เกมคืนมาในรูปแบบ URL/ตัวเลขต่างกัน
        local MbnHqZNZxQUUqNumeric = {}
        for animationId in pairs(MbnHqZNZxQUUq) do
            local numericId = tostring(animationId):match("%d+")
            if numericId then
                MbnHqZNZxQUUqNumeric[numericId] = true
            end
        end
        local u1HbQDX1lwNUID = { ["ParryCooldown"] = false, ["ParryCooldownThread"] = nil, ["LastAttempt"] = 0 }
        local O0IzvNmnD = {}
        local function UIFunction(DDvlQ)
            return DDvlQ["Team"] and DDvlQ["Team"]["Name"] == "Killer"
        end
        local function UIFunction2(Wv_zn1MHmb0p)
            local IZzo1unWDQOOm = Wv_zn1MHmb0p and Wv_zn1MHmb0p["FindFirstChild"](Wv_zn1MHmb0p, "HumanoidRootPart")
            if not IZzo1unWDQOOm then
                return true
            end
            local uoZQI0mMuNwI = Wv_zn1MHmb0p["GetAttribute"](Wv_zn1MHmb0p, "State")
            return uoZQI0mMuNwI == "Downed" or uoZQI0mMuNwI == "Dead"
        end
        local function UIFunction3(MNznpxuvW1)
            return not UIFunction2(MNznpxuvW1)
        end
        local function UIFunction4()
            local pwlU_ZON_ = Q_qlzpNO1["FindFirstChild"](Q_qlzpNO1, "PlayerGui")
            if not pwlU_ZON_ then
                return
            end
            local QloXw_mxwH = pwlU_ZON_["FindFirstChild"](pwlU_ZON_, "Survivor-mob")
            local BOx1nx_MWHUp = QloXw_mxwH and QloXw_mxwH["FindFirstChild"](QloXw_mxwH, "Controls") and QloXw_mxwH["Controls"]:FindFirstChild("Gui-mob")
            if BOx1nx_MWHUp and BOx1nx_MWHUp["Visible"] then
                if firesignal then
                    pcall(function()
                        firesignal(BOx1nx_MWHUp["MouseButton1Down"])
                        task["wait"](0.01)
                        firesignal(BOx1nx_MWHUp["MouseButton1Up"])
                    end)
                end
            else
                pcall(function()
                    if mouse2click then
                        mouse2click()
                        return
                    end
                    if mouse2press and mouse2release then
                        mouse2press()
                        task["wait"](0.01)
                        mouse2release()
                        return
                    end
                    QlMQp["SendMouseButtonEvent"](QlMQp, 0, 0, 1, true, game, 0)
                    task["wait"](0.01)
                    QlMQp:SendMouseButtonEvent(0, 0, 1, false, game, 0)
                end)
            end
        end
        local function CharacterFunction10()
            if u1HbQDX1lwNUID["ParryCooldown"] then
                return
            end
            -- ป้องกันการเรียกซ้ำถี่เกินไปก่อนที่ parryResult จะตอบกลับ
            local now = os.clock()
            if now - (u1HbQDX1lwNUID["LastAttempt"] or 0) < 0.15 then
                return
            end
            u1HbQDX1lwNUID["LastAttempt"] = now
            pcall(function()
                local remotes = oZzw1oZIXX_["FindFirstChild"](oZzw1oZIXX_, "Remotes")
                local items = remotes and remotes["FindFirstChild"](remotes, "Items")
                local dagger = items and items["FindFirstChild"](items, "Parrying Dagger")
                local parryRemote = dagger and dagger["FindFirstChild"](dagger, "parry")
                if parryRemote then
                    -- ส่งคำขอ Parry 5 ครั้งเพื่อเพิ่มโอกาสรับคำขอ โดยยังไม่รัวเท่าแบบ 10 ครั้ง
                    for _ = 1, 5 do
                        parryRemote["FireServer"](parryRemote)
                        task["wait"](0.015)
                    end
                end
            end)
            pcall(function()
                task["spawn"](UIFunction4)
            end)
        end
        task["spawn"](function()
            pcall(function()
                local lzMZbx = oZzw1oZIXX_["WaitForChild"](oZzw1oZIXX_, "Remotes", 5)
                local HwnWHIpxUvouM0 = lzMZbx and lzMZbx["WaitForChild"](lzMZbx, "Items", 5):WaitForChild("Parrying Dagger", 5)
                local BpOuvIHlQIZQQW = HwnWHIpxUvouM0 and HwnWHIpxUvouM0["WaitForChild"](HwnWHIpxUvouM0, "parryResult", 5)
                if BpOuvIHlQIZQQW then
                    BpOuvIHlQIZQQW["OnClientEvent"]:Connect(function(_onZ0MU0MUNovv, QxOQ11__I)
                        local Q1xl1Ww_ = tonumber(QxOQ11__I) or ((_onZ0MU0MUNovv == true) and 90 or 60)
                        u1HbQDX1lwNUID["ParryCooldown"] = true
                        if u1HbQDX1lwNUID["ParryCooldownThread"] then
                            task["cancel"](u1HbQDX1lwNUID["ParryCooldownThread"])
                        end
                        u1HbQDX1lwNUID["ParryCooldownThread"] = task["delay"](Q1xl1Ww_, function()
                            u1HbQDX1lwNUID["ParryCooldown"] = false
                        end)
                    end)
                end
            end)
        end)
        local function AnimationFunction(QooQWMQzzUINb)
            if not QooQWMQzzUINb or O0IzvNmnD[QooQWMQzzUINb] then
                return
            end
            O0IzvNmnD[QooQWMQzzUINb] = true
            local qzIwvp0qZW = QooQWMQzzUINb["FindFirstChild"](QooQWMQzzUINb, "Humanoid")
            if not qzIwvp0qZW then
                qzIwvp0qZW = QooQWMQzzUINb["WaitForChild"](QooQWMQzzUINb, "Humanoid", 5)
                if not qzIwvp0qZW then
                    return
                end
            end
            local oQqDI = qzIwvp0qZW["FindFirstChildOfClass"](qzIwvp0qZW, "Animator")
            if not oQqDI then
                oQqDI = qzIwvp0qZW["WaitForChild"](qzIwvp0qZW, "Animator", 5)
                if not oQqDI then
                    return
                end
            end
            qzIwvp0qZW["ChildAdded"]:Connect(function(NMI01wq)
                if NMI01wq["IsA"](NMI01wq, "Animator") then
                    O0IzvNmnD[QooQWMQzzUINb] = nil
                    AnimationFunction(QooQWMQzzUINb)
                end
            end)
            QooQWMQzzUINb["AncestryChanged"]:Connect(function(QNvbnlnq, QZpqQmZZ)
                if not QZpqQmZZ then
                    O0IzvNmnD[QooQWMQzzUINb] = nil
                end
            end)
            oQqDI["AnimationPlayed"]:Connect(function(W0UUQplOQx)
                local _QuUMwunbZmmOZ = W0UUQplOQx["Animation"] and W0UUQplOQx["Animation"]["AnimationId"] or ""
                local normalizedAnimationId = tostring(_QuUMwunbZmmOZ):match("%d+")
                local QHQDIM = MbnHqZNZxQUUq[_QuUMwunbZmmOZ] or MbnHqZNZxQUUqNumeric[normalizedAnimationId]
                if not QHQDIM then
                    return
                end
                if not _1OUbnbM["SURV_AutoParry"] then
                    return
                end
                if u1HbQDX1lwNUID["ParryCooldown"] then
                    return
                end
                local wvppmNwnl = Q_qlzpNO1["Character"]
                if UIFunction2(wvppmNwnl) or not UIFunction3(wvppmNwnl) then
                    return
                end
                local QvzxNXxpvz1xIl = wvppmNwnl and wvppmNwnl["FindFirstChild"](wvppmNwnl, "HumanoidRootPart")
                local BIHMuUqlu = QooQWMQzzUINb["FindFirstChild"](QooQWMQzzUINb, "HumanoidRootPart")
                if not QvzxNXxpvz1xIl or not BIHMuUqlu then
                    return
                end
                local wouXU0pmoxnM = QvzxNXxpvz1xIl["Position"] - BIHMuUqlu["Position"]
                local _QwII1HZv = wouXU0pmoxnM["Magnitude"]
                if _1OUbnbM["SURV_ParryMode"] == "Aggressive" then
                    local _Zzxu1HnW1M01 = 12
                    local vHDH1WZ = (_1OUbnbM["SURV_ParryDistance"] or 8) + 5
                    if _QwII1HZv > vHDH1WZ then
                        return
                    end
                    if _QwII1HZv <= _Zzxu1HnW1M01 then
                        CharacterFunction10()
                    else
                        local vlpxWHvIXnm0o
                        local O0xmzNXpWX = os["clock"]()
                        vlpxWHvIXnm0o = WwNbnqHIQwppl["Heartbeat"]:Connect(function()
                            if os["clock"]() - O0xmzNXpWX >= 1.5 or u1HbQDX1lwNUID["ParryCooldown"] or not QvzxNXxpvz1xIl or not BIHMuUqlu or UIFunction2(wvppmNwnl) then
                                if vlpxWHvIXnm0o then
                                    vlpxWHvIXnm0o["Disconnect"](vlpxWHvIXnm0o)
                                end
                                return
                            end
                            local w00mDUQ0IMOp = (QvzxNXxpvz1xIl["Position"] - BIHMuUqlu["Position"])["Magnitude"]
                            if w00mDUQ0IMOp <= _Zzxu1HnW1M01 then
                                CharacterFunction10()
                                if vlpxWHvIXnm0o then
                                    vlpxWHvIXnm0o["Disconnect"](vlpxWHvIXnm0o)
                                end
                            end
                        end)
                    end
                elseif _1OUbnbM["SURV_ParryMode"] == "Normal" then
                    if _QwII1HZv > (_1OUbnbM["SURV_ParryDistance"] or 8) then
                        return
                    end
                    local woOlvmmpUNzb = Vector3["new"](QvzxNXxpvz1xIl["Position"]["X"], 0, QvzxNXxpvz1xIl["Position"]["Z"])
                    local N0qWznpz = Vector3["new"](BIHMuUqlu["Position"]["X"], 0, BIHMuUqlu["Position"]["Z"])
                    local OWUOlZvXu = woOlvmmpUNzb - N0qWznpz
                    if OWUOlZvXu["Magnitude"] > 0 then
                        local IXDu0w_l0zx = OWUOlZvXu["Unit"]
                        local B_ZHoN_ZnwxbI = Vector3["new"](BIHMuUqlu["CFrame"]["LookVector"]["X"], 0, BIHMuUqlu["CFrame"]["LookVector"]["Z"])["Unit"]
                        local WzpvN = B_ZHoN_ZnwxbI["Dot"](B_ZHoN_ZnwxbI, IXDu0w_l0zx)
                        if WzpvN < 0.6 then
                            return
                        end
                    end
                    CharacterFunction10()
                end
            end)
        end
        local function CharacterFunction11(Do_HNmvMHUu0p)
            if Do_HNmvMHUu0p ~= Q_qlzpNO1 and UIFunction(Do_HNmvMHUu0p) and Do_HNmvMHUu0p["Character"] then
                AnimationFunction(Do_HNmvMHUu0p["Character"])
            end
        end
        local function CharacterFunction12(_pbUmIIDwpzxNQ)
            if _pbUmIIDwpzxNQ == Q_qlzpNO1 then
                return
            end
            _pbUmIIDwpzxNQ["CharacterAdded"]:Connect(function()
                CharacterFunction11(_pbUmIIDwpzxNQ)
            end)
            _pbUmIIDwpzxNQ:GetPropertyChangedSignal("Team"):Connect(function()
                CharacterFunction11(_pbUmIIDwpzxNQ)
            end)
            if _pbUmIIDwpzxNQ["Character"] then
                CharacterFunction11(_pbUmIIDwpzxNQ)
            end
        end
        for HZM_ZZN__WoM, qDDIvwWq0olN in pairs(WIDWH["GetPlayers"](WIDWH)) do
            CharacterFunction12(qDDIvwWq0olN)
        end
        WIDWH["PlayerAdded"]:Connect(CharacterFunction12)
        local MOonQqqp = Q_qlzpNO1["WaitForChild"](Q_qlzpNO1, "PlayerGui")
        local qNX0b = {
            ["LastGoalRotation"] = nil,
            ["HasClickedThisGoal"] = false,
            ["LastLineRotation"] = nil,
            ["LastTick"] = nil,
            ["WasActive"] = false,
            ["PerfectLastGoalRotation"] = nil,
            ["PerfectHasClickedThisGoal"] = nil,
            ["PerfectLastLineRotation"] = nil,
            ["PerfectLastTick"] = nil,
            ["PerfectWasActive"] = false,
            ["InstantHasClicked"] = false,
        }
        local function UIFunction5()
            local qImMu_1NOzw_I = M_QbbvZ0IU["TouchEnabled"] and not M_QbbvZ0IU["KeyboardEnabled"]
            if qImMu_1NOzw_I then
                local QHwWm0OnOU = MOonQqqp["FindFirstChild"](MOonQqqp, "check", true)
                if QHwWm0OnOU and QHwWm0OnOU["IsA"](QHwWm0OnOU, "GuiObject") then
                    local WmXqwW = QHwWm0OnOU["AbsolutePosition"]
                    local vxlboMxwp = QHwWm0OnOU["AbsoluteSize"]
                    local vbIzuMOHXXNOM0 = pumZMHmIxqDun["GetGuiInset"](pumZMHmIxqDun)
                    local DNUIUW_ = WmXqwW["X"] + (vxlboMxwp["X"] / 2) + vbIzuMOHXXNOM0["X"]
                    local pbU1bn_mOU = WmXqwW["Y"] + (vxlboMxwp["Y"] / 2) + vbIzuMOHXXNOM0["Y"]
                    pcall(function()
                        QlMQp:SendTouchEvent(8822, Enum["UserInputState"]["Begin"]["Value"], DNUIUW_, pbU1bn_mOU)
                    end)
                    task["wait"](0.01)
                    pcall(function()
                        QlMQp:SendTouchEvent(8822, Enum["UserInputState"]["End"]["Value"], DNUIUW_, pbU1bn_mOU)
                    end)
                    pcall(function()
                        if firesignal and QHwWm0OnOU["MouseButton1Click"] then
                            firesignal(QHwWm0OnOU["MouseButton1Click"])
                        end
                    end)
                end
            else
                pcall(function()
                    QlMQp:SendKeyEvent(true, Enum["KeyCode"]["Space"], false, game)
                end)
                task["wait"](0.01)
                pcall(function()
                    QlMQp:SendKeyEvent(false, Enum["KeyCode"]["Space"], false, game)
                end)
            end
        end
        local function SystemFunction()
            for I1bHUxmqIZuH, qNWuI in ipairs({ "SkillCheckPromptGui", "SkillCheckPromptGui-con" }) do
                local HqmpUmooXm = MOonQqqp["FindFirstChild"](MOonQqqp, qNWuI, true)
                if HqmpUmooXm then
                    local QDDo0MpxnpU = HqmpUmooXm["FindFirstChild"](HqmpUmooXm, "Check", true)
                    if QDDo0MpxnpU and QDDo0MpxnpU["Visible"] then
                        local lNpZoMqI = QDDo0MpxnpU["FindFirstChild"](QDDo0MpxnpU, "Line", true)
                        local u1WpxZHqqzmOl = QDDo0MpxnpU["FindFirstChild"](QDDo0MpxnpU, "Goal", true)
                        if lNpZoMqI and u1WpxZHqqzmOl then
                            return lNpZoMqI, u1WpxZHqqzmOl
                        end
                    end
                end
            end
        end
        local function SystemFunction2(OQOXwb1, Hz_NHmn0XnI_HQ)
            local HZ_XnNWWU = Hz_NHmn0XnI_HQ - OQOXwb1
            if HZ_XnNWWU > 180 then
                HZ_XnNWWU = HZ_XnNWWU - 360
            end
            if HZ_XnNWWU < -180 then
                HZ_XnNWWU = HZ_XnNWWU + 360
            end
            return HZ_XnNWWU
        end
        local function SystemFunction3(_ulZnQXMN, _ZXxWnuQX0XIZ, Wm1bQ_xH, _vzmHnw0w0Xx)
            local function SystemFunction4(HznnxDov)
                if Wm1bQ_xH > _vzmHnw0w0Xx then
                    return HznnxDov >= Wm1bQ_xH or HznnxDov <= _vzmHnw0w0Xx
                end
                return HznnxDov >= Wm1bQ_xH and HznnxDov <= _vzmHnw0w0Xx
            end
            if SystemFunction4(_ZXxWnuQX0XIZ) then
                return true
            end
            if _ulZnQXMN == nil then
                return false
            end
            local loowWlvHub = SystemFunction2(_ulZnQXMN, _ZXxWnuQX0XIZ)
            local vz1UlHo = math.abs(math.floor(loowWlvHub))
            if vz1UlHo < 2 then
                return false
            end
            local vOmHl = loowWlvHub / vz1UlHo
            for bqDwbnX_ = 1, vz1UlHo do
                if SystemFunction4((_ulZnQXMN + vOmHl * bqDwbnX_) % 360) then
                    return true
                end
            end
            return false
        end
        local function SystemFunction5()
            local DXz1oqbmX, uqbNMQ0IWbo1 = SystemFunction()
            if not (DXz1oqbmX and uqbNMQ0IWbo1) then
                qNX0b["LastGoalRotation"] = nil
                qNX0b["HasClickedThisGoal"] = false
                qNX0b["LastLineRotation"] = nil
                qNX0b["LastTick"] = nil
                qNX0b["WasActive"] = false
                return
            end
            local _0Zwql = DXz1oqbmX["Rotation"] % 360
            local DUmUuxNUqUu = uqbNMQ0IWbo1["Rotation"] % 360
            local QqqWw = os["clock"]()
            if not qNX0b["WasActive"] then
                qNX0b["WasActive"] = true
                qNX0b["HasClickedThisGoal"] = false
                qNX0b["LastGoalRotation"] = DUmUuxNUqUu
                qNX0b["LastLineRotation"] = _0Zwql
                qNX0b["LastTick"] = QqqWw
                return
            end
            if qNX0b["LastGoalRotation"] and math.abs(SystemFunction2(qNX0b["LastGoalRotation"], DUmUuxNUqUu)) > 5 then
                qNX0b["HasClickedThisGoal"] = false
                qNX0b["LastLineRotation"] = nil
                qNX0b["LastTick"] = nil
            end
            qNX0b["LastGoalRotation"] = DUmUuxNUqUu
            if qNX0b["HasClickedThisGoal"] then
                qNX0b["LastLineRotation"] = _0Zwql
                qNX0b["LastTick"] = QqqWw
                return
            end
            if qNX0b["LastLineRotation"] and qNX0b["LastTick"] then
                local B0unoHln_zwl = QqqWw - qNX0b["LastTick"]
                if B0unoHln_zwl > 0 then
                    local NvII0zWZZHpNqu = SystemFunction2(qNX0b["LastLineRotation"], _0Zwql) / B0unoHln_zwl
                    local NWupWWN = (_0Zwql + NvII0zWZZHpNqu * B0unoHln_zwl * 0) % 360
                    if SystemFunction3(qNX0b["LastLineRotation"], NWupWWN, (DUmUuxNUqUu + 104) % 360, (DUmUuxNUqUu + 109) % 360) then
                        qNX0b["HasClickedThisGoal"] = true
                        task["spawn"](function()
                            task["wait"](0.03)
                            UIFunction5()
                        end)
                    end
                end
            end
            qNX0b["LastLineRotation"] = _0Zwql
            qNX0b["LastTick"] = QqqWw
        end
        local function SystemFunction6()
            local IWDlxXN1xqv, lXZNHw = SystemFunction()
            if not (IWDlxXN1xqv and lXZNHw) then
                qNX0b["PerfectLastGoalRotation"] = nil
                qNX0b["PerfectHasClickedThisGoal"] = false
                qNX0b["PerfectLastLineRotation"] = nil
                qNX0b["PerfectLastTick"] = nil
                qNX0b["PerfectWasActive"] = false
                return
            end
            local DbXNHlwM = IWDlxXN1xqv["Rotation"] % 360
            local IqqblOnQ = lXZNHw["Rotation"] % 360
            local BMxOI1vDl1 = os["clock"]()
            if not qNX0b["PerfectWasActive"] then
                qNX0b["PerfectWasActive"] = true
                qNX0b["PerfectHasClickedThisGoal"] = false
                qNX0b["PerfectLastGoalRotation"] = IqqblOnQ
                qNX0b["PerfectLastLineRotation"] = DbXNHlwM
                qNX0b["PerfectLastTick"] = BMxOI1vDl1
                return
            end
            if qNX0b["PerfectLastGoalRotation"] and math.abs(SystemFunction2(qNX0b["PerfectLastGoalRotation"], IqqblOnQ)) > 5 then
                qNX0b["PerfectHasClickedThisGoal"] = false
                qNX0b["PerfectLastLineRotation"] = nil
                qNX0b["PerfectLastTick"] = nil
            end
            qNX0b["PerfectLastGoalRotation"] = IqqblOnQ
            if qNX0b["PerfectHasClickedThisGoal"] then
                qNX0b["PerfectLastLineRotation"] = DbXNHlwM
                qNX0b["PerfectLastTick"] = BMxOI1vDl1
                return
            end
            if qNX0b["PerfectLastLineRotation"] and qNX0b["PerfectLastTick"] then
                local q0vIzQUZ = BMxOI1vDl1 - qNX0b["PerfectLastTick"]
                if q0vIzQUZ > 0 then
                    local vMDNZ0OQX = SystemFunction2(qNX0b["PerfectLastLineRotation"], DbXNHlwM) / q0vIzQUZ
                    local ImnW0wO = (DbXNHlwM + vMDNZ0OQX * q0vIzQUZ * 0) % 360
                    if SystemFunction3(qNX0b["PerfectLastLineRotation"], ImnW0wO, (IqqblOnQ + 104) % 360, (IqqblOnQ + 108) % 360) then
                        qNX0b["PerfectHasClickedThisGoal"] = true
                        UIFunction5()
                    end
                end
            end
            qNX0b["PerfectLastLineRotation"] = DbXNHlwM
            qNX0b["PerfectLastTick"] = BMxOI1vDl1
        end
        local function SystemFunction7()
            if qNX0b["InstantHasClicked"] then
                return
            end
            local OQnWpHZNmHZn = MOonQqqp["FindFirstChild"](MOonQqqp, "SkillCheckPromptGui") or MOonQqqp["FindFirstChild"](MOonQqqp, "SkillCheckPromptGui-con")
            if not OQnWpHZNmHZn then
                return
            end
            local MWuzbq0oz1IpIn = OQnWpHZNmHZn["FindFirstChild"](OQnWpHZNmHZn, "Check")
            if not MWuzbq0oz1IpIn or not MWuzbq0oz1IpIn["Visible"] then
                return
            end
            local MpouMUvuIQ = MWuzbq0oz1IpIn["FindFirstChild"](MWuzbq0oz1IpIn, "Line")
            local QZOxMw = MWuzbq0oz1IpIn["FindFirstChild"](MWuzbq0oz1IpIn, "Goal")
            if not MpouMUvuIQ or not QZOxMw then
                return
            end
            MpouMUvuIQ["Rotation"] = QZOxMw["Rotation"] + 109
            qNX0b["InstantHasClicked"] = true
            task["spawn"](function()
                UIFunction5()
                task["wait"](0.2)
                qNX0b["InstantHasClicked"] = false
            end)
        end
        WwNbnqHIQwppl["RenderStepped"]:Connect(function()
            if not _1OUbnbM["AutoSkillcheck"] then
                return
            end
            if _1OUbnbM["AutoSkillcheckMode"] == "Perfect" then
                SystemFunction6()
            elseif _1OUbnbM["AutoSkillcheckMode"] == "Instant" then
                SystemFunction7()
            else
                SystemFunction5()
            end
        end)
        WwNbnqHIQwppl["RenderStepped"]:Connect(function()
            if _1OUbnbM["HideSkillUI"] then
                if not MOonQqqp then
                    MOonQqqp = Q_qlzpNO1["FindFirstChild"](Q_qlzpNO1, "PlayerGui")
                end
                local NOxNXU = MOonQqqp and MOonQqqp["FindFirstChild"](MOonQqqp, "SkillCheckPromptGui")
                local H1mpwNq0_n1n = MOonQqqp and MOonQqqp["FindFirstChild"](MOonQqqp, "SkillCheckPromptGui-con")
                if NOxNXU and NOxNXU["Enabled"] then
                    NOxNXU["Enabled"] = false
                end
                if H1mpwNq0_n1n and H1mpwNq0_n1n["Enabled"] then
                    H1mpwNq0_n1n["Enabled"] = false
                end
            end
        end)
        local pDUoZmnN = { ["Enabled"] = false, ["Cache"] = {}, ["CacheTimer"] = 0, ["Processed"] = {} }
        local function ESPGeneratorFunction()
            local BuuzvIQX_NQ0 = tick()
            if BuuzvIQX_NQ0 - pDUoZmnN["CacheTimer"] < 5 then
                return pDUoZmnN["Cache"]
            end
            pDUoZmnN["Cache"] = {}
            pDUoZmnN["CacheTimer"] = BuuzvIQX_NQ0
            local wIOmuXXowN1I = wxl1Uo1UbDnnb["FindFirstChild"](wxl1Uo1UbDnnb, "Map")
            if not wIOmuXXowN1I then
                return pDUoZmnN["Cache"]
            end
            pcall(function()
                for MIHQXmW, vO_UbbmDOl1lNH in pairs(wIOmuXXowN1I["GetDescendants"](wIOmuXXowN1I)) do
                    if not vO_UbbmDOl1lNH["IsA"](vO_UbbmDOl1lNH, "Model") then
                        continue
                    end
                    if vO_UbbmDOl1lNH["Name"] ~= "Generator" then
                        continue
                    end
                    local IvpN0zwlZ1 = vO_UbbmDOl1lNH["GetAttribute"](vO_UbbmDOl1lNH, "RepairProgress") ~= nil
                        or vO_UbbmDOl1lNH["GetAttribute"](vO_UbbmDOl1lNH, "kickcount") ~= nil
                        or vO_UbbmDOl1lNH["GetAttribute"](vO_UbbmDOl1lNH, "ProgressRepair") ~= nil
                    if IvpN0zwlZ1 then
                        table.insert(pDUoZmnN["Cache"], vO_UbbmDOl1lNH)
                    end
                end
            end)
            return pDUoZmnN["Cache"]
        end
        local function ESPGeneratorFunction2(pwl0vX)
            local u1l0q = {}
            pcall(function()
                for owDIXqMlIoz, NWOHZnz in pairs(pwl0vX["GetChildren"](pwl0vX)) do
                    if NWOHZnz["Name"]:find("GeneratorPoint") and NWOHZnz["IsA"](NWOHZnz, "BasePart") then
                        table.insert(u1l0q, NWOHZnz)
                    end
                end
            end)
            return u1l0q
        end
        local function ESPGeneratorFunction3(bNopHWulq0, oUIDNmDHW)
            local WlbNOHmvZ = tick()
            while tick() - WlbNOHmvZ < (oUIDNmDHW or 1) do
                if bNopHWulq0["GetAttribute"](bNopHWulq0, "IsRepairing") == true then
                    return true
                end
                task["wait"](0.05)
            end
            return false
        end
        local function ESPGeneratorFunction4(HZMbIblO)
            local NpDxm0 = HZMbIblO["Parent"]
            if pDUoZmnN["Processed"][NpDxm0] then
                return
            end
            pDUoZmnN["Processed"][NpDxm0] = true
            local _NOQI1lbHnpx = Q_qlzpNO1["Character"]
            local quXpu_ = _NOQI1lbHnpx and _NOQI1lbHnpx["FindFirstChild"](_NOQI1lbHnpx, "HumanoidRootPart")
            if not quXpu_ then
                pDUoZmnN["Processed"][NpDxm0] = nil
                return
            end
            local vUpoNbnoxvW = oZzw1oZIXX_["FindFirstChild"](oZzw1oZIXX_, "Remotes")
                and oZzw1oZIXX_["Remotes"]:FindFirstChild("Generator")
                and oZzw1oZIXX_["Remotes"]["Generator"]:FindFirstChild("RepairEvent")
            local DunpZMbHlH0O = quXpu_["CFrame"]
            pcall(function()
                for WDH0xZu, OWqqQ1MON in pairs(ESPGeneratorFunction2(NpDxm0)) do
                    if OWqqQ1MON ~= HZMbIblO and OWqqQ1MON["Parent"] then
                        quXpu_["Anchored"] = true
                        quXpu_["CFrame"] = OWqqQ1MON["CFrame"]
                        task["wait"](0.15)
                        pcall(function()
                            if vUpoNbnoxvW then
                                vUpoNbnoxvW["FireServer"](vUpoNbnoxvW, OWqqQ1MON, true)
                            end
                        end)
                        if not ESPGeneratorFunction3(OWqqQ1MON, 0.8) then
                            pcall(function()
                                if vUpoNbnoxvW then
                                    vUpoNbnoxvW["FireServer"](vUpoNbnoxvW, OWqqQ1MON, false)
                                end
                            end)
                            task["wait"](0.1)
                            quXpu_["CFrame"] = OWqqQ1MON["CFrame"]
                            task["wait"](0.15)
                            pcall(function()
                                if vUpoNbnoxvW then
                                    vUpoNbnoxvW["FireServer"](vUpoNbnoxvW, OWqqQ1MON, true)
                                end
                            end)
                            ESPGeneratorFunction3(OWqqQ1MON, 0.5)
                        end
                        quXpu_["Anchored"] = false
                        task["wait"](0.05)
                    end
                end
            end)
            pcall(function()
                if quXpu_ and quXpu_["Parent"] then
                    quXpu_["Anchored"] = false
                    quXpu_["CFrame"] = DunpZMbHlH0O
                end
            end)
            task["wait"](0.1)
            pcall(function()
                if vUpoNbnoxvW then
                    vUpoNbnoxvW["FireServer"](vUpoNbnoxvW, HZMbIblO, false)
                end
            end)
        end
        local function UIFunction6()
            local HqpZMQZp = Q_qlzpNO1["Character"]
            local oMuowvzvZv = HqpZMQZp and HqpZMQZp["FindFirstChild"](HqpZMQZp, "HumanoidRootPart")
            if not oMuowvzvZv then
                return nil
            end
            local qDwMOllIv, MwvXOZu_Z = nil, math["huge"]
            for um_O_xmX0I1lNb, oOuHnD0 in pairs(ESPGeneratorFunction()) do
                for Bq_b_UnuWw, HpqwmqmlQ_ in pairs(ESPGeneratorFunction2(oOuHnD0)) do
                    local NnIxXQxHxWIu = (oMuowvzvZv["Position"] - HpqwmqmlQ_["Position"])["Magnitude"]
                    if NnIxXQxHxWIu < MwvXOZu_Z then
                        MwvXOZu_Z = NnIxXQxHxWIu
                        qDwMOllIv = HpqwmqmlQ_
                    end
                end
            end
            return qDwMOllIv, MwvXOZu_Z
        end
        local function UIFunction7()
            local QnXDqOD1Uvq = Instance["new"]("ScreenGui")
            QnXDqOD1Uvq["Name"] = "FallensBoostGui"
            QnXDqOD1Uvq["ResetOnSpawn"] = false
            QnXDqOD1Uvq["ZIndexBehavior"] = Enum["ZIndexBehavior"]["Sibling"]
            QnXDqOD1Uvq["Parent"] = CharacterFunction4()
            QnXDqOD1Uvq["Enabled"] = false
            local QH0upxQ = Instance["new"]("TextButton")
            QH0upxQ["Name"] = "BoostButton"
            QH0upxQ["Text"] = "เพิ่มความเร็ว"
            QH0upxQ["TextColor3"] = Color3["fromRGB"](230, 200, 205)
            QH0upxQ["TextSize"] = 13
            QH0upxQ["Font"] = Enum["Font"]["SourceSansBold"]
            QH0upxQ["AutoButtonColor"] = false
            QH0upxQ["Size"] = UDim2["fromOffset"](50, 50)
            QH0upxQ["Position"] = UDim2["new"](0.5, -25, 0.8, 0)
            QH0upxQ["BackgroundColor3"] = Color3["fromRGB"](18, 12, 14)
            QH0upxQ["BackgroundTransparency"] = 0.05
            QH0upxQ["ClipsDescendants"] = true
            QH0upxQ["Parent"] = QnXDqOD1Uvq
            local wWb0MNN_ = Instance["new"]("UICorner")
            wWb0MNN_["CornerRadius"] = UDim["new"](0, 10)
            wWb0MNN_["Parent"] = QH0upxQ
            local QWWvn_HuZqMpoW = Instance["new"]("UIStroke")
            QWWvn_HuZqMpoW["Color"] = Color3["fromRGB"](110, 25, 35)
            QWWvn_HuZqMpoW["Thickness"] = 1.2
            QWWvn_HuZqMpoW["ApplyStrokeMode"] = Enum["ApplyStrokeMode"]["Border"]
            QWWvn_HuZqMpoW["Parent"] = QH0upxQ
            local uDUM_bZp = Instance["new"]("UIStroke")
            uDUM_bZp["Color"] = Color3["fromRGB"](140, 30, 45)
            uDUM_bZp["Thickness"] = 4
            uDUM_bZp["Transparency"] = 0.6
            uDUM_bZp["Parent"] = QH0upxQ
            QH0upxQ["MouseEnter"]:Connect(function()
                game:GetService("TweenService"):Create(QH0upxQ, TweenInfo["new"](0.15), { ["BackgroundColor3"] = Color3["fromRGB"](35, 15, 20) }):Play()
            end)
            QH0upxQ["MouseLeave"]:Connect(function()
                game:GetService("TweenService"):Create(QH0upxQ, TweenInfo["new"](0.15), { ["BackgroundColor3"] = Color3["fromRGB"](18, 12, 14) }):Play()
            end)
            QH0upxQ["MouseButton1Click"]:Connect(function()
                game:GetService("TweenService"):Create(QH0upxQ, TweenInfo["new"](0.08), { ["Size"] = UDim2["fromOffset"](44, 44) }):Play()
                task["wait"](0.08)
                game:GetService("TweenService"):Create(QH0upxQ, TweenInfo["new"](0.08), { ["Size"] = UDim2["fromOffset"](50, 50) }):Play()
                if pDUoZmnN["Enabled"] then
                    local MoWqxxN1, vDwNv0zl_umwv1 = UIFunction6()
                    if MoWqxxN1 and vDwNv0zl_umwv1 <= 15 then
                        if not pDUoZmnN["Processed"][MoWqxxN1["Parent"]] then
                            ESPGeneratorFunction4(MoWqxxN1)
                        end
                    end
                end
            end)
            QolwvD0XnWnzM:MakeDraggable(QH0upxQ, QH0upxQ, true)
            return QnXDqOD1Uvq
        end
        local N_HqxOQvoIUOZn = UIFunction7()
        local BnQUnDlbDDWw = Instance["new"]("Folder")
        BnQUnDlbDDWw["Name"] = "__BolongESP__"
        BnQUnDlbDDWw["Parent"] = wxl1Uo1UbDnnb
        local function ESPGeneratorFunction5()
            if BnQUnDlbDDWw and BnQUnDlbDDWw["Parent"] then
                return BnQUnDlbDDWw
            end
            BnQUnDlbDDWw = Instance["new"]("Folder")
            BnQUnDlbDDWw["Name"] = "__BolongESP__"
            BnQUnDlbDDWw["Parent"] = wxl1Uo1UbDnnb
            return BnQUnDlbDDWw
        end
        local lopX_WWOqz = {
            ["espObjects"] = {},
            ["outlineObjects"] = {},
            ["playerTeamConns"] = {},
            ["cachedMapObjects"] = { ["Generators"] = {}, ["Pallets"] = {}, ["Hooks"] = {}, ["Gates"] = {} },
            ["cachedPalletMeta"] = {},
            ["cachedHookMeshParts"] = {},
            ["completedGenerators"] = {},
            ["genIndices"] = {},
            ["nextGenIndex"] = 1,
            ["objEspInitialized"] = false,
            ["windowEspObjects"] = {},
            ["_windowParts"] = {},
            ["_windowPartMap"] = {},
            ["scpEspObjects"] = {},
        }
        local lZxmm, wzlZvxlz1Hzz, HZMloNIWlXUUu
        do
            local function ESPPlayerFunction(ppMIOMw)
                return ppMIOMw and _1OUbnbM["killerMaxDistance"] or _1OUbnbM["survivorMaxDistance"]
            end
            local function ESPPlayerFunction2(pum0IlqHlo)
                if pum0IlqHlo == Q_qlzpNO1 or not pum0IlqHlo or not pum0IlqHlo["Parent"] then
                    return
                end
                local NHQ_Hpwbu = lopX_WWOqz["espObjects"][pum0IlqHlo]
                if NHQ_Hpwbu then
                    if NHQ_Hpwbu["bilboard"] and NHQ_Hpwbu["bilboard"]["Parent"] then
                        NHQ_Hpwbu["bilboard"]:Destroy()
                    end
                end
                local _mOZbQ0oWZ_v = lopX_WWOqz["outlineObjects"][pum0IlqHlo]
                if _mOZbQ0oWZ_v and _mOZbQ0oWZ_v["Parent"] then
                    _mOZbQ0oWZ_v["Destroy"](_mOZbQ0oWZ_v)
                end
                lopX_WWOqz["espObjects"][pum0IlqHlo] = nil
                lopX_WWOqz["outlineObjects"][pum0IlqHlo] = nil
                lZxmm(pum0IlqHlo)
                wzlZvxlz1Hzz(pum0IlqHlo)
            end
            function MU_m1UmlXXDZ.GetCameraPosition()
                local BInQbQpm = wxl1Uo1UbDnnb["CurrentCamera"]
                if BInQbQpm then
                    return BInQbQpm["CFrame"]["Position"]
                end
                return nil
            end
            function MU_m1UmlXXDZ.UpdateESPDistanceLabels()
                for u_qmw, IOuw0NWOxMoZ1 in pairs(lopX_WWOqz["espObjects"]) do
                    if IOuw0NWOxMoZ1 and IOuw0NWOxMoZ1["bilboard"] and IOuw0NWOxMoZ1["bilboard"]["Parent"] then
                        local NQwMw0v_1U = CharacterFunction7(u_qmw)
                        local InuM_Xv = NQwMw0v_1U == "killer"
                        IOuw0NWOxMoZ1["nameLabel"]["Visible"] = (InuM_Xv and _1OUbnbM["killerShowName"]) or (not InuM_Xv and _1OUbnbM["survivorShowName"])
                        IOuw0NWOxMoZ1["nameLabel"]["Text"] = u_qmw["Name"]
                        IOuw0NWOxMoZ1["bilboard"]["MaxDistance"] = ESPPlayerFunction(InuM_Xv)
                    end
                end
                for pxOI0wqQW, MqbZwpzX in pairs(lopX_WWOqz["outlineObjects"]) do
                    if MqbZwpzX and MqbZwpzX["Parent"] then
                        local IbDoqv = CharacterFunction7(pxOI0wqQW)
                        local OvMbm_ZlQ_q = IbDoqv == "killer"
                        local bWlIzIbMDv = OvMbm_ZlQ_q and _1OUbnbM["killerColor"] or _1OUbnbM["survivorColor"]
                        local wxvMob = (OvMbm_ZlQ_q and _1OUbnbM["killerShowOutline"]) or (not OvMbm_ZlQ_q and _1OUbnbM["survivorShowOutline"])
                        local Dw0MwOow = (OvMbm_ZlQ_q and _1OUbnbM["killerOutlineOnly"]) or (not OvMbm_ZlQ_q and _1OUbnbM["survivorOutlineOnly"])
                        MqbZwpzX["FillColor"] = bWlIzIbMDv
                        MqbZwpzX["OutlineColor"] = bWlIzIbMDv
                        MqbZwpzX["Enabled"] = wxvMob
                        MqbZwpzX["FillTransparency"] = Dw0MwOow and 1 or _1OUbnbM["fillTransparency"]
                    end
                end
                HZMloNIWlXUUu()
            end
            function MU_m1UmlXXDZ.RefreshAllPlayerESP()
                for _lbqxzxlvnZDMo, MpZlzMl in ipairs(WIDWH["GetPlayers"](WIDWH)) do
                    if MpZlzMl ~= Q_qlzpNO1 then
                        ESPPlayerFunction2(MpZlzMl)
                    end
                end
            end
            HZMloNIWlXUUu = function()
                local I1b1bI = MU_m1UmlXXDZ.GetCameraPosition()
                if not I1b1bI then
                    return
                end
                for HmIW1ZpmwxH, wxXIuO_11qXIlp in pairs(lopX_WWOqz["espObjects"]) do
                    if HmIW1ZpmwxH and HmIW1ZpmwxH["Parent"] then
                        local lulIIMp = HmIW1ZpmwxH["Character"]
                        local lDONH1vuuZ0M1n = lulIIMp
                            and (
                                lulIIMp["FindFirstChild"](lulIIMp, "HumanoidRootPart")
                                or lulIIMp["FindFirstChild"](lulIIMp, "Torso")
                                or lulIIMp["FindFirstChild"](lulIIMp, "UpperTorso")
                                or lulIIMp["FindFirstChild"](lulIIMp, "Head")
                            )
                        if lDONH1vuuZ0M1n then
                            local pIQUINnQvm = (lDONH1vuuZ0M1n["Position"] - I1b1bI)["Magnitude"]
                            local D0UZwM_MD = CharacterFunction7(HmIW1ZpmwxH) == "killer"
                            local BWwZWmqInoo = ESPPlayerFunction(D0UZwM_MD)
                            local MODQm10zn = pIQUINnQvm <= BWwZWmqInoo
                            local ovp_nOozWQlZHn = lopX_WWOqz["outlineObjects"][HmIW1ZpmwxH]
                            if ovp_nOozWQlZHn then
                                local I1UN1NZqo = (D0UZwM_MD and _1OUbnbM["killerShowOutline"]) or (not D0UZwM_MD and _1OUbnbM["survivorShowOutline"])
                                local pZOoDOXOnzDQ0_ = I1UN1NZqo and MODQm10zn
                                if ovp_nOozWQlZHn["Enabled"] ~= pZOoDOXOnzDQ0_ then
                                    ovp_nOozWQlZHn["Enabled"] = pZOoDOXOnzDQ0_
                                end
                            end
                            if wxXIuO_11qXIlp then
                                if wxXIuO_11qXIlp["bilboard"] then
                                    local DwQu0IZZ1OwwW = (D0UZwM_MD and _1OUbnbM["killerShowName"]) or (not D0UZwM_MD and _1OUbnbM["survivorShowName"])
                                    local w_OOxblHl1X1_q = MODQm10zn and DwQu0IZZ1OwwW
                                    if wxXIuO_11qXIlp["bilboard"]["Enabled"] ~= w_OOxblHl1X1_q then
                                        wxXIuO_11qXIlp["bilboard"]["Enabled"] = w_OOxblHl1X1_q
                                    end
                                    wxXIuO_11qXIlp["bilboard"]["MaxDistance"] = BWwZWmqInoo
                                end
                            end
                        end
                    end
                end
            end
            function MU_m1UmlXXDZ.UpdatePlayerESP(O_l_p, Ou_0mbl)
                local NzbwwDXmI = lopX_WWOqz["espObjects"][O_l_p]
                if not NzbwwDXmI then
                    return
                end
                if not Ou_0mbl or not Ou_0mbl["Parent"] or O_l_p["Character"] ~= Ou_0mbl then
                    return
                end
                local bvNnowoqm = Ou_0mbl["FindFirstChild"](Ou_0mbl, "HumanoidRootPart")
                    or Ou_0mbl["FindFirstChild"](Ou_0mbl, "Torso")
                    or Ou_0mbl["FindFirstChild"](Ou_0mbl, "UpperTorso")
                    or Ou_0mbl["FindFirstChild"](Ou_0mbl, "Head")
                if not bvNnowoqm then
                    task["spawn"](function()
                        local WO1zbxIIvO, DmZlwx1Oxm = pcall(function()
                            return Ou_0mbl["WaitForChild"](Ou_0mbl, "HumanoidRootPart", 3)
                        end)
                        if WO1zbxIIvO and DmZlwx1Oxm and DmZlwx1Oxm["Parent"] and Ou_0mbl["Parent"] and O_l_p["Character"] == Ou_0mbl then
                            if NzbwwDXmI["bilboard"] then
                                NzbwwDXmI["bilboard"]["Adornee"] = DmZlwx1Oxm
                                NzbwwDXmI["bilboard"]["Enabled"] = true
                            end
                        end
                    end)
                    return
                end
                if NzbwwDXmI["bilboard"] then
                    NzbwwDXmI["bilboard"]["Adornee"] = bvNnowoqm
                    NzbwwDXmI["bilboard"]["Enabled"] = true
                end
                local lQZuz = CharacterFunction7(O_l_p)
                local WW0zxqq = lQZuz == "killer"
                NzbwwDXmI["nameLabel"]["Visible"] = (WW0zxqq and _1OUbnbM["killerShowName"]) or (not WW0zxqq and _1OUbnbM["survivorShowName"])
                NzbwwDXmI["nameLabel"]["Text"] = O_l_p["Name"]
            end
            function MU_m1UmlXXDZ.RemovePlayerESP(pmq_vZNDm)
                if lopX_WWOqz["espObjects"][pmq_vZNDm] then
                    if lopX_WWOqz["espObjects"][pmq_vZNDm]["bilboard"] then
                        lopX_WWOqz["espObjects"][pmq_vZNDm]["bilboard"]:Destroy()
                    end
                    lopX_WWOqz["espObjects"][pmq_vZNDm] = nil
                end
                if lopX_WWOqz["outlineObjects"][pmq_vZNDm] then
                    lopX_WWOqz["outlineObjects"][pmq_vZNDm]:Destroy()
                    lopX_WWOqz["outlineObjects"][pmq_vZNDm] = nil
                end
                if lopX_WWOqz["playerTeamConns"][pmq_vZNDm] then
                    lopX_WWOqz["playerTeamConns"][pmq_vZNDm]:Disconnect()
                    lopX_WWOqz["playerTeamConns"][pmq_vZNDm] = nil
                end
            end
            function MU_m1UmlXXDZ.UpdatePlayerOutline(O_mQUb1x, b_Q_Z1I)
                local lHNMDIm_ = lopX_WWOqz["outlineObjects"][O_mQUb1x]
                if not lHNMDIm_ then
                    return
                end
                if not b_Q_Z1I or not b_Q_Z1I["Parent"] or O_mQUb1x["Character"] ~= b_Q_Z1I then
                    return
                end
                local qZmzHZxzNNM = CharacterFunction7(O_mQUb1x)
                local Bbn0NxoDM = qZmzHZxzNNM == "killer"
                local _ZlNnv = Bbn0NxoDM and _1OUbnbM["killerColor"] or _1OUbnbM["survivorColor"]
                local wnpX1OObqW = (Bbn0NxoDM and _1OUbnbM["killerShowOutline"]) or (not Bbn0NxoDM and _1OUbnbM["survivorShowOutline"])
                local Io_zZMIqu0vn = (Bbn0NxoDM and _1OUbnbM["killerOutlineOnly"]) or (not Bbn0NxoDM and _1OUbnbM["survivorOutlineOnly"])
                lHNMDIm_["Adornee"] = b_Q_Z1I
                lHNMDIm_["FillColor"] = _ZlNnv
                lHNMDIm_["OutlineColor"] = _ZlNnv
                lHNMDIm_["FillTransparency"] = Io_zZMIqu0vn and 1 or _1OUbnbM["fillTransparency"]
                lHNMDIm_["OutlineTransparency"] = 0
                lHNMDIm_["DepthMode"] = Enum["HighlightDepthMode"]["AlwaysOnTop"]
                lHNMDIm_["Enabled"] = wnpX1OObqW
            end
            function MU_m1UmlXXDZ.CreatePlayerESP(uqQMoMxXqqpz)
                if uqQMoMxXqqpz == Q_qlzpNO1 then
                    return
                end
                if not uqQMoMxXqqpz or not uqQMoMxXqqpz["Parent"] then
                    return
                end
                local owpbzM = lopX_WWOqz["espObjects"][uqQMoMxXqqpz]
                local HUbxvponxpln = lopX_WWOqz["outlineObjects"][uqQMoMxXqqpz]
                if not owpbzM and not HUbxvponxpln then
                    return
                end
                if (owpbzM and owpbzM["bilboard"] and not owpbzM["bilboard"]["Parent"]) or (HUbxvponxpln and not HUbxvponxpln["Parent"]) then
                    ESPPlayerFunction2(uqQMoMxXqqpz)
                    return
                end
                local MpXxoHl0Ob = uqQMoMxXqqpz["Character"]
                if not MpXxoHl0Ob or not MpXxoHl0Ob["Parent"] then
                    if owpbzM and owpbzM["bilboard"] then
                        owpbzM["bilboard"]["Adornee"] = nil
                    end
                    if HUbxvponxpln then
                        HUbxvponxpln["Adornee"] = nil
                        HUbxvponxpln["Enabled"] = false
                    end
                    return
                end
                local BolM1 = MpXxoHl0Ob["FindFirstChild"](MpXxoHl0Ob, "HumanoidRootPart")
                    or MpXxoHl0Ob["FindFirstChild"](MpXxoHl0Ob, "Torso")
                    or MpXxoHl0Ob["FindFirstChild"](MpXxoHl0Ob, "UpperTorso")
                    or MpXxoHl0Ob["FindFirstChild"](MpXxoHl0Ob, "Head")
                if not BolM1 then
                    return
                end
                local H1Ix0_Dp = MU_m1UmlXXDZ.GetCameraPosition()
                local QDO_mmmnwDUUZ = true
                if H1Ix0_Dp then
                    local b0nnD = (BolM1["Position"] - H1Ix0_Dp)["Magnitude"]
                    local ll0X_HqWpW = CharacterFunction7(uqQMoMxXqqpz) == "killer"
                    QDO_mmmnwDUUZ = b0nnD <= ESPPlayerFunction(ll0X_HqWpW)
                end
                local lOz0D = CharacterFunction7(uqQMoMxXqqpz) == "killer"
                local BopnDn_D1Db = (lOz0D and _1OUbnbM["killerShowName"]) or (not lOz0D and _1OUbnbM["survivorShowName"])
                local BN1H0pUz_q_m = (lOz0D and _1OUbnbM["killerShowOutline"]) or (not lOz0D and _1OUbnbM["survivorShowOutline"])
                if owpbzM and owpbzM["bilboard"] then
                    if owpbzM["bilboard"]["Adornee"] ~= BolM1 then
                        owpbzM["bilboard"]["Adornee"] = BolM1
                    end
                    local DOIXMbHxuXWN1Z = QDO_mmmnwDUUZ and BopnDn_D1Db
                    if owpbzM["bilboard"]["Enabled"] ~= DOIXMbHxuXWN1Z then
                        owpbzM["bilboard"]["Enabled"] = DOIXMbHxuXWN1Z
                    end
                end
                if HUbxvponxpln then
                    if HUbxvponxpln["Adornee"] ~= MpXxoHl0Ob then
                        MU_m1UmlXXDZ.UpdatePlayerOutline(uqQMoMxXqqpz, MpXxoHl0Ob)
                    else
                        local pMmb0uoQxoxX0u = QDO_mmmnwDUUZ and BN1H0pUz_q_m
                        if HUbxvponxpln["Enabled"] ~= pMmb0uoQxoxX0u then
                            HUbxvponxpln["Enabled"] = pMmb0uoQxoxX0u
                        end
                    end
                end
            end
            lZxmm = function(ouHN0)
                if ouHN0 == Q_qlzpNO1 then
                    return
                end
                local OnqvQ = CharacterFunction7(ouHN0)
                local uDOUZ_ = Instance["new"]("BillboardGui")
                uDOUZ_["Name"] = "ESP_BB_" .. ouHN0["Name"]
                uDOUZ_["AlwaysOnTop"] = true
                uDOUZ_["Size"] = UDim2["new"](0, 150, 0, 18)
                uDOUZ_["StudsOffset"] = Vector3["new"](0, 3.5, 0)
                uDOUZ_["MaxDistance"] = ESPPlayerFunction(OnqvQ == "killer")
                uDOUZ_["Parent"] = ESPGeneratorFunction5()
                local lnHnlbH1q_ = Instance["new"]("TextLabel")
                lnHnlbH1q_["Name"] = "NameLabel"
                lnHnlbH1q_["Size"] = UDim2["new"](1, 0, 1, 0)
                lnHnlbH1q_["BackgroundTransparency"] = 1
                lnHnlbH1q_["TextColor3"] = Color3["fromRGB"](255, 255, 255)
                lnHnlbH1q_["TextStrokeTransparency"] = 0
                lnHnlbH1q_["TextStrokeColor3"] = Color3["new"](0, 0, 0)
                lnHnlbH1q_["TextSize"] = 12
                lnHnlbH1q_["Font"] = Enum["Font"]["GothamBold"]
                lnHnlbH1q_["Text"] = ouHN0["Name"]
                lnHnlbH1q_["Visible"] = (OnqvQ == "killer" and _1OUbnbM["killerShowName"]) or (OnqvQ ~= "killer" and _1OUbnbM["survivorShowName"])
                lnHnlbH1q_["Parent"] = uDOUZ_
                lopX_WWOqz["espObjects"][ouHN0] = { ["bilboard"] = uDOUZ_, ["nameLabel"] = lnHnlbH1q_ }
                if ouHN0["Character"] then
                    MU_m1UmlXXDZ.UpdatePlayerESP(ouHN0, ouHN0["Character"])
                end
                if not lopX_WWOqz["playerTeamConns"][ouHN0] then
                    lopX_WWOqz["playerTeamConns"][ouHN0] = ouHN0["GetPropertyChangedSignal"](ouHN0, "Team"):Connect(function()
                        MU_m1UmlXXDZ.UpdateESPDistanceLabels()
                        task["delay"](0.5, function()
                            MU_m1UmlXXDZ.CreatePlayerESP(ouHN0)
                        end)
                        task["delay"](2, function()
                            MU_m1UmlXXDZ.CreatePlayerESP(ouHN0)
                        end)
                    end)
                end
            end
            wzlZvxlz1Hzz = function(wzD0om)
                if wzD0om == Q_qlzpNO1 then
                    return
                end
                local D_DUXw_OuM = Instance["new"]("Highlight")
                D_DUXw_OuM["Parent"] = ESPGeneratorFunction5()
                lopX_WWOqz["outlineObjects"][wzD0om] = D_DUXw_OuM
                if wzD0om["Character"] then
                    MU_m1UmlXXDZ.UpdatePlayerOutline(wzD0om, wzD0om["Character"])
                end
            end
        end
        CharacterFunction6("ESPValidator", 1, function()
            if not BnQUnDlbDDWw or not BnQUnDlbDDWw["Parent"] then
                MU_m1UmlXXDZ.RefreshAllPlayerESP()
                return
            end
            for puHuw, uMMNuuwnQWnn in pairs(lopX_WWOqz["espObjects"]) do
                MU_m1UmlXXDZ.CreatePlayerESP(puHuw)
            end
            for oxxQIQWxnm, NUvpmloxmZlvnH in pairs(lopX_WWOqz["outlineObjects"]) do
                if not lopX_WWOqz["espObjects"][oxxQIQWxnm] then
                    MU_m1UmlXXDZ.CreatePlayerESP(oxxQIQWxnm)
                end
            end
        end)
        CharacterFunction6("EspDistCull", 0.5, function()
            if lopX_WWOqz["espObjects"] then
                HZMloNIWlXUUu()
            end
        end)
        local ESPGeneratorFunction12
        do
            local function ESPGeneratorFunction6(O0o0N, IO1NDlWm)
                if typeof(O0o0N) ~= "Instance" then
                    return nil
                end
                local _vZpIbv1vD1W = O0o0N["GetAttribute"](O0o0N, IO1NDlWm)
                if _vZpIbv1vD1W ~= nil then
                    return _vZpIbv1vD1W
                end
                local wNNonmQ_xnmm = O0o0N["FindFirstChild"](O0o0N, IO1NDlWm)
                if wNNonmQ_xnmm and wNNonmQ_xnmm["IsA"](wNNonmQ_xnmm, "ValueBase") then
                    return wNNonmQ_xnmm["Value"]
                end
                return nil
            end
            local function ESPGeneratorFunction7(qvmmQ0, w0u0qoN)
                if not qvmmQ0 or not qvmmQ0["Parent"] then
                    return
                end
                local DIIZO1IDnWvx = qvmmQ0["FindFirstChild"](qvmmQ0, "__BolongHL__")
                if not DIIZO1IDnWvx then
                    DIIZO1IDnWvx = Instance["new"]("Highlight")
                    DIIZO1IDnWvx["Name"] = "__BolongHL__"
                    DIIZO1IDnWvx["Adornee"] = qvmmQ0
                    DIIZO1IDnWvx["FillTransparency"] = 0.4
                    DIIZO1IDnWvx["OutlineTransparency"] = 0
                    DIIZO1IDnWvx["DepthMode"] = Enum["HighlightDepthMode"]["AlwaysOnTop"]
                    DIIZO1IDnWvx["FillColor"] = w0u0qoN
                    DIIZO1IDnWvx["OutlineColor"] = w0u0qoN
                    DIIZO1IDnWvx["Parent"] = qvmmQ0
                    return
                end
                if DIIZO1IDnWvx["FillColor"] ~= w0u0qoN then
                    DIIZO1IDnWvx["FillColor"] = w0u0qoN
                    DIIZO1IDnWvx["OutlineColor"] = w0u0qoN
                end
                if not DIIZO1IDnWvx["Enabled"] then
                    DIIZO1IDnWvx["Enabled"] = true
                end
            end
            local function ESPGeneratorFunction8(IollMozuZnv_)
                if not IollMozuZnv_ then
                    return
                end
                local DnDvl1v1pX1DzI = IollMozuZnv_["FindFirstChild"](IollMozuZnv_, "__BolongHL__")
                if DnDvl1v1pX1DzI then
                    DnDvl1v1pX1DzI["Destroy"](DnDvl1v1pX1DzI)
                end
            end
            function MU_m1UmlXXDZ.IsGeneratorCompleted(WbNXXpWu1ZmOxQ)
                if not WbNXXpWu1ZmOxQ or not WbNXXpWu1ZmOxQ["Parent"] then
                    return true
                end
                if lopX_WWOqz["completedGenerators"][WbNXXpWu1ZmOxQ] then
                    return true
                end
                local MMNMNmDbNHv = WbNXXpWu1ZmOxQ["GetAttribute"](WbNXXpWu1ZmOxQ, "RepairProgress") or WbNXXpWu1ZmOxQ["GetAttribute"](WbNXXpWu1ZmOxQ, "Progress") or 0
                local Om_z0uNwzOq1l = (MMNMNmDbNHv >= 100)
                    or (WbNXXpWu1ZmOxQ["GetAttribute"](WbNXXpWu1ZmOxQ, "Completed") == true)
                    or (WbNXXpWu1ZmOxQ["GetAttribute"](WbNXXpWu1ZmOxQ, "IsCompleted") == true)
                    or (WbNXXpWu1ZmOxQ["GetAttribute"](WbNXXpWu1ZmOxQ, "Done") == true)
                local wMIzpxb1wZOzm = WbNXXpWu1ZmOxQ["FindFirstChild"](WbNXXpWu1ZmOxQ, "__BolongGenProgress__")
                if Om_z0uNwzOq1l then
                    if wMIzpxb1wZOzm then
                        wMIzpxb1wZOzm["Destroy"](wMIzpxb1wZOzm)
                    end
                    ESPGeneratorFunction8(WbNXXpWu1ZmOxQ)
                    WbNXXpWu1ZmOxQ:SetAttribute("__BolongGenLastPct__", nil)
                    WbNXXpWu1ZmOxQ:SetAttribute("__BolongGenLastInfo__", nil)
                    lopX_WWOqz["completedGenerators"][WbNXXpWu1ZmOxQ] = true
                    lopX_WWOqz["genIndices"][WbNXXpWu1ZmOxQ] = nil
                    return Om_z0uNwzOq1l
                end
                if _1OUbnbM["espGeneratorEnabled"] then
                    ESPGeneratorFunction7(WbNXXpWu1ZmOxQ, _1OUbnbM["espGeneratorColor"])
                else
                    ESPGeneratorFunction8(WbNXXpWu1ZmOxQ)
                end
                if _1OUbnbM["espGeneratorProgressGen"] then
                    local HmvlHUMuqZ = WbNXXpWu1ZmOxQ["GetAttribute"](WbNXXpWu1ZmOxQ, "PlayersRepairingCount") or 0
                    local bZmZl = WbNXXpWu1ZmOxQ["GetAttribute"](WbNXXpWu1ZmOxQ, "kickcount") or 0
                    local wqoxnw = math.floor(MMNMNmDbNHv + 0.5)
                    local vlM0ONzwNHop = WbNXXpWu1ZmOxQ["GetAttribute"](WbNXXpWu1ZmOxQ, "__BolongGenLastPct__")
                    local D0op1MbQwH1XMn = WbNXXpWu1ZmOxQ["GetAttribute"](WbNXXpWu1ZmOxQ, "__BolongGenLastInfo__")
                    local Nw1IxMvZUp1uQn = lopX_WWOqz["genIndices"][WbNXXpWu1ZmOxQ] or 1
                    local DQUm_nU = string.format("%d_%d_%d_%s_%d", wqoxnw, HmvlHUMuqZ, bZmZl, tostring(_1OUbnbM["espGenShowPK"]), Nw1IxMvZUp1uQn)
                    if vlM0ONzwNHop == wqoxnw and D0op1MbQwH1XMn == DQUm_nU and wMIzpxb1wZOzm then
                        return false
                    end
                    WbNXXpWu1ZmOxQ["SetAttribute"](WbNXXpWu1ZmOxQ, "__BolongGenLastPct__", wqoxnw)
                    WbNXXpWu1ZmOxQ:SetAttribute("__BolongGenLastInfo__", DQUm_nU)
                    local DMmOZxlzp1 = math.clamp(MMNMNmDbNHv, 0, 100)
                    local wZIb1lHwI = WbNXXpWu1ZmOxQ["FindFirstChild"](WbNXXpWu1ZmOxQ, "GeneratorBody", true)
                        or WbNXXpWu1ZmOxQ["FindFirstChild"](WbNXXpWu1ZmOxQ, "defaultMaterial", true)
                        or (WbNXXpWu1ZmOxQ["IsA"](WbNXXpWu1ZmOxQ, "Model") and WbNXXpWu1ZmOxQ["PrimaryPart"])
                        or WbNXXpWu1ZmOxQ["FindFirstChildWhichIsA"](WbNXXpWu1ZmOxQ, "BasePart", true)
                    if not wZIb1lHwI then
                        return false
                    end
                    if not wMIzpxb1wZOzm then
                        wMIzpxb1wZOzm = Instance["new"]("BillboardGui")
                        wMIzpxb1wZOzm["Name"] = "__BolongGenProgress__"
                        wMIzpxb1wZOzm["Adornee"] = wZIb1lHwI
                        wMIzpxb1wZOzm["AlwaysOnTop"] = true
                        wMIzpxb1wZOzm["LightInfluence"] = 0
                        wMIzpxb1wZOzm["ResetOnSpawn"] = false
                        wMIzpxb1wZOzm["MaxDistance"] = 260
                        wMIzpxb1wZOzm["Size"] = UDim2["new"](0, 70, 0, 12)
                        local p___z = (wZIb1lHwI["Size"]["Y"] / 2 + 2.5)
                        wMIzpxb1wZOzm["StudsOffset"] = Vector3["new"](0, p___z, 0)
                        wMIzpxb1wZOzm["Parent"] = WbNXXpWu1ZmOxQ
                        local QNl_D_Zbo = Instance["new"]("Frame")
                        QNl_D_Zbo["Name"] = "BgFrame"
                        QNl_D_Zbo["Size"] = UDim2["new"](1, 0, 1, 0)
                        QNl_D_Zbo["BackgroundColor3"] = Color3["fromRGB"](20, 20, 20)
                        QNl_D_Zbo["BackgroundTransparency"] = 0.3
                        QNl_D_Zbo["BorderSizePixel"] = 0
                        QNl_D_Zbo["Parent"] = wMIzpxb1wZOzm
                        local HIx1uv = Instance["new"]("UICorner")
                        HIx1uv["CornerRadius"] = UDim["new"](0, 3)
                        HIx1uv["Parent"] = QNl_D_Zbo
                        local _DlW0qUWbZ = Instance["new"]("UIStroke")
                        _DlW0qUWbZ["Color"] = Color3["fromRGB"](60, 60, 60)
                        _DlW0qUWbZ["Thickness"] = 1
                        _DlW0qUWbZ["Parent"] = QNl_D_Zbo
                        local Q_OmHNnUIN = Instance["new"]("Frame")
                        Q_OmHNnUIN["Name"] = "FillFrame"
                        Q_OmHNnUIN["Size"] = UDim2["new"](DMmOZxlzp1 / 100, 0, 1, 0)
                        Q_OmHNnUIN["BackgroundColor3"] = Color3["fromRGB"](255, 170, 0)
                        Q_OmHNnUIN["BorderSizePixel"] = 0
                        Q_OmHNnUIN["Parent"] = QNl_D_Zbo
                        local pObNUxHm0xx = Instance["new"]("UICorner")
                        pObNUxHm0xx["CornerRadius"] = UDim["new"](0, 3)
                        pObNUxHm0xx["Parent"] = Q_OmHNnUIN
                        local QwbvmnOX = Instance["new"]("TextLabel")
                        QwbvmnOX["Name"] = "Label"
                        QwbvmnOX["BackgroundTransparency"] = 1
                        QwbvmnOX["Size"] = UDim2["new"](1, 0, 1, 0)
                        QwbvmnOX["Font"] = Enum["Font"]["GothamBold"]
                        QwbvmnOX["TextSize"] = 8
                        QwbvmnOX["TextColor3"] = Color3["fromRGB"](255, 255, 255)
                        QwbvmnOX["TextXAlignment"] = Enum["TextXAlignment"]["Center"]
                        QwbvmnOX["ZIndex"] = 2
                        QwbvmnOX["Parent"] = QNl_D_Zbo
                        local _UMbDXq = Instance["new"]("UIStroke")
                        _UMbDXq["Thickness"] = 1
                        _UMbDXq["Transparency"] = 0.2
                        _UMbDXq["Color"] = Color3["new"](0, 0, 0)
                        _UMbDXq["Parent"] = QwbvmnOX
                    else
                        if wMIzpxb1wZOzm["Adornee"] ~= wZIb1lHwI then
                            wMIzpxb1wZOzm["Adornee"] = wZIb1lHwI
                        end
                        local HXOpl1_x = (wZIb1lHwI["Size"]["Y"] / 2 + 2.5)
                        wMIzpxb1wZOzm["StudsOffset"] = Vector3["new"](0, HXOpl1_x, 0)
                        local BwHlO_n = wMIzpxb1wZOzm["FindFirstChild"](wMIzpxb1wZOzm, "BgFrame")
                        if BwHlO_n then
                            local OpbqmHQ0_0U = BwHlO_n["FindFirstChild"](BwHlO_n, "FillFrame")
                            if OpbqmHQ0_0U then
                                OpbqmHQ0_0U["Size"] = UDim2["new"](DMmOZxlzp1 / 100, 0, 1, 0)
                            end
                            local MzqMqxmNn = BwHlO_n["FindFirstChild"](BwHlO_n, "Label")
                            if MzqMqxmNn then
                                local Iw0NZZ = string.format("G%d", Nw1IxMvZUp1uQn)
                                local bMn1o = string.format("%s [%d%%]", Iw0NZZ, wqoxnw)
                                if _1OUbnbM["espGenShowPK"] then
                                    bMn1o = string.format("%s | P:%d K:%d", bMn1o, HmvlHUMuqZ, bZmZl)
                                end
                                MzqMqxmNn["Text"] = bMn1o
                            end
                        end
                    end
                else
                    if wMIzpxb1wZOzm then
                        wMIzpxb1wZOzm["Destroy"](wMIzpxb1wZOzm)
                        WbNXXpWu1ZmOxQ:SetAttribute("__BolongGenLastPct__", nil)
                        WbNXXpWu1ZmOxQ:SetAttribute("__BolongGenLastInfo__", nil)
                    end
                end
                return false
            end
            function MU_m1UmlXXDZ.UpdateGeneratorESP(DqmpxHwpI)
                local function ESPGeneratorFunction9()
                    if not _1OUbnbM["espGeneratorEnabled"] and not _1OUbnbM["espGeneratorProgressGen"] then
                        return
                    end
                    MU_m1UmlXXDZ.IsGeneratorCompleted(DqmpxHwpI)
                end
                pcall(function()
                    DqmpxHwpI:GetAttributeChangedSignal("RepairProgress"):Connect(ESPGeneratorFunction9)
                    DqmpxHwpI:GetAttributeChangedSignal("Progress"):Connect(ESPGeneratorFunction9)
                    DqmpxHwpI:GetAttributeChangedSignal("Completed"):Connect(ESPGeneratorFunction9)
                    DqmpxHwpI:GetAttributeChangedSignal("IsCompleted"):Connect(ESPGeneratorFunction9)
                    DqmpxHwpI:GetAttributeChangedSignal("PlayersRepairingCount"):Connect(ESPGeneratorFunction9)
                    DqmpxHwpI:GetAttributeChangedSignal("kickcount"):Connect(ESPGeneratorFunction9)
                end)
            end
            function MU_m1UmlXXDZ.UpdateObjectESPState(WZolNZZUQ, M0INvO)
                local function ESPGeneratorFunction10()
                    local WUqQb = ESPGeneratorFunction6(WZolNZZUQ, "Dropped") or ESPGeneratorFunction6(WZolNZZUQ, "IsDropped")
                    local pzUbHnvIUp = ESPGeneratorFunction6(WZolNZZUQ, "Broken") or ESPGeneratorFunction6(WZolNZZUQ, "IsBroken") or ESPGeneratorFunction6(WZolNZZUQ, "Destroyed")
                    if WUqQb or pzUbHnvIUp or M0INvO["isFake"] then
                        ESPGeneratorFunction8(WZolNZZUQ)
                        for O0qOuDQu, OXvXUQz in ipairs(lopX_WWOqz["cachedMapObjects"]["Pallets"]) do
                            if OXvXUQz == WZolNZZUQ then
                                table.remove(lopX_WWOqz["cachedMapObjects"]["Pallets"], O0qOuDQu)
                                break
                            end
                        end
                        lopX_WWOqz["cachedPalletMeta"][WZolNZZUQ] = nil
                    end
                end
                for M0X0vO, lxw_OXZUx_wq in ipairs({ "Dropped", "IsDropped", "Broken", "IsBroken", "Destroyed" }) do
                    WZolNZZUQ["GetAttributeChangedSignal"](WZolNZZUQ, lxw_OXZUx_wq):Connect(ESPGeneratorFunction10)
                end
                WZolNZZUQ["ChildAdded"]:Connect(function(pwOxQm)
                    if
                        pwOxQm["IsA"](pwOxQm, "ValueBase")
                        and (
                            pwOxQm["Name"] == "Dropped"
                            or pwOxQm["Name"] == "IsDropped"
                            or pwOxQm["Name"] == "Broken"
                            or pwOxQm["Name"] == "IsBroken"
                            or pwOxQm["Name"] == "Destroyed"
                        )
                    then
                        pwOxQm["Changed"]:Connect(ESPGeneratorFunction10)
                    end
                end)
            end
            function MU_m1UmlXXDZ.CacheMapObject(pQ1qZ_O)
                local BwINXNW1_ = pQ1qZ_O["Name"]
                if BwINXNW1_ == "Generator" then
                    table.insert(lopX_WWOqz["cachedMapObjects"]["Generators"], pQ1qZ_O)
                    if not lopX_WWOqz["genIndices"][pQ1qZ_O] then
                        if next(lopX_WWOqz["genIndices"]) == nil then
                            lopX_WWOqz["nextGenIndex"] = 1
                        end
                        lopX_WWOqz["genIndices"][pQ1qZ_O] = lopX_WWOqz["nextGenIndex"]
                        lopX_WWOqz["nextGenIndex"] = lopX_WWOqz["nextGenIndex"] + 1
                    end
                    if _1OUbnbM["espGeneratorEnabled"] then
                        MU_m1UmlXXDZ.IsGeneratorCompleted(pQ1qZ_O)
                        MU_m1UmlXXDZ.UpdateGeneratorESP(pQ1qZ_O)
                    end
                elseif BwINXNW1_ == "Hook" then
                    table.insert(lopX_WWOqz["cachedMapObjects"]["Hooks"], pQ1qZ_O)
                    local Nzx_Z_x = {}
                    local BbZo_Znp = pQ1qZ_O["FindFirstChild"](pQ1qZ_O, "Model")
                    if BbZo_Znp then
                        local function ESPGeneratorFunction11(Q_mIu)
                            for _1IOpQmNI0x, D0Q_NvU1_ in ipairs(Q_mIu["GetChildren"](Q_mIu)) do
                                if D0Q_NvU1_["IsA"](D0Q_NvU1_, "MeshPart") then
                                    table.insert(Nzx_Z_x, D0Q_NvU1_)
                                end
                                ESPGeneratorFunction11(D0Q_NvU1_)
                            end
                        end
                        ESPGeneratorFunction11(BbZo_Znp)
                    end
                    lopX_WWOqz["cachedHookMeshParts"][pQ1qZ_O] = Nzx_Z_x
                    if _1OUbnbM["espHookEnabled"] then
                        if #Nzx_Z_x > 0 then
                            for bp1QWu_, I_I1_v in ipairs(Nzx_Z_x) do
                                ESPGeneratorFunction7(I_I1_v, _1OUbnbM["espHookColor"])
                            end
                        else
                            ESPGeneratorFunction7(pQ1qZ_O, _1OUbnbM["espHookColor"])
                        end
                    end
                elseif BwINXNW1_ == "Gate" then
                    table.insert(lopX_WWOqz["cachedMapObjects"]["Gates"], pQ1qZ_O)
                    if _1OUbnbM["espGateEnabled"] then
                        ESPGeneratorFunction7(pQ1qZ_O, _1OUbnbM["espGateColor"])
                    end
                elseif BwINXNW1_ == "Pallet" or BwINXNW1_ == "Palletwrong" then
                    table.insert(lopX_WWOqz["cachedMapObjects"]["Pallets"], pQ1qZ_O)
                    local ouXHWnbUqUxQI = BwINXNW1_["lower"](BwINXNW1_)
                    local umnlNxuXI0I = (pQ1qZ_O["IsA"](pQ1qZ_O, "Model") and pQ1qZ_O["PrimaryPart"])
                        or pQ1qZ_O["FindFirstChildWhichIsA"](pQ1qZ_O, "BasePart", true)
                        or (pQ1qZ_O["IsA"](pQ1qZ_O, "BasePart") and pQ1qZ_O)
                    local ODWXlDI_W = ouXHWnbUqUxQI["find"](ouXHWnbUqUxQI, "fake")
                        or ouXHWnbUqUxQI["find"](ouXHWnbUqUxQI, "broken")
                        or ouXHWnbUqUxQI["find"](ouXHWnbUqUxQI, "destroyed")
                    local unOnuzNwqxxm = { ["part"] = umnlNxuXI0I, ["isFake"] = ODWXlDI_W and true or false }
                    lopX_WWOqz["cachedPalletMeta"][pQ1qZ_O] = unOnuzNwqxxm
                    if _1OUbnbM["espPalletEnabled"] and not unOnuzNwqxxm["isFake"] then
                        ESPGeneratorFunction7(pQ1qZ_O, _1OUbnbM["espPalletColor"])
                    end
                    MU_m1UmlXXDZ.UpdateObjectESPState(pQ1qZ_O, unOnuzNwqxxm)
                end
            end
            function MU_m1UmlXXDZ.UncacheMapObject(IXWWvX_m)
                local uwOZmOuwo0wW = IXWWvX_m["Name"]
                if uwOZmOuwo0wW == "Generator" then
                    for wHIxIOpqq, HXQ_0WH_plbnZM in ipairs(lopX_WWOqz["cachedMapObjects"]["Generators"]) do
                        if HXQ_0WH_plbnZM == IXWWvX_m then
                            table.remove(lopX_WWOqz["cachedMapObjects"]["Generators"], wHIxIOpqq)
                            break
                        end
                    end
                    lopX_WWOqz["genIndices"][IXWWvX_m] = nil
                    lopX_WWOqz["completedGenerators"][IXWWvX_m] = nil
                    ESPGeneratorFunction8(IXWWvX_m)
                    local un_n_OW = IXWWvX_m["FindFirstChild"](IXWWvX_m, "__BolongGenProgress__")
                    if un_n_OW then
                        un_n_OW["Destroy"](un_n_OW)
                    end
                    if next(lopX_WWOqz["genIndices"]) == nil then
                        lopX_WWOqz["nextGenIndex"] = 1
                    end
                elseif uwOZmOuwo0wW == "Hook" then
                    for HXv_zzz, HwqoOuO_zzb in ipairs(lopX_WWOqz["cachedMapObjects"]["Hooks"]) do
                        if HwqoOuO_zzb == IXWWvX_m then
                            table.remove(lopX_WWOqz["cachedMapObjects"]["Hooks"], HXv_zzz)
                            break
                        end
                    end
                    local MbInpHopoHM = lopX_WWOqz["cachedHookMeshParts"][IXWWvX_m]
                    if MbInpHopoHM then
                        for Dlno_, BlUlwbIu0 in ipairs(MbInpHopoHM) do
                            ESPGeneratorFunction8(BlUlwbIu0)
                        end
                    else
                        ESPGeneratorFunction8(IXWWvX_m)
                    end
                    lopX_WWOqz["cachedHookMeshParts"][IXWWvX_m] = nil
                elseif uwOZmOuwo0wW == "Gate" then
                    for pDzb_l_Un, QoZDnWuODnUn in ipairs(lopX_WWOqz["cachedMapObjects"]["Gates"]) do
                        if QoZDnWuODnUn == IXWWvX_m then
                            table.remove(lopX_WWOqz["cachedMapObjects"]["Gates"], pDzb_l_Un)
                            break
                        end
                    end
                    ESPGeneratorFunction8(IXWWvX_m)
                elseif uwOZmOuwo0wW == "Pallet" or uwOZmOuwo0wW == "Palletwrong" then
                    for owzUpOMWuH_, vlONOnIZXMZI in ipairs(lopX_WWOqz["cachedMapObjects"]["Pallets"]) do
                        if vlONOnIZXMZI == IXWWvX_m then
                            table.remove(lopX_WWOqz["cachedMapObjects"]["Pallets"], owzUpOMWuH_)
                            break
                        end
                    end
                    ESPGeneratorFunction8(IXWWvX_m)
                    lopX_WWOqz["cachedPalletMeta"][IXWWvX_m] = nil
                end
            end
            function MU_m1UmlXXDZ.BuildMapObjectCache(bXQuHlmM0WUxmW)
                if not bXQuHlmM0WUxmW then
                    return
                end
                lopX_WWOqz["cachedMapObjects"] = { ["Generators"] = {}, ["Pallets"] = {}, ["Hooks"] = {}, ["Gates"] = {} }
                lopX_WWOqz["cachedPalletMeta"] = {}
                lopX_WWOqz["cachedHookMeshParts"] = {}
                lopX_WWOqz["completedGenerators"] = {}
                lopX_WWOqz["genIndices"] = {}
                lopX_WWOqz["nextGenIndex"] = 1
                for vqmlnwNMIQ1, DQU11nNMp1 in ipairs(bXQuHlmM0WUxmW["GetDescendants"](bXQuHlmM0WUxmW)) do
                    MU_m1UmlXXDZ.CacheMapObject(DQU11nNMp1)
                end
            end
            function MU_m1UmlXXDZ.WatchMapObjects(qDvbp)
                if not qDvbp then
                    return
                end
                MU_m1UmlXXDZ.BuildMapObjectCache(qDvbp)
                qDvbp["DescendantAdded"]:Connect(MU_m1UmlXXDZ.CacheMapObject)
                qDvbp["DescendantRemoving"]:Connect(MU_m1UmlXXDZ.UncacheMapObject)
                lopX_WWOqz["objEspInitialized"] = true
            end
            function MU_m1UmlXXDZ.CreateWindowESP(B_I10pu)
                if not B_I10pu or not B_I10pu["Parent"] or lopX_WWOqz["windowEspObjects"][B_I10pu] then
                    return
                end
                local NWlmz = Instance["new"]("BoxHandleAdornment")
                NWlmz["Name"] = "WindowESP_Box"
                NWlmz["Adornee"] = B_I10pu
                NWlmz["Color3"] = _1OUbnbM["espWindowColor"]
                NWlmz["Transparency"] = 0.1
                NWlmz["Size"] = B_I10pu["Size"]
                NWlmz["AlwaysOnTop"] = true
                NWlmz["ZIndex"] = 10
                NWlmz["Parent"] = ESPGeneratorFunction5()
                lopX_WWOqz["windowEspObjects"][B_I10pu] = NWlmz
            end
            function MU_m1UmlXXDZ.RemoveWindowESP(MW1p0MvUluZO_N)
                local voHM1UQQH = lopX_WWOqz["windowEspObjects"][MW1p0MvUluZO_N]
                if voHM1UQQH then
                    pcall(function()
                        voHM1UQQH:Destroy()
                    end)
                    lopX_WWOqz["windowEspObjects"][MW1p0MvUluZO_N] = nil
                end
            end
            function MU_m1UmlXXDZ.FindWindowPart(Hvvnuq)
                if typeof(Hvvnuq) ~= "Instance" then
                    return nil
                end
                local obXpmN1Dxxn = string["lower"](Hvvnuq["Name"])
                if obXpmN1Dxxn == "window" and Hvvnuq["IsA"](Hvvnuq, "Model") then
                    local lWQZvXD = Hvvnuq["FindFirstChild"](Hvvnuq, "Bottom", true)
                    if lWQZvXD and lWQZvXD["IsA"](lWQZvXD, "BasePart") then
                        return lWQZvXD
                    end
                    return Hvvnuq["PrimaryPart"]
                end
                if obXpmN1Dxxn == "bottom" and Hvvnuq["IsA"](Hvvnuq, "BasePart") then
                    if Hvvnuq["Parent"] and string["lower"](Hvvnuq["Parent"]["Name"]) == "window" then
                        return Hvvnuq
                    end
                end
                return nil
            end
            function MU_m1UmlXXDZ.UpdateWindowESP(IbUXnHQWxzo)
                local OnNnDOUImqvnqH = MU_m1UmlXXDZ.FindWindowPart(IbUXnHQWxzo)
                if OnNnDOUImqvnqH then
                    if not lopX_WWOqz["_windowPartMap"][OnNnDOUImqvnqH] then
                        lopX_WWOqz["_windowPartMap"][OnNnDOUImqvnqH] = true
                        table.insert(lopX_WWOqz["_windowParts"], OnNnDOUImqvnqH)
                    end
                    if _1OUbnbM["espWindowEnabled"] and not lopX_WWOqz["windowEspObjects"][OnNnDOUImqvnqH] then
                        MU_m1UmlXXDZ.CreateWindowESP(OnNnDOUImqvnqH)
                    end
                end
            end
            wxl1Uo1UbDnnb["DescendantAdded"]:Connect(function(NMHqDMU)
                MU_m1UmlXXDZ.UpdateWindowESP(NMHqDMU)
            end)
            wxl1Uo1UbDnnb["DescendantRemoving"]:Connect(function(pWMpZMpQDnI)
                local H_IlxOH1_ZozZu = MU_m1UmlXXDZ.FindWindowPart(pWMpZMpQDnI) or pWMpZMpQDnI
                if lopX_WWOqz["_windowPartMap"][H_IlxOH1_ZozZu] then
                    lopX_WWOqz["_windowPartMap"][H_IlxOH1_ZozZu] = nil
                    for DOOOpHqX, woNlbmzUWoq in ipairs(lopX_WWOqz["_windowParts"]) do
                        if woNlbmzUWoq == H_IlxOH1_ZozZu then
                            table.remove(lopX_WWOqz["_windowParts"], DOOOpHqX)
                            break
                        end
                    end
                end
                if lopX_WWOqz["windowEspObjects"][H_IlxOH1_ZozZu] then
                    MU_m1UmlXXDZ.RemoveWindowESP(H_IlxOH1_ZozZu)
                end
            end)
            function MU_m1UmlXXDZ.CleanupWindowESP()
                for B1lpZ0IbXnmv1, oqWuOXHnwpMwQ in pairs(lopX_WWOqz["windowEspObjects"]) do
                    if not B1lpZ0IbXnmv1 or not B1lpZ0IbXnmv1["Parent"] then
                        MU_m1UmlXXDZ.RemoveWindowESP(B1lpZ0IbXnmv1)
                    end
                end
                if _1OUbnbM["espWindowEnabled"] then
                    for bbpbw0, qHIvzHwzUu in ipairs(lopX_WWOqz["_windowParts"]) do
                        if qHIvzHwzUu and qHIvzHwzUu["Parent"] and not lopX_WWOqz["windowEspObjects"][qHIvzHwzUu] then
                            MU_m1UmlXXDZ.CreateWindowESP(qHIvzHwzUu)
                        end
                    end
                end
            end
            task["spawn"](function()
                task["wait"](3)
                for QUnvXU_wvo0O, uuxwxMMlmxW in ipairs(wxl1Uo1UbDnnb["GetDescendants"](wxl1Uo1UbDnnb)) do
                    local blMqowM = MU_m1UmlXXDZ.FindWindowPart(uuxwxMMlmxW)
                    if blMqowM and not lopX_WWOqz["_windowPartMap"][blMqowM] then
                        lopX_WWOqz["_windowPartMap"][blMqowM] = true
                        table.insert(lopX_WWOqz["_windowParts"], blMqowM)
                    end
                end
                MU_m1UmlXXDZ.CleanupWindowESP()
            end)
            function ESPGeneratorFunction12()
                if not lopX_WWOqz["objEspInitialized"] then
                    return
                end
                local HlUInw = _1OUbnbM["espGeneratorEnabled"] or _1OUbnbM["espGeneratorProgressGen"]
                if HlUInw then
                    local pOZZIOnIM = {}
                    for lUmDQm, INI0xb1 in ipairs(lopX_WWOqz["cachedMapObjects"]["Generators"]) do
                        if INI0xb1 and INI0xb1["Parent"] then
                            local _qoZlQ0o = MU_m1UmlXXDZ.IsGeneratorCompleted(INI0xb1)
                            if not _qoZlQ0o then
                                table.insert(pOZZIOnIM, INI0xb1)
                            end
                        end
                    end
                    lopX_WWOqz["cachedMapObjects"]["Generators"] = pOZZIOnIM
                else
                    for bZobQ, Blooo1Nzw0q in ipairs(lopX_WWOqz["cachedMapObjects"]["Generators"]) do
                        if Blooo1Nzw0q and Blooo1Nzw0q["Parent"] then
                            ESPGeneratorFunction8(Blooo1Nzw0q)
                            local uUobqvuHWO = Blooo1Nzw0q["FindFirstChild"](Blooo1Nzw0q, "__BolongGenProgress__")
                            if uUobqvuHWO then
                                uUobqvuHWO["Destroy"](uUobqvuHWO)
                            end
                            Blooo1Nzw0q["SetAttribute"](Blooo1Nzw0q, "__BolongGenLastPct__", nil)
                        end
                    end
                end
                if _1OUbnbM["espPalletEnabled"] then
                    for bZWxb, _MIZmMm in ipairs(lopX_WWOqz["cachedMapObjects"]["Pallets"]) do
                        if _MIZmMm and _MIZmMm["Parent"] then
                            local bwmHI = lopX_WWOqz["cachedPalletMeta"][_MIZmMm]
                            if bwmHI and not bwmHI["isFake"] then
                                ESPGeneratorFunction7(_MIZmMm, _1OUbnbM["espPalletColor"])
                            end
                        end
                    end
                else
                    for qpqZIb, vmIOMoxIp0uI in ipairs(lopX_WWOqz["cachedMapObjects"]["Pallets"]) do
                        if vmIOMoxIp0uI then
                            ESPGeneratorFunction8(vmIOMoxIp0uI)
                        end
                    end
                end
                if _1OUbnbM["espHookEnabled"] then
                    for D0bXU1X, MpXII_MxzXz in ipairs(lopX_WWOqz["cachedMapObjects"]["Hooks"]) do
                        if MpXII_MxzXz and MpXII_MxzXz["Parent"] then
                            local BuwpD = lopX_WWOqz["cachedHookMeshParts"][MpXII_MxzXz]
                            if BuwpD then
                                for vpD0vZuDvI, unWDH in ipairs(BuwpD) do
                                    ESPGeneratorFunction7(unWDH, _1OUbnbM["espHookColor"])
                                end
                            else
                                ESPGeneratorFunction7(MpXII_MxzXz, _1OUbnbM["espHookColor"])
                            end
                        end
                    end
                else
                    for Ipx1z_bwXH_I, _xwUpNDNUMDXzz in ipairs(lopX_WWOqz["cachedMapObjects"]["Hooks"]) do
                        if _xwUpNDNUMDXzz and _xwUpNDNUMDXzz["Parent"] then
                            local uHQINI = lopX_WWOqz["cachedHookMeshParts"][_xwUpNDNUMDXzz]
                            if uHQINI then
                                for NmmDxHZIwxOQI, vpOxQWDpNl in ipairs(uHQINI) do
                                    ESPGeneratorFunction8(vpOxQWDpNl)
                                end
                            else
                                ESPGeneratorFunction8(_xwUpNDNUMDXzz)
                            end
                        end
                    end
                end
                if _1OUbnbM["espGateEnabled"] then
                    for plnnzombxl, ID0ZwnOW in ipairs(lopX_WWOqz["cachedMapObjects"]["Gates"]) do
                        if ID0ZwnOW and ID0ZwnOW["Parent"] then
                            ESPGeneratorFunction7(ID0ZwnOW, _1OUbnbM["espGateColor"])
                        end
                    end
                else
                    for Ww_XxU_qwWmp, QpomX1oXWW in ipairs(lopX_WWOqz["cachedMapObjects"]["Gates"]) do
                        if QpomX1oXWW and QpomX1oXWW["Parent"] then
                            ESPGeneratorFunction8(QpomX1oXWW)
                        end
                    end
                end
                if _1OUbnbM["espWindowEnabled"] then
                    MU_m1UmlXXDZ.CleanupWindowESP()
                    for IHN1ZWX, NuwbUzZl in pairs(lopX_WWOqz["windowEspObjects"]) do
                        if IHN1ZWX and IHN1ZWX["Parent"] and NuwbUzZl and NuwbUzZl["Parent"] then
                            pcall(function()
                                local OUqbzQvMwWX = _1OUbnbM["espWindowColor"]
                                NuwbUzZl["Color3"] = OUqbzQvMwWX
                                NuwbUzZl["Size"] = IHN1ZWX["Size"]
                            end)
                        else
                            MU_m1UmlXXDZ.RemoveWindowESP(IHN1ZWX)
                        end
                    end
                else
                    for uqoD1ZDmmIxp, oo10vZHZ in pairs(lopX_WWOqz["windowEspObjects"]) do
                        MU_m1UmlXXDZ.RemoveWindowESP(uqoD1ZDmmIxp)
                    end
                end
            end
            do
                MU_m1UmlXXDZ.wUNbX0ouvI = wxl1Uo1UbDnnb["FindFirstChild"](wxl1Uo1UbDnnb, "Map")
                if MU_m1UmlXXDZ.wUNbX0ouvI then
                    MU_m1UmlXXDZ.WatchMapObjects(MU_m1UmlXXDZ.wUNbX0ouvI)
                end
                wxl1Uo1UbDnnb["ChildAdded"]:Connect(function(DvvzoXXI)
                    if DvvzoXXI["Name"] == "Map" then
                        task["wait"](2)
                        MU_m1UmlXXDZ.WatchMapObjects(DvvzoXXI)
                    end
                end)
                wxl1Uo1UbDnnb["ChildRemoved"]:Connect(function(obOob)
                    if obOob["Name"] == "Map" then
                        lopX_WWOqz["cachedMapObjects"] = { ["Generators"] = {}, ["Pallets"] = {}, ["Hooks"] = {}, ["Gates"] = {} }
                        lopX_WWOqz["cachedPalletMeta"] = {}
                        lopX_WWOqz["cachedHookMeshParts"] = {}
                        lopX_WWOqz["completedGenerators"] = {}
                        lopX_WWOqz["objEspInitialized"] = false
                        lopX_WWOqz["genIndices"] = {}
                        lopX_WWOqz["nextGenIndex"] = 1
                    end
                end)
            end
            CharacterFunction6("GenESPUpdater", 0.5, function()
                if not _1OUbnbM["espGeneratorEnabled"] and not _1OUbnbM["espGeneratorProgressGen"] then
                    return
                end
                for HbnHb, H_ZMnUbDWlWQ in ipairs(lopX_WWOqz["cachedMapObjects"]["Generators"]) do
                    if H_ZMnUbDWlWQ and H_ZMnUbDWlWQ["Parent"] and not lopX_WWOqz["completedGenerators"][H_ZMnUbDWlWQ] then
                        MU_m1UmlXXDZ.IsGeneratorCompleted(H_ZMnUbDWlWQ)
                    end
                end
            end)
        end
        local ESPPlayerFunction3, ESPPlayerFunction4
        do
            local NxMMUZwoN = {}
            MU_m1UmlXXDZ.WNHDobZQ = {}
            function ESPPlayerFunction3(WnzxpWl)
                local vIZXpmWlH = lopX_WWOqz["scpEspObjects"][WnzxpWl]
                if vIZXpmWlH then
                    if vIZXpmWlH["highlight"] and vIZXpmWlH["highlight"]["Parent"] then
                        vIZXpmWlH["highlight"]:Destroy()
                    end
                    if vIZXpmWlH["bilboard"] and vIZXpmWlH["bilboard"]["Parent"] then
                        vIZXpmWlH["bilboard"]:Destroy()
                    end
                    lopX_WWOqz["scpEspObjects"][WnzxpWl] = nil
                end
            end
            function MU_m1UmlXXDZ.CreateScpHighlight(IwNxxz_)
                local ul1ouMIOp = Instance["new"]("Highlight")
                ul1ouMIOp["Name"] = "__BolongScpHl__"
                ul1ouMIOp["Adornee"] = IwNxxz_
                ul1ouMIOp["FillColor"] = _1OUbnbM["espScpColor"]
                ul1ouMIOp["OutlineColor"] = _1OUbnbM["espScpColor"]
                ul1ouMIOp["FillTransparency"] = 0.4
                ul1ouMIOp["OutlineTransparency"] = 0
                ul1ouMIOp["DepthMode"] = Enum["HighlightDepthMode"]["AlwaysOnTop"]
                ul1ouMIOp["Enabled"] = true
                ul1ouMIOp["Parent"] = ESPGeneratorFunction5()
                local NzHbpwDoH = Instance["new"]("BillboardGui")
                NzHbpwDoH["Name"] = "__BolongScpBb__"
                NzHbpwDoH["AlwaysOnTop"] = true
                NzHbpwDoH["Size"] = UDim2["new"](0, 140, 0, 18)
                NzHbpwDoH["StudsOffset"] = Vector3["new"](0, 4, 0)
                NzHbpwDoH["MaxDistance"] = _1OUbnbM["espScpDistance"]
                NzHbpwDoH["Parent"] = ESPGeneratorFunction5()
                local NQQloH = Instance["new"]("TextLabel")
                NQQloH["Size"] = UDim2["new"](1, 0, 1, 0)
                NQQloH["BackgroundTransparency"] = 1
                NQQloH["TextColor3"] = Color3["fromRGB"](255, 255, 255)
                NQQloH["TextStrokeTransparency"] = 0
                NQQloH["TextStrokeColor3"] = Color3["new"](0, 0, 0)
                NQQloH["TextSize"] = 12
                NQQloH["Font"] = Enum["Font"]["GothamBold"]
                NQQloH["Text"] = _1OUbnbM["espScpShowName"] and "zombie" or ""
                NQQloH["Parent"] = NzHbpwDoH
                lopX_WWOqz["scpEspObjects"][IwNxxz_] = { ["highlight"] = ul1ouMIOp, ["bilboard"] = NzHbpwDoH, ["label"] = NQQloH }
            end
            function ESPPlayerFunction4()
                if not lopX_WWOqz["scpEspObjects"] then
                    return
                end
                local N_UZvww_ = MU_m1UmlXXDZ.GetCameraPosition()
                local BWWMblqpxO1I = {}
                for qW_ZD, uxxn_QmIx in pairs(lopX_WWOqz["scpEspObjects"]) do
                    if not qW_ZD or not qW_ZD["Parent"] then
                        BWWMblqpxO1I[#BWWMblqpxO1I + 1] = qW_ZD
                    else
                        local lNIpbwm1QHMz = true
                        if N_UZvww_ then
                            local DMHuDXO = AimbotFunction2(qW_ZD)
                            if DMHuDXO then
                                lNIpbwm1QHMz = (DMHuDXO["Position"] - N_UZvww_)["Magnitude"] <= _1OUbnbM["espScpDistance"]
                            end
                        end
                        if uxxn_QmIx["highlight"] and uxxn_QmIx["highlight"]["Parent"] then
                            if uxxn_QmIx["highlight"]["FillColor"] ~= _1OUbnbM["espScpColor"] then
                                uxxn_QmIx["highlight"]["FillColor"] = _1OUbnbM["espScpColor"]
                                uxxn_QmIx["highlight"]["OutlineColor"] = _1OUbnbM["espScpColor"]
                            end
                            if uxxn_QmIx["highlight"]["Enabled"] ~= lNIpbwm1QHMz then
                                uxxn_QmIx["highlight"]["Enabled"] = lNIpbwm1QHMz
                            end
                        end
                        if uxxn_QmIx["bilboard"] then
                            uxxn_QmIx["bilboard"]["MaxDistance"] = _1OUbnbM["espScpDistance"]
                            if uxxn_QmIx["bilboard"]["Enabled"] ~= lNIpbwm1QHMz then
                                uxxn_QmIx["bilboard"]["Enabled"] = lNIpbwm1QHMz
                            end
                            if uxxn_QmIx["label"] then
                                local _mH_qpnIQ = _1OUbnbM["espScpShowName"] and "zombie" or ""
                                if uxxn_QmIx["label"]["Text"] ~= _mH_qpnIQ then
                                    uxxn_QmIx["label"]["Text"] = _mH_qpnIQ
                                end
                            end
                        end
                    end
                end
                for NOZMNl0xl = 1, #BWWMblqpxO1I do
                    ESPPlayerFunction3(BWWMblqpxO1I[NOZMNl0xl])
                end
            end
            function MU_m1UmlXXDZ.UpdateScpESP(uN0bb1pXbmZ)
                if not uN0bb1pXbmZ["IsA"](uN0bb1pXbmZ, "Model") then
                    return
                end
                if Q_qlzpNO1["Character"] and uN0bb1pXbmZ == Q_qlzpNO1["Character"] then
                    return
                end
                for OH0uuXlDZln1v, HDNm0O_xm in ipairs(WIDWH["GetPlayers"](WIDWH)) do
                    if HDNm0O_xm["Character"] and uN0bb1pXbmZ == HDNm0O_xm["Character"] then
                        return
                    end
                end
                if not AimbotFunction(uN0bb1pXbmZ["Name"]) then
                    return
                end
                if MU_m1UmlXXDZ.WNHDobZQ[uN0bb1pXbmZ] then
                    return
                end
                MU_m1UmlXXDZ.WNHDobZQ[uN0bb1pXbmZ] = true
                table.insert(NxMMUZwoN, uN0bb1pXbmZ)
                if _1OUbnbM["espScpEnabled"] and not lopX_WWOqz["scpEspObjects"][uN0bb1pXbmZ] then
                    MU_m1UmlXXDZ.CreateScpHighlight(uN0bb1pXbmZ)
                end
            end
            function MU_m1UmlXXDZ.RemoveESPEntry(oOqbulW1HQWqvl)
                if not MU_m1UmlXXDZ.WNHDobZQ[oOqbulW1HQWqvl] then
                    return
                end
                MU_m1UmlXXDZ.WNHDobZQ[oOqbulW1HQWqvl] = nil
                for _ODvQO_, lHOWX in ipairs(NxMMUZwoN) do
                    if lHOWX == oOqbulW1HQWqvl then
                        table.remove(NxMMUZwoN, _ODvQO_)
                        break
                    end
                end
                ESPPlayerFunction3(oOqbulW1HQWqvl)
            end
            wxl1Uo1UbDnnb["DescendantAdded"]:Connect(MU_m1UmlXXDZ.UpdateScpESP)
            wxl1Uo1UbDnnb["DescendantRemoving"]:Connect(MU_m1UmlXXDZ.RemoveESPEntry)
            MU_m1UmlXXDZ.Mp0lHNqQM = {}
            for ODXXNvl, MQnWqIw_QHxMwm in ipairs(WIDWH["GetPlayers"](WIDWH)) do
                if MQnWqIw_QHxMwm["Character"] then
                    MU_m1UmlXXDZ.Mp0lHNqQM[MQnWqIw_QHxMwm["Character"]] = true
                end
            end
            for _IIMXUbW, DbpNZ_ in ipairs(wxl1Uo1UbDnnb["GetDescendants"](wxl1Uo1UbDnnb)) do
                if DbpNZ_["IsA"](DbpNZ_, "Model") and not MU_m1UmlXXDZ.Mp0lHNqQM[DbpNZ_] and AimbotFunction(DbpNZ_["Name"]) then
                    MU_m1UmlXXDZ.WNHDobZQ[DbpNZ_] = true
                    table.insert(NxMMUZwoN, DbpNZ_)
                end
            end
            CharacterFunction6("ScpESP", 0.5, function()
                if not _1OUbnbM["espScpEnabled"] then
                    for pllzI1, lWUNqQZlq0Wqmq in pairs(lopX_WWOqz["scpEspObjects"]) do
                        ESPPlayerFunction3(pllzI1)
                    end
                    return
                end
                local _bv1bv = {}
                for wzONOz, NbZ0nx_u1 in pairs(lopX_WWOqz["scpEspObjects"]) do
                    if not wzONOz or not wzONOz["Parent"] then
                        _bv1bv[#_bv1bv + 1] = wzONOz
                    end
                end
                for QOoDu1Nn = 1, #_bv1bv do
                    ESPPlayerFunction3(_bv1bv[QOoDu1Nn])
                end
                for BuOuv_Dx = 1, #NxMMUZwoN do
                    local IZu1_Z = NxMMUZwoN[BuOuv_Dx]
                    if IZu1_Z and IZu1_Z["Parent"] and not lopX_WWOqz["scpEspObjects"][IZu1_Z] then
                        MU_m1UmlXXDZ.CreateScpHighlight(IZu1_Z)
                    end
                end
                ESPPlayerFunction4()
            end)
        end
        do
            local function HealingFunction(wDQI1vInnIoWmv, QHwUxMqwn)
                if wDQI1vInnIoWmv == Q_qlzpNO1 then
                    return
                end
                if not QHwUxMqwn or not QHwUxMqwn["Parent"] or wDQI1vInnIoWmv["Character"] ~= QHwUxMqwn then
                    return
                end
                MU_m1UmlXXDZ.UpdatePlayerESP(wDQI1vInnIoWmv, QHwUxMqwn)
                MU_m1UmlXXDZ.UpdatePlayerOutline(wDQI1vInnIoWmv, QHwUxMqwn)
            end
            function MU_m1UmlXXDZ.OnPlayerAdded(IZubWxmqDuon)
                if IZubWxmqDuon == Q_qlzpNO1 then
                    return
                end
                lZxmm(IZubWxmqDuon)
                wzlZvxlz1Hzz(IZubWxmqDuon)
                if IZubWxmqDuon["Character"] then
                    task["spawn"](function()
                        HealingFunction(IZubWxmqDuon, IZubWxmqDuon["Character"])
                    end)
                end
                IZubWxmqDuon["CharacterAdded"]:Connect(function(NmXQD)
                    task["spawn"](function()
                        HealingFunction(IZubWxmqDuon, NmXQD)
                    end)
                end)
            end
            function MU_m1UmlXXDZ.OnPlayerRemoving(uZuQoqQ)
                MU_m1UmlXXDZ.RemovePlayerESP(uZuQoqQ)
            end
            WIDWH["PlayerAdded"]:Connect(MU_m1UmlXXDZ.OnPlayerAdded)
            WIDWH["PlayerRemoving"]:Connect(MU_m1UmlXXDZ.OnPlayerRemoving)
            for _nO_nb0p_mnDQM, voxZmOODo in ipairs(WIDWH["GetPlayers"](WIDWH)) do
                if voxZmOODo ~= Q_qlzpNO1 then
                    MU_m1UmlXXDZ.OnPlayerAdded(voxZmOODo)
                end
            end
        end
        local qpHmobQ1Ol = nil
        CharacterFunction6("GodMode", 0.2, function()
            if not _1OUbnbM["godMode"] then
                return
            end
            local vxOnN0o = Q_qlzpNO1["Character"]
            if not vxOnN0o then
                return
            end
            local WbnbWQvz = vxOnN0o["FindFirstChildOfClass"](vxOnN0o, "Humanoid")
            if not WbnbWQvz then
                return
            end
            local vIwuo = WbnbWQvz["MaxHealth"]
            local lMxQv = WbnbWQvz["Health"]
            if qpHmobQ1Ol ~= nil and lMxQv < qpHmobQ1Ol and lMxQv > 0 then
                pcall(function()
                    WbnbWQvz["Health"] = vIwuo
                end)
            end
            qpHmobQ1Ol = WbnbWQvz["Health"]
            pcall(function()
                local bpwWlxnnp = WbnbWQvz["GetState"](WbnbWQvz)
                if bpwWlxnnp == Enum["HumanoidStateType"]["Dead"] then
                    WbnbWQvz["Health"] = vIwuo
                    WbnbWQvz:ChangeState(Enum["HumanoidStateType"]["Running"])
                    qpHmobQ1Ol = vIwuo
                elseif bpwWlxnnp == Enum["HumanoidStateType"]["Ragdoll"] or bpwWlxnnp == Enum["HumanoidStateType"]["FallingDown"] then
                    WbnbWQvz["ChangeState"](WbnbWQvz, Enum["HumanoidStateType"]["GetingUp"])
                end
            end)
        end)
        function MU_m1UmlXXDZ.ApplyCombatModifiers()
            local _ulHu = Q_qlzpNO1["Character"]
            local v1pNIMo = _ulHu and _ulHu["FindFirstChildOfClass"](_ulHu, "Humanoid")
            if not v1pNIMo then
                return
            end
            if _1OUbnbM["godMode"] then
                pcall(function()
                    v1pNIMo:SetStateEnabled(Enum["HumanoidStateType"]["Dead"], false)
                end)
                pcall(function()
                    v1pNIMo:SetStateEnabled(Enum["HumanoidStateType"]["Ragdoll"], false)
                end)
                pcall(function()
                    v1pNIMo:SetStateEnabled(Enum["HumanoidStateType"]["FallingDown"], false)
                end)
            else
                pcall(function()
                    v1pNIMo:SetStateEnabled(Enum["HumanoidStateType"]["Dead"], true)
                end)
                pcall(function()
                    v1pNIMo:SetStateEnabled(Enum["HumanoidStateType"]["Ragdoll"], true)
                end)
                pcall(function()
                    v1pNIMo:SetStateEnabled(Enum["HumanoidStateType"]["FallingDown"], true)
                end)
            end
        end
        Q_qlzpNO1["CharacterAdded"]:Connect(MU_m1UmlXXDZ.ApplyCombatModifiers)
        MU_m1UmlXXDZ.wzUqz1IoMHDb = { "Dot", "Circle", "Circle + Dot", "Plus", "Cross (X)", "T-Shape", "Square" }
        do
            MU_m1UmlXXDZ.uo10wX0MDNxIX = 80
            MU_m1UmlXXDZ.wxnlux0OXxv = MU_m1UmlXXDZ.uo10wX0MDNxIX / 2
            MU_m1UmlXXDZ.BpNMwpl_vQNb = {}
            function MU_m1UmlXXDZ.CreateESPLabel(DMXUImqz1DQ0Z, NUqwUxDZu, ob_pXboUx1mO, _pzHQ1ImUmmo, Nllpl1O, WmH_Q, Op1uW_vu, IpxHIIQuNvvIIo)
                local lvbHnzD = Instance["new"]("Frame")
                lvbHnzD["Name"] = IpxHIIQuNvvIIo or "CH_Part"
                lvbHnzD["BackgroundColor3"] = WmH_Q
                lvbHnzD["BackgroundTransparency"] = Op1uW_vu
                lvbHnzD["BorderSizePixel"] = 0
                lvbHnzD["Size"] = UDim2["fromOffset"](math.max(1, math["round"](ob_pXboUx1mO)), math.max(1, math["round"](_pzHQ1ImUmmo)))
                lvbHnzD["AnchorPoint"] = Vector2["new"](0.5, 0.5)
                lvbHnzD["Position"] = UDim2["fromOffset"](math["round"](DMXUImqz1DQ0Z), math["round"](NUqwUxDZu))
                if Nllpl1O ~= 0 then
                    lvbHnzD["Rotation"] = Nllpl1O
                end
                return lvbHnzD
            end
            function MU_m1UmlXXDZ.GetCrosshairScale(DXzWONQlQxQ)
                return 0.3 + (math.clamp(DXzWONQlQxQ, 1, 100) / 100) * 2.2
            end
            MU_m1UmlXXDZ.BpNMwpl_vQNb["Plus"] = function(QMuXHuzZUnIUnm, IIob1, DxwmMNwQmu)
                local QlMXuQXZ_obz = {}
                local B_boXvQZoMlI = MU_m1UmlXXDZ.GetCrosshairScale(QMuXHuzZUnIUnm)
                local QvOMnp = math.max(2, math["round"](2 * B_boXvQZoMlI))
                local OOWNv = math.max(8, math["round"](25 * B_boXvQZoMlI))
                local obxOQ = MU_m1UmlXXDZ.wxnlux0OXxv
                table.insert(QlMXuQXZ_obz, MU_m1UmlXXDZ.CreateESPLabel(obxOQ, obxOQ, QvOMnp, OOWNv, 0, IIob1, DxwmMNwQmu))
                table.insert(QlMXuQXZ_obz, MU_m1UmlXXDZ.CreateESPLabel(obxOQ, obxOQ, OOWNv, QvOMnp, 0, IIob1, DxwmMNwQmu))
                return QlMXuQXZ_obz, {}, {}
            end
            MU_m1UmlXXDZ.BpNMwpl_vQNb["Cross (X)"] = function(Wl0wwlHO1o, O1pmlz, MWbQ1uMvp0Ho)
                local WMUZnvNubwH = {}
                local M_WwqmXX_ = MU_m1UmlXXDZ.GetCrosshairScale(Wl0wwlHO1o)
                local oHNpOM = math.max(2, math["round"](2 * M_WwqmXX_))
                local _Uvvx = math.max(8, math["round"](25 * M_WwqmXX_))
                local oouQZv = MU_m1UmlXXDZ.wxnlux0OXxv
                table.insert(WMUZnvNubwH, MU_m1UmlXXDZ.CreateESPLabel(oouQZv, oouQZv, oHNpOM, _Uvvx, 45, O1pmlz, MWbQ1uMvp0Ho))
                table.insert(WMUZnvNubwH, MU_m1UmlXXDZ.CreateESPLabel(oouQZv, oouQZv, oHNpOM, _Uvvx, -45, O1pmlz, MWbQ1uMvp0Ho))
                return WMUZnvNubwH, {}, {}
            end
            MU_m1UmlXXDZ.BpNMwpl_vQNb["Dot"] = function(Dnbuoobvuv1NU, pWnnlvbDuDlq, qZ_QHIx_)
                local Qp_QmDz0v = {}
                local Nuq1vm = MU_m1UmlXXDZ.GetCrosshairScale(Dnbuoobvuv1NU)
                local OzQDo1IIDzxvu = math.max(3, math["round"](8 * Nuq1vm))
                local o0UM1olMp = MU_m1UmlXXDZ.wxnlux0OXxv
                local DXOmOQWMp0QI = MU_m1UmlXXDZ.CreateESPLabel(o0UM1olMp, o0UM1olMp, OzQDo1IIDzxvu, OzQDo1IIDzxvu, 0, pWnnlvbDuDlq, qZ_QHIx_, "CH_Dot")
                local MHINv1uUIm = Instance["new"]("UICorner")
                MHINv1uUIm["CornerRadius"] = UDim["new"](1, 0)
                MHINv1uUIm["Parent"] = DXOmOQWMp0QI
                table.insert(Qp_QmDz0v, DXOmOQWMp0QI)
                return Qp_QmDz0v, {}, {}
            end
            MU_m1UmlXXDZ.BpNMwpl_vQNb["Circle"] = function(IIXpQD, oW0MNZwXv, DX1_H1NnZX)
                local lnXxp_pmU, lzbUn_v = {}, {}
                local po0DIvx0DnQD = MU_m1UmlXXDZ.GetCrosshairScale(IIXpQD)
                local wmOpOqpDpDxHI = math.max(4, math["round"](12 * po0DIvx0DnQD))
                local qDvoM_ZDnQlI = math.max(2, math["round"](2 * po0DIvx0DnQD))
                local OlDnIWzo = MU_m1UmlXXDZ.wxnlux0OXxv
                local IZ1WpNmlDQqW = Instance["new"]("Frame")
                IZ1WpNmlDQqW["Name"] = "CH_Ring"
                IZ1WpNmlDQqW["BackgroundTransparency"] = 1
                IZ1WpNmlDQqW["Size"] = UDim2["fromOffset"](wmOpOqpDpDxHI * 2, wmOpOqpDpDxHI * 2)
                IZ1WpNmlDQqW["AnchorPoint"] = Vector2["new"](0.5, 0.5)
                IZ1WpNmlDQqW["Position"] = UDim2["fromOffset"](OlDnIWzo, OlDnIWzo)
                local lDlWW1 = Instance["new"]("UICorner")
                lDlWW1["CornerRadius"] = UDim["new"](1, 0)
                lDlWW1["Parent"] = IZ1WpNmlDQqW
                local OmounquWub10M = Instance["new"]("UIStroke")
                OmounquWub10M["Name"] = "CH_Stroke"
                OmounquWub10M["Color"] = oW0MNZwXv
                OmounquWub10M["Thickness"] = qDvoM_ZDnQlI
                OmounquWub10M["Transparency"] = DX1_H1NnZX
                OmounquWub10M["Parent"] = IZ1WpNmlDQqW
                table.insert(lnXxp_pmU, IZ1WpNmlDQqW)
                table.insert(lzbUn_v, OmounquWub10M)
                return lnXxp_pmU, lzbUn_v, {}
            end
            MU_m1UmlXXDZ.BpNMwpl_vQNb["Circle + Dot"] = function(pQN1wW, _XZplHNoulD, l0IWZbzMlNQ1I)
                local WDOz_xwMv, wO0NN1lDm, bvuIzlDoonXmI = {}, {}, {}
                local oZM1pDQOo = MU_m1UmlXXDZ.GetCrosshairScale(pQN1wW)
                local blHnn = math.max(4, math["round"](12 * oZM1pDQOo))
                local BnnxQbDv = math.max(2, math["round"](2 * oZM1pDQOo))
                local oWNUqxZvux = math.max(2, math["round"](4 * oZM1pDQOo))
                local IQXwqxqOpnnU = MU_m1UmlXXDZ.wxnlux0OXxv
                local wwplplMN = Instance["new"]("Frame")
                wwplplMN["Name"] = "CH_Ring"
                wwplplMN["BackgroundTransparency"] = 1
                wwplplMN["Size"] = UDim2["fromOffset"](blHnn * 2, blHnn * 2)
                wwplplMN["AnchorPoint"] = Vector2["new"](0.5, 0.5)
                wwplplMN["Position"] = UDim2["fromOffset"](IQXwqxqOpnnU, IQXwqxqOpnnU)
                local Q0pHHpz = Instance["new"]("UICorner")
                Q0pHHpz["CornerRadius"] = UDim["new"](1, 0)
                Q0pHHpz["Parent"] = wwplplMN
                local OwqlUUQbw0u = Instance["new"]("UIStroke")
                OwqlUUQbw0u["Name"] = "CH_Stroke"
                OwqlUUQbw0u["Color"] = _XZplHNoulD
                OwqlUUQbw0u["Thickness"] = BnnxQbDv
                OwqlUUQbw0u["Transparency"] = l0IWZbzMlNQ1I
                OwqlUUQbw0u["Parent"] = wwplplMN
                table.insert(WDOz_xwMv, wwplplMN)
                table.insert(wO0NN1lDm, OwqlUUQbw0u)
                local WbpUou0WuMZW = MU_m1UmlXXDZ.CreateESPLabel(IQXwqxqOpnnU, IQXwqxqOpnnU, oWNUqxZvux, oWNUqxZvux, 0, _XZplHNoulD, l0IWZbzMlNQ1I, "CH_Dot")
                local MD1Nvm1D = Instance["new"]("UICorner")
                MD1Nvm1D["CornerRadius"] = UDim["new"](1, 0)
                MD1Nvm1D["Parent"] = WbpUou0WuMZW
                table.insert(WDOz_xwMv, WbpUou0WuMZW)
                table.insert(bvuIzlDoonXmI, WbpUou0WuMZW)
                return WDOz_xwMv, wO0NN1lDm, bvuIzlDoonXmI
            end
            MU_m1UmlXXDZ.BpNMwpl_vQNb["T-Shape"] = function(wuxqlqUO, W_wQm_pxvl1HX, HvQIMH)
                local Hnx00UNu0OqwO = {}
                local oqvpUx = MU_m1UmlXXDZ.GetCrosshairScale(wuxqlqUO)
                local oWnOuMOxx = math.max(2, math["round"](2 * oqvpUx))
                local DWUvuqUIIompN = math.max(8, math["round"](25 * oqvpUx))
                local up1H1OlXbp = MU_m1UmlXXDZ.wxnlux0OXxv
                local DbH_mq0vnz = math["round"](DWUvuqUIIompN * 0.25)
                table.insert(Hnx00UNu0OqwO, MU_m1UmlXXDZ.CreateESPLabel(up1H1OlXbp, up1H1OlXbp - DbH_mq0vnz, DWUvuqUIIompN, oWnOuMOxx, 0, W_wQm_pxvl1HX, HvQIMH))
                table.insert(
                    Hnx00UNu0OqwO,
                    MU_m1UmlXXDZ.CreateESPLabel(up1H1OlXbp, up1H1OlXbp - DbH_mq0vnz + DWUvuqUIIompN / 2, oWnOuMOxx, DWUvuqUIIompN, 0, W_wQm_pxvl1HX, HvQIMH)
                )
                return Hnx00UNu0OqwO, {}, {}
            end
            MU_m1UmlXXDZ.BpNMwpl_vQNb["Square"] = function(qxuZobQxOnoMU, vNwXoHvlQIpIb_, Q0lqIbu)
                local puNzOQD1NDU1UW = {}
                local bQIvbp0XzInv = MU_m1UmlXXDZ.GetCrosshairScale(qxuZobQxOnoMU)
                local uo_bNDOX = math.max(2, math["round"](2 * bQIvbp0XzInv))
                local Hl0Ovu = math.max(8, math["round"](22 * bQIvbp0XzInv))
                local IzZDQMI = math.max(3, math["round"](Hl0Ovu * 0.4))
                local _ZXu0uquImx = MU_m1UmlXXDZ.wxnlux0OXxv
                local HlHZIXHv1UvXWI = Hl0Ovu / 2
                table.insert(
                    puNzOQD1NDU1UW,
                    MU_m1UmlXXDZ.CreateESPLabel(_ZXu0uquImx - HlHZIXHv1UvXWI + IzZDQMI / 2, _ZXu0uquImx - HlHZIXHv1UvXWI, IzZDQMI, uo_bNDOX, 0, vNwXoHvlQIpIb_, Q0lqIbu)
                )
                table.insert(
                    puNzOQD1NDU1UW,
                    MU_m1UmlXXDZ.CreateESPLabel(_ZXu0uquImx - HlHZIXHv1UvXWI, _ZXu0uquImx - HlHZIXHv1UvXWI + IzZDQMI / 2, uo_bNDOX, IzZDQMI, 0, vNwXoHvlQIpIb_, Q0lqIbu)
                )
                table.insert(
                    puNzOQD1NDU1UW,
                    MU_m1UmlXXDZ.CreateESPLabel(_ZXu0uquImx + HlHZIXHv1UvXWI - IzZDQMI / 2, _ZXu0uquImx - HlHZIXHv1UvXWI, IzZDQMI, uo_bNDOX, 0, vNwXoHvlQIpIb_, Q0lqIbu)
                )
                table.insert(
                    puNzOQD1NDU1UW,
                    MU_m1UmlXXDZ.CreateESPLabel(_ZXu0uquImx + HlHZIXHv1UvXWI, _ZXu0uquImx - HlHZIXHv1UvXWI + IzZDQMI / 2, uo_bNDOX, IzZDQMI, 0, vNwXoHvlQIpIb_, Q0lqIbu)
                )
                table.insert(
                    puNzOQD1NDU1UW,
                    MU_m1UmlXXDZ.CreateESPLabel(_ZXu0uquImx - HlHZIXHv1UvXWI + IzZDQMI / 2, _ZXu0uquImx + HlHZIXHv1UvXWI, IzZDQMI, uo_bNDOX, 0, vNwXoHvlQIpIb_, Q0lqIbu)
                )
                table.insert(
                    puNzOQD1NDU1UW,
                    MU_m1UmlXXDZ.CreateESPLabel(_ZXu0uquImx - HlHZIXHv1UvXWI, _ZXu0uquImx + HlHZIXHv1UvXWI - IzZDQMI / 2, uo_bNDOX, IzZDQMI, 0, vNwXoHvlQIpIb_, Q0lqIbu)
                )
                table.insert(
                    puNzOQD1NDU1UW,
                    MU_m1UmlXXDZ.CreateESPLabel(_ZXu0uquImx + HlHZIXHv1UvXWI - IzZDQMI / 2, _ZXu0uquImx + HlHZIXHv1UvXWI, IzZDQMI, uo_bNDOX, 0, vNwXoHvlQIpIb_, Q0lqIbu)
                )
                table.insert(
                    puNzOQD1NDU1UW,
                    MU_m1UmlXXDZ.CreateESPLabel(_ZXu0uquImx + HlHZIXHv1UvXWI, _ZXu0uquImx + HlHZIXHv1UvXWI - IzZDQMI / 2, uo_bNDOX, IzZDQMI, 0, vNwXoHvlQIpIb_, Q0lqIbu)
                )
                return puNzOQD1NDU1UW, {}, {}
            end
            MU_m1UmlXXDZ.CrosshairMethod = {}
            MU_m1UmlXXDZ.CrosshairMethod["__index"] = MU_m1UmlXXDZ.CrosshairMethod
            function MU_m1UmlXXDZ.CrosshairMethod.new()
                local MmxQv10u = setmetatable({}, MU_m1UmlXXDZ.CrosshairMethod)
                MmxQv10u["config"] = {
                    ["enabled"] = false,
                    ["style"] = _1OUbnbM["crosshairStyle"],
                    ["size"] = _1OUbnbM["crosshairSize"],
                    ["opacity"] = _1OUbnbM["crosshairOpacity"],
                    ["offsetX"] = 0,
                    ["offsetY"] = 0,
                    ["color"] = _1OUbnbM["crosshairColor"],
                    ["smooth"] = true,
                    ["smoothSpeed"] = 0.25,
                }
                MmxQv10u["gui"] = nil
                MmxQv10u["container"] = nil
                MmxQv10u["parent"] = nil
                MmxQv10u["parts"] = { ["frames"] = {}, ["strokes"] = {}, ["dots"] = {} }
                MmxQv10u["connections"] = {}
                MmxQv10u["renderConn"] = nil
                MmxQv10u["currentOffset"] = Vector2["new"](0, 0)
                MmxQv10u["targetOffset"] = Vector2["new"](0, 0)
                MmxQv10u["_frameCount"] = 0
                return MmxQv10u
            end
            function MU_m1UmlXXDZ.CrosshairMethod:_createGui()
                if self["gui"] and self["gui"]["Parent"] then
                    return
                end
                local poHwoov = Instance["new"]("ScreenGui")
                poHwoov["Name"] = "FallensCrosshair"
                poHwoov["ResetOnSpawn"] = false
                poHwoov["ZIndexBehavior"] = Enum["ZIndexBehavior"]["Sibling"]
                poHwoov["IgnoreGuiInset"] = true
                poHwoov["DisplayOrder"] = 999999
                local OODlozzvDIz = CharacterFunction4()
                poHwoov["Parent"] = OODlozzvDIz
                self["parent"] = OODlozzvDIz
                local vWOvuwQ0qI = Instance["new"]("Frame")
                vWOvuwQ0qI["Name"] = "Container"
                vWOvuwQ0qI["Size"] = UDim2["fromOffset"](MU_m1UmlXXDZ.uo10wX0MDNxIX, MU_m1UmlXXDZ.uo10wX0MDNxIX)
                vWOvuwQ0qI["AnchorPoint"] = Vector2["new"](0.5, 0.5)
                vWOvuwQ0qI["BackgroundTransparency"] = 1
                vWOvuwQ0qI["BorderSizePixel"] = 0
                vWOvuwQ0qI["Parent"] = poHwoov
                self["gui"] = poHwoov
                self["container"] = vWOvuwQ0qI
                self:_rebuild()
                self["targetOffset"] = Vector2["new"](self["config"]["offsetX"], self["config"]["offsetY"])
                self["currentOffset"] = self["targetOffset"]
                self:_updatePosition()
            end
            function MU_m1UmlXXDZ.CrosshairMethod:_rebuild()
                if not self["container"] then
                    return
                end
                for uwmwqqzbHoz_, oMDoHO_v in ipairs(self["parts"]["frames"]) do
                    pcall(function()
                        oMDoHO_v:Destroy()
                    end)
                end
                self["parts"] = { ["frames"] = {}, ["strokes"] = {}, ["dots"] = {} }
                local _oDZzMoHZzw_p = MU_m1UmlXXDZ.BpNMwpl_vQNb[self["config"]["style"]]
                if not _oDZzMoHZzw_p then
                    return
                end
                local lXonOIpwu1O1O = 1 - self["config"]["opacity"]
                local wnNbqO0IMmu, wpbZDOz, No1XXIoUzmlmW_ = _oDZzMoHZzw_p(self["config"]["size"], self["config"]["color"], lXonOIpwu1O1O)
                for WubDovbI, uqZHHoI1Wo in ipairs(wnNbqO0IMmu) do
                    uqZHHoI1Wo["Parent"] = self["container"]
                    table.insert(self["parts"]["frames"], uqZHHoI1Wo)
                end
                for ObNQpZWuWNWb, QqZQxWNvlH in ipairs(wpbZDOz) do
                    table.insert(self["parts"]["strokes"], QqZQxWNvlH)
                end
                self["parts"]["dots"] = No1XXIoUzmlmW_ or {}
            end
            function MU_m1UmlXXDZ.CrosshairMethod:_updateColors()
                local qZQOWlzxp_w = self["config"]["color"]
                local vpDOHD = 1 - self["config"]["opacity"]
                local OnWulZlxWO = {}
                for qzmwQlobmIv, obouHwNl in ipairs(self["parts"]["dots"]) do
                    OnWulZlxWO[obouHwNl] = true
                end
                for u0nv0, QMXu1MHuw in ipairs(self["parts"]["frames"]) do
                    if QMXu1MHuw and QMXu1MHuw["Parent"] then
                        QMXu1MHuw["BackgroundColor3"] = OnWulZlxWO[QMXu1MHuw] and Color3["fromRGB"](255, 255, 255) or qZQOWlzxp_w
                        if not QMXu1MHuw["FindFirstChildWhichIsA"](QMXu1MHuw, "UIStroke") then
                            QMXu1MHuw["BackgroundTransparency"] = vpDOHD
                        end
                    end
                end
                for M_ubMMq, qIMZvmD in ipairs(self["parts"]["strokes"]) do
                    if qIMZvmD and qIMZvmD["Parent"] then
                        qIMZvmD["Color"] = qZQOWlzxp_w
                        qIMZvmD["Transparency"] = vpDOHD
                    end
                end
            end
            function MU_m1UmlXXDZ.CrosshairMethod:_updatePosition()
                if not self["container"] then
                    return
                end
                local wqDNn = wxl1Uo1UbDnnb["CurrentCamera"]
                if not wqDNn then
                    return
                end
                local BHQzXMwINzmzv = wqDNn["ViewportSize"]
                self["container"]["Position"] = UDim2["fromOffset"](BHQzXMwINzmzv["X"] * 0.5 + self["currentOffset"]["X"], BHQzXMwINzmzv["Y"] * 0.5 + self["currentOffset"]["Y"])
            end
            function MU_m1UmlXXDZ.CrosshairMethod:_hookCamera()
                if self["connections"]["camViewport"] then
                    self["connections"]["camViewport"]:Disconnect()
                    self["connections"]["camViewport"] = nil
                end
                local DpIInlXzoqXUXz = wxl1Uo1UbDnnb["CurrentCamera"]
                if DpIInlXzoqXUXz then
                    self["connections"]["camViewport"] = DpIInlXzoqXUXz["GetPropertyChangedSignal"](DpIInlXzoqXUXz, "ViewportSize"):Connect(function()
                        self:_updatePosition()
                    end)
                end
            end
            function MU_m1UmlXXDZ.CrosshairMethod:_setupConnections()
                self:_hookCamera()
                if not self["connections"]["camChange"] then
                    self["connections"]["camChange"] = wxl1Uo1UbDnnb["GetPropertyChangedSignal"](wxl1Uo1UbDnnb, "CurrentCamera"):Connect(function()
                        self:_hookCamera()
                        self:_updatePosition()
                    end)
                end
                if not self["connections"]["childRemoved"] then
                    self["connections"]["childRemoved"] = self["parent"]["ChildRemoved"]:Connect(function(No1lqHmb_wv)
                        if No1lqHmb_wv == self["gui"] and self["config"]["enabled"] then
                            self["gui"] = nil
                            self["container"] = nil
                            self["parts"] = { ["frames"] = {}, ["strokes"] = {}, ["dots"] = {} }
                            task["wait"](0.05)
                            if self["config"]["enabled"] then
                                self["_createGui"](self)
                            end
                        end
                    end)
                end
                if not self["connections"]["touchChanged"] then
                    self["connections"]["touchChanged"] = M_QbbvZ0IU["GetPropertyChangedSignal"](M_QbbvZ0IU, "TouchEnabled"):Connect(function()
                        self:_updatePosition()
                    end)
                end
            end
            function MU_m1UmlXXDZ.CrosshairMethod:_startRender()
                if self["renderConn"] then
                    return
                end
                self["renderConn"] = WwNbnqHIQwppl["RenderStepped"]:Connect(function(uwoWXzN)
                    if not self["config"]["enabled"] then
                        return
                    end
                    if not self["gui"] or not self["gui"]["Parent"] then
                        self["_createGui"](self)
                        return
                    end
                    if not self["gui"]["Enabled"] then
                        self["gui"]["Enabled"] = true
                    end
                    self["_frameCount"] = self["_frameCount"] + 1
                    if self["_frameCount"] % 30 == 0 then
                        local l1x1mX_vUQ = false
                        for D1NqovI, QN1pIb in ipairs(self["parts"]["frames"]) do
                            if QN1pIb and QN1pIb["Parent"] then
                                l1x1mX_vUQ = true
                                break
                            end
                        end
                        if not l1x1mX_vUQ and #self["parts"]["frames"] > 0 then
                            self["_rebuild"](self)
                        end
                    end
                    if self["config"]["smooth"] then
                        local wWO_xlW = self["targetOffset"] - self["currentOffset"]
                        if wWO_xlW["Magnitude"] > 0.01 then
                            local W_qpxXIIZoww = 1 - math["pow"](1 - self["config"]["smoothSpeed"], uwoWXzN * 60)
                            self["currentOffset"] = self["currentOffset"]:Lerp(self["targetOffset"], W_qpxXIIZoww)
                            self:_updatePosition()
                        end
                    end
                end)
            end
            function MU_m1UmlXXDZ.CrosshairMethod:_stopRender()
                if self["renderConn"] then
                    self["renderConn"]:Disconnect()
                    self["renderConn"] = nil
                end
            end
            function MU_m1UmlXXDZ.CrosshairMethod:SetEnabled(MwMlouOZ)
                self["config"]["enabled"] = MwMlouOZ
                if MwMlouOZ then
                    if not self["gui"] or not self["gui"]["Parent"] then
                        self["_createGui"](self)
                        self:_setupConnections()
                    end
                    self["gui"]["Enabled"] = true
                    self["targetOffset"] = Vector2["new"](self["config"]["offsetX"], self["config"]["offsetY"])
                    self["currentOffset"] = self["targetOffset"]
                    self:_updatePosition()
                    self:_startRender()
                else
                    self["_stopRender"](self)
                    if self["gui"] then
                        self["gui"]["Enabled"] = false
                    end
                end
            end
            function MU_m1UmlXXDZ.CrosshairMethod:SetStyle(qqozo1)
                self["config"]["style"] = qqozo1
                if self["config"]["enabled"] and self["gui"] then
                    self["_rebuild"](self)
                end
            end
            function MU_m1UmlXXDZ.CrosshairMethod:SetSize(uXnpvqwHpX)
                self["config"]["size"] = uXnpvqwHpX
                if self["config"]["enabled"] and self["gui"] then
                    self["_rebuild"](self)
                end
            end
            function MU_m1UmlXXDZ.CrosshairMethod:SetOpacity(qZoInHnOXHzm)
                self["config"]["opacity"] = qZoInHnOXHzm
                if self["config"]["enabled"] and self["gui"] then
                    self["_updateColors"](self)
                end
            end
            function MU_m1UmlXXDZ.CrosshairMethod:SetColor(NOX_pZ_nu)
                self["config"]["color"] = NOX_pZ_nu
                if self["config"]["enabled"] and self["gui"] then
                    self["_updateColors"](self)
                end
            end
            function MU_m1UmlXXDZ.CrosshairMethod:SetOffsetX(qMNWuXXDMv)
                self["config"]["offsetX"] = qMNWuXXDMv
                self["targetOffset"] = Vector2["new"](qMNWuXXDMv, self["config"]["offsetY"])
                if not self["config"]["smooth"] and self["config"]["enabled"] then
                    self["currentOffset"] = self["targetOffset"]
                    self:_updatePosition()
                end
            end
            function MU_m1UmlXXDZ.CrosshairMethod:SetOffsetY(NQzZnNNl)
                self["config"]["offsetY"] = NQzZnNNl
                self["targetOffset"] = Vector2["new"](self["config"]["offsetX"], NQzZnNNl)
                if not self["config"]["smooth"] and self["config"]["enabled"] then
                    self["currentOffset"] = self["targetOffset"]
                    self:_updatePosition()
                end
            end
            function MU_m1UmlXXDZ.CrosshairMethod:Destroy()
                self["config"]["enabled"] = false
                self["_stopRender"](self)
                for pbnWMwl, qUqnwubNxN in pairs(self["connections"]) do
                    pcall(function()
                        qUqnwubNxN:Disconnect()
                    end)
                end
                self["connections"] = {}
                if self["gui"] then
                    pcall(function()
                        self["gui"]:Destroy()
                    end)
                end
                self["gui"] = nil
                self["container"] = nil
                self["parts"] = { ["frames"] = {}, ["strokes"] = {}, ["dots"] = {} }
            end
            MU_m1UmlXXDZ.QXpZWDZl = MU_m1UmlXXDZ.CrosshairMethod["new"]()
        end
        do
            MU_m1UmlXXDZ.DwHDoXNzD0bZX = nil
            function MU_m1UmlXXDZ.UpdateCrosshairInput(NMp1oNu)
                local MxqWZ = wxl1Uo1UbDnnb["CurrentCamera"]
                if not MxqWZ then
                    return
                end
                if MU_m1UmlXXDZ.DwHDoXNzD0bZX == nil then
                    MU_m1UmlXXDZ.DwHDoXNzD0bZX = MxqWZ["FieldOfView"]
                end
                MxqWZ["FieldOfView"] = NMp1oNu
            end
            function MU_m1UmlXXDZ.AimbotMethod2()
                local qbW_0mN = wxl1Uo1UbDnnb["CurrentCamera"]
                if qbW_0mN and MU_m1UmlXXDZ.DwHDoXNzD0bZX then
                    qbW_0mN["FieldOfView"] = MU_m1UmlXXDZ.DwHDoXNzD0bZX
                end
                MU_m1UmlXXDZ.DwHDoXNzD0bZX = nil
            end
            function MU_m1UmlXXDZ.AimbotMethod3()
                local HZIHqDQ0wbDo = wxl1Uo1UbDnnb["CurrentCamera"]
                if not HZIHqDQ0wbDo then
                    return
                end
                HZIHqDQ0wbDo["GetPropertyChangedSignal"](HZIHqDQ0wbDo, "FieldOfView"):Connect(function()
                    if _1OUbnbM["lockFovEnabled"] and HZIHqDQ0wbDo["FieldOfView"] ~= _1OUbnbM["customFovValue"] then
                        HZIHqDQ0wbDo["FieldOfView"] = _1OUbnbM["customFovValue"]
                    end
                end)
            end
            MU_m1UmlXXDZ.AimbotMethod3()
            wxl1Uo1UbDnnb:GetPropertyChangedSignal("CurrentCamera"):Connect(function()
                MU_m1UmlXXDZ.AimbotMethod3()
            end)
        end
        do
            MU_m1UmlXXDZ.lDIpDoU1o = nil
            MU_m1UmlXXDZ.NxWuWb = 0
            MU_m1UmlXXDZ.QquHZ = false
            MU_m1UmlXXDZ.wqpqqlW0_wUUb = false
            MU_m1UmlXXDZ.OQxbvb0bbI = 0
            MU_m1UmlXXDZ.OplXINUXlnMmlQ = 1
            MU_m1UmlXXDZ.vNQWWq = 0
            function MU_m1UmlXXDZ.UIMethod()
                if MU_m1UmlXXDZ.lDIpDoU1o then
                    return
                end
                local lxvIwxu = Q_qlzpNO1["FindFirstChildOfClass"](Q_qlzpNO1, "PlayerGui")
                if not lxvIwxu then
                    return
                end
                local pnIQnomMMqQ = Instance["new"]("ScreenGui")
                pnIQnomMMqQ["Name"] = "Moonwalk"
                pnIQnomMMqQ["ResetOnSpawn"] = false
                pnIQnomMMqQ["Enabled"] = false
                pnIQnomMMqQ["Parent"] = lxvIwxu
                local BlDuUw = Instance["new"]("Frame")
                BlDuUw["Name"] = "MoonwalkBtns"
                BlDuUw["AnchorPoint"] = Vector2["new"](1, 1)
                BlDuUw["Position"] = UDim2["new"](1, -18, 1, -170)
                BlDuUw["Size"] = UDim2["fromOffset"](46, 96)
                BlDuUw["BackgroundTransparency"] = 1
                BlDuUw["Parent"] = pnIQnomMMqQ
                local function UIFunction8(w0DQn, ozUNMwlIWQ)
                    local vblDUlbp = Instance["new"]("ImageButton")
                    vblDUlbp["BackgroundTransparency"] = 1
                    vblDUlbp["BorderSizePixel"] = 0
                    vblDUlbp["AutoButtonColor"] = false
                    vblDUlbp["AnchorPoint"] = Vector2["new"](0.5, 0)
                    vblDUlbp["Position"] = UDim2["new"](0.5, 0, 0, ozUNMwlIWQ)
                    vblDUlbp["Size"] = UDim2["fromOffset"](42, 42)
                    vblDUlbp["Image"] = "rbxassetid://125598796341580"
                    vblDUlbp["ScaleType"] = Enum["ScaleType"]["Slice"]
                    vblDUlbp["ImageColor3"] = Color3["fromRGB"](170, 170, 170)
                    vblDUlbp["ImageTransparency"] = 0.25
                    vblDUlbp["Rotation"] = w0DQn
                    vblDUlbp["Parent"] = BlDuUw
                    return vblDUlbp
                end
                local IuvbMXqO_mQ = UIFunction8(-90, 0)
                local oZomMNX = UIFunction8(90, 50)
                local function UIFunction9(qq_IZlOl1, BzvxwQ0)
                    qq_IZlOl1["InputBegan"]:Connect(function(MXMwW1_)
                        if MXMwW1_["UserInputType"] == Enum["UserInputType"]["Touch"] or MXMwW1_["UserInputType"] == Enum["UserInputType"]["MouseButton1"] then
                            MU_m1UmlXXDZ.NxWuWb = BzvxwQ0
                            qq_IZlOl1["ImageColor3"] = Color3["fromRGB"](255, 255, 255)
                            qq_IZlOl1["ImageTransparency"] = 0
                        end
                    end)
                    qq_IZlOl1["InputEnded"]:Connect(function(lpvXox1UoznWnx)
                        if lpvXox1UoznWnx["UserInputType"] == Enum["UserInputType"]["Touch"] or lpvXox1UoznWnx["UserInputType"] == Enum["UserInputType"]["MouseButton1"] then
                            MU_m1UmlXXDZ.NxWuWb = 0
                            qq_IZlOl1["ImageColor3"] = Color3["fromRGB"](170, 170, 170)
                            qq_IZlOl1["ImageTransparency"] = 0.25
                        end
                    end)
                end
                UIFunction9(IuvbMXqO_mQ, 1)
                UIFunction9(oZomMNX, -1)
                MU_m1UmlXXDZ.lDIpDoU1o = pnIQnomMMqQ
            end
            function MU_m1UmlXXDZ.SystemMethod3(Nlqv_)
                local pZIHUumHwIWoq1 = Nlqv_["FindFirstChild"](Nlqv_, "BolongMoonwalkAlign")
                if pZIHUumHwIWoq1 then
                    return pZIHUumHwIWoq1
                end
                local IMmlZxnuM = Instance["new"]("Attachment")
                IMmlZxnuM["Name"] = "BolongMoonwalkAtt"
                IMmlZxnuM["Parent"] = Nlqv_
                local QOwwIbwwvmIoI = Instance["new"]("AlignOrientation")
                QOwwIbwwvmIoI["Name"] = "BolongMoonwalkAlign"
                QOwwIbwwvmIoI["Mode"] = Enum["OrientationAlignmentMode"]["OneAttachment"]
                QOwwIbwwvmIoI["Attachment0"] = IMmlZxnuM
                QOwwIbwwvmIoI["MaxTorque"] = 6000000
                QOwwIbwwvmIoI["Responsiveness"] = 65
                QOwwIbwwvmIoI["Parent"] = Nlqv_
                return QOwwIbwwvmIoI
            end
            function MU_m1UmlXXDZ.CharacterMethod2(_pIvMZ1MMZOW)
                local BDmbXpxD = _pIvMZ1MMZOW["FindFirstChild"](_pIvMZ1MMZOW, "BolongMoonwalkAlign")
                local MZMHUlHOO = _pIvMZ1MMZOW["FindFirstChild"](_pIvMZ1MMZOW, "BolongMoonwalkAtt")
                if BDmbXpxD then
                    BDmbXpxD["Destroy"](BDmbXpxD)
                end
                if MZMHUlHOO then
                    MZMHUlHOO["Destroy"](MZMHUlHOO)
                end
            end
            M_QbbvZ0IU["InputBegan"]:Connect(function(IOmUzXD, wmDNWQmqxl0N0)
                if wmDNWQmqxl0N0 then
                    return
                end
                if IOmUzXD["KeyCode"] == Enum["KeyCode"]["W"] then
                    if _1OUbnbM["moonwalkEnabled"] then
                        MU_m1UmlXXDZ.QquHZ = not MU_m1UmlXXDZ.QquHZ
                        if MU_m1UmlXXDZ.QquHZ then
                            MU_m1UmlXXDZ.wqpqqlW0_wUUb = false
                        end
                    end
                elseif IOmUzXD["KeyCode"] == Enum["KeyCode"]["S"] then
                    if _1OUbnbM["moonwalkEnabled"] then
                        MU_m1UmlXXDZ.wqpqqlW0_wUUb = not MU_m1UmlXXDZ.wqpqqlW0_wUUb
                        if MU_m1UmlXXDZ.wqpqqlW0_wUUb then
                            MU_m1UmlXXDZ.QquHZ = false
                        end
                    end
                end
            end)
            CharacterFunction6("MoonwalkLock", 0, function(DzW11IpbqpQ1Xv)
                if _1OUbnbM["moonwalkEnabled"] and not MU_m1UmlXXDZ.lDIpDoU1o then
                    MU_m1UmlXXDZ.UIMethod()
                end
                if MU_m1UmlXXDZ.lDIpDoU1o then
                    MU_m1UmlXXDZ.lDIpDoU1o["Enabled"] = _1OUbnbM["moonwalkEnabled"]
                end
                if not _1OUbnbM["moonwalkEnabled"] then
                    MU_m1UmlXXDZ.NxWuWb = 0
                    MU_m1UmlXXDZ.QquHZ = false
                    MU_m1UmlXXDZ.wqpqqlW0_wUUb = false
                end
                local DXQXq = Q_qlzpNO1["Character"]
                local vQlINNWDlw = DXQXq and DXQXq["FindFirstChildOfClass"](DXQXq, "Humanoid")
                local qDu1wI = DXQXq and DXQXq["FindFirstChild"](DXQXq, "HumanoidRootPart")
                local WINXlwIn1w = wxl1Uo1UbDnnb["CurrentCamera"]
                if not vQlINNWDlw or not qDu1wI or not WINXlwIn1w then
                    return
                end
                local vboOqWqnp_ = 0
                if MU_m1UmlXXDZ.QquHZ then
                    vboOqWqnp_ = 1
                end
                if MU_m1UmlXXDZ.wqpqqlW0_wUUb then
                    vboOqWqnp_ = -1
                end
                if MU_m1UmlXXDZ.NxWuWb ~= 0 then
                    vboOqWqnp_ = MU_m1UmlXXDZ.NxWuWb
                end
                if vboOqWqnp_ == 0 then
                    if not vQlINNWDlw["AutoRotate"] then
                        vQlINNWDlw["AutoRotate"] = true
                    end
                    MU_m1UmlXXDZ.CharacterMethod2(qDu1wI)
                    MU_m1UmlXXDZ.OQxbvb0bbI = 0
                    return
                end
                vQlINNWDlw["AutoRotate"] = false
                local uvQWZuH1z = MU_m1UmlXXDZ.SystemMethod3(qDu1wI)
                local I1o1bQNWOqoImn = WINXlwIn1w["CFrame"]["LookVector"]
                local q1xNxMNZHZ1 = Vector3["new"](I1o1bQNWOqoImn["X"], 0, I1o1bQNWOqoImn["Z"])
                if q1xNxMNZHZ1["Magnitude"] > 0.001 then
                    q1xNxMNZHZ1 = q1xNxMNZHZ1["Unit"]
                    local HOvnmWuWqzmZ = (vboOqWqnp_ == 1) and q1xNxMNZHZ1 or -q1xNxMNZHZ1
                    if (_1OUbnbM["moonwalkMode"] or "Classic") == "Classic" then
                        uvQWZuH1z["Responsiveness"] = 15
                        MU_m1UmlXXDZ.OQxbvb0bbI = 0
                        local oDODNQ0vInxUMO = CFrame["lookAt"](Vector3["new"](0, 0, 0), HOvnmWuWqzmZ)
                        uvQWZuH1z["CFrame"] = oDODNQ0vInxUMO
                    else
                        uvQWZuH1z["Responsiveness"] = 65
                        local DqpwqlO1 = math["atan2"](HOvnmWuWqzmZ["X"], HOvnmWuWqzmZ["Z"])
                        local _ONzZqHzDlmnx = 0
                        if vQlINNWDlw["MoveDirection"]["Magnitude"] > 0.01 then
                            local Dq0NNuXuIbvO0 = _1OUbnbM["moonwalkSwaySpeed"] or 6
                            local NlzWuOX = _1OUbnbM["moonwalkSwayAmp"] or 0.55
                            local DQXomUmQ1 = 0.06
                            local vXqxObHnpoO = 1.2 / Dq0NNuXuIbvO0
                            if tick() - MU_m1UmlXXDZ.vNQWWq >= vXqxObHnpoO then
                                MU_m1UmlXXDZ.vNQWWq = tick()
                                MU_m1UmlXXDZ.OplXINUXlnMmlQ = -MU_m1UmlXXDZ.OplXINUXlnMmlQ
                            end
                            local ub_OqDbqDDX_ = MU_m1UmlXXDZ.OplXINUXlnMmlQ * NlzWuOX
                            local QbvIN1 = math.clamp(DzW11IpbqpQ1Xv * 14, 0, 1)
                            MU_m1UmlXXDZ.OQxbvb0bbI = MU_m1UmlXXDZ.OQxbvb0bbI + (ub_OqDbqDDX_ - MU_m1UmlXXDZ.OQxbvb0bbI) * QbvIN1
                            local WOnZzUvwuUmzQ = (math.random() - 0.5) * DQXomUmQ1
                            _ONzZqHzDlmnx = MU_m1UmlXXDZ.OQxbvb0bbI + WOnZzUvwuUmzQ
                        else
                            MU_m1UmlXXDZ.OQxbvb0bbI = 0
                            _ONzZqHzDlmnx = 0
                        end
                        local uxwM1DnnD0 = DqpwqlO1 + _ONzZqHzDlmnx
                        local pQzunxn0vu = CFrame["Angles"](0, uxwM1DnnD0, 0)
                        uvQWZuH1z["CFrame"] = pQzunxn0vu
                    end
                end
            end)
            MU_m1UmlXXDZ.UIMethod()
        end
        do
            MU_m1UmlXXDZ.qNQ_pXvbo = {}
            MU_m1UmlXXDZ.lzZ0NNuoI = {}
            MU_m1UmlXXDZ.DOblXO = false
            function MU_m1UmlXXDZ.UIMethod2(IwzQUpU)
                if not IwzQUpU then
                    return ""
                end
                return tostring(IwzQUpU):match("%d+") or ""
            end
            function MU_m1UmlXXDZ.UIMethod3()
                local oXnqQzXDOIuN = Q_qlzpNO1["FindFirstChild"](Q_qlzpNO1, "PlayerGui")
                if not oXnqQzXDOIuN then
                    return nil
                end
                local oUUXwH1xQXoz = oXnqQzXDOIuN["FindFirstChild"](oXnqQzXDOIuN, "Survivor-mob")
                if not oUUXwH1xQXoz then
                    return nil
                end
                local vO1o_pHq = oUUXwH1xQXoz["FindFirstChild"](oUUXwH1xQXoz, "Controls")
                if not vO1o_pHq then
                    return nil
                end
                local vx__Ool1XwN = vO1o_pHq["FindFirstChild"](vO1o_pHq, "crouch")
                if vx__Ool1XwN and vx__Ool1XwN["IsA"](vx__Ool1XwN, "GuiButton") then
                    return vx__Ool1XwN
                end
                return nil
            end
            -- Robust crouch state handling:
            -- reset per-character state, update local attributes, and retry the remote
            -- briefly so a missed first request does not leave crouch desynced.
            MU_m1UmlXXDZ.DOblXO = nil
            MU_m1UmlXXDZ.CrouchCharacter = nil
            function MU_m1UmlXXDZ.AnimationMethod(vnNZ1pNwlID)
                local IQulpo = Q_qlzpNO1["Character"]
                if not IQulpo then
                    return
                end

                local isNewCharacter = MU_m1UmlXXDZ.CrouchCharacter ~= IQulpo
                if not isNewCharacter and MU_m1UmlXXDZ.DOblXO == vnNZ1pNwlID then
                    return
                end

                MU_m1UmlXXDZ.CrouchCharacter = IQulpo
                MU_m1UmlXXDZ.DOblXO = vnNZ1pNwlID

                pcall(function()
                    IQulpo:SetAttribute("Crouchingserver", vnNZ1pNwlID)
                    IQulpo:SetAttribute("Crouching", vnNZ1pNwlID)
                end)

                task.spawn(function()
                    for attempt = 1, 2 do
                        pcall(function()
                            local changeAttribute = oZzw1oZIXX_["Remotes"]["Mechanics"]["ChangeAttribute"]
                            changeAttribute:FireServer("Crouchingserver", vnNZ1pNwlID)
                            changeAttribute:FireServer("Crouching", vnNZ1pNwlID)
                        end)
                        if attempt < 2 then
                            task.wait(0.06)
                        end
                    end
                end)

                local wnxMM_DIIw = not M_QbbvZ0IU["TouchEnabled"] and M_QbbvZ0IU["KeyboardEnabled"]
                if wnxMM_DIIw then
                    pcall(function()
                        QlMQp:SendKeyEvent(vnNZ1pNwlID, Enum["KeyCode"]["C"], false, game)
                        QlMQp:SendKeyEvent(vnNZ1pNwlID, Enum["KeyCode"]["LeftControl"], false, game)
                    end)
                else
                    local WowZNX = MU_m1UmlXXDZ.UIMethod3()
                    if WowZNX and type(firesignal) == "function" then
                        pcall(function()
                            if vnNZ1pNwlID then
                                firesignal(WowZNX["MouseButton1Down"])
                            else
                                firesignal(WowZNX["MouseButton1Up"])
                            end
                            if WowZNX["MouseButton1Click"] then
                                firesignal(WowZNX["MouseButton1Click"])
                            end
                        end)
                    end
                end
            end

            -- Force a fresh state after respawn so the first crouch request is not skipped.
            Q_qlzpNO1["CharacterAdded"]:Connect(function(newCharacter)
                MU_m1UmlXXDZ.DOblXO = nil
                MU_m1UmlXXDZ.CrouchCharacter = newCharacter
                task.delay(0.8, function()
                    if not _1OUbnbM["autoCrouchEnabled"] then
                        return
                    end
                    if Q_qlzpNO1["Character"] ~= newCharacter then
                        return
                    end
                    MU_m1UmlXXDZ.AnimationMethod(false)
                end)
            end)
            function MU_m1UmlXXDZ.HealingMethod3(_1Wz1xxxzvD_nO)
                if not _1Wz1xxxzvD_nO then
                    return
                end
                local MnuoNDpH = _1Wz1xxxzvD_nO["FindFirstChildOfClass"](_1Wz1xxxzvD_nO, "Humanoid")
                if not MnuoNDpH then
                    return
                end
                if MU_m1UmlXXDZ.lzZ0NNuoI[MnuoNDpH] then
                    return
                end
                MU_m1UmlXXDZ.lzZ0NNuoI[MnuoNDpH] = MnuoNDpH["AnimationPlayed"]:Connect(function(vZHHnzO1nHX)
                    if not _1OUbnbM["autoCrouchEnabled"] then
                        return
                    end
                    local BoZ1DnX = vZHHnzO1nHX["Animation"]
                    if BoZ1DnX then
                        local qHnNbMbUu0 = MU_m1UmlXXDZ.UIMethod2(BoZ1DnX["AnimationId"])
                        local animationName = string.lower(tostring(BoZ1DnX.Name or ""))
                        local isCrouchAnimation = qHnNbMbUu0 == "80411309607666"
                            or animationName:find("crouch", 1, true) ~= nil
                            or animationName:find("sneak", 1, true) ~= nil
                        if isCrouchAnimation then
                            MU_m1UmlXXDZ.qNQ_pXvbo[_1Wz1xxxzvD_nO] = true
                            vZHHnzO1nHX["Stopped"]:Connect(function()
                                task["wait"](0.2)
                                MU_m1UmlXXDZ.qNQ_pXvbo[_1Wz1xxxzvD_nO] = nil
                            end)
                        end
                    end
                end)
                MnuoNDpH["Died"]:Connect(function()
                    MU_m1UmlXXDZ.qNQ_pXvbo[_1Wz1xxxzvD_nO] = nil
                    if MU_m1UmlXXDZ.lzZ0NNuoI[MnuoNDpH] then
                        pcall(function()
                            MU_m1UmlXXDZ.lzZ0NNuoI[MnuoNDpH]:Disconnect()
                        end)
                        MU_m1UmlXXDZ.lzZ0NNuoI[MnuoNDpH] = nil
                    end
                end)
            end
            CharacterFunction6("AutoCrouch", 0, function()
                if not _1OUbnbM["autoCrouchEnabled"] then
                    return
                end
                local qm1wDvQXuovWzM = Q_qlzpNO1["Character"]
                if not qm1wDvQXuovWzM then
                    return
                end
                local oMOoNDzqo0O = qm1wDvQXuovWzM["FindFirstChild"](qm1wDvQXuovWzM, "HumanoidRootPart")
                if not oMOoNDzqo0O then
                    return
                end
                local WxWQWX = false
                for OQbvIvqX1uNpI, D0DM1 in pairs(MU_m1UmlXXDZ.qNQ_pXvbo) do
                    if OQbvIvqX1uNpI and OQbvIvqX1uNpI["Parent"] then
                        local bOnZInHxvvn = OQbvIvqX1uNpI["FindFirstChild"](OQbvIvqX1uNpI, "HumanoidRootPart")
                        local DzqqzQbl1nnx = OQbvIvqX1uNpI["FindFirstChildOfClass"](OQbvIvqX1uNpI, "Humanoid")
                        if bOnZInHxvvn and DzqqzQbl1nnx and DzqqzQbl1nnx["Health"] > 0 then
                            local lIobU = (bOnZInHxvvn["Position"] - oMOoNDzqo0O["Position"])["Magnitude"]
                            if lIobU <= _1OUbnbM["autoCrouchRadius"] then
                                WxWQWX = true
                                break
                            end
                        end
                    else
                        MU_m1UmlXXDZ.qNQ_pXvbo[OQbvIvqX1uNpI] = nil
                    end
                end
                MU_m1UmlXXDZ.AnimationMethod(WxWQWX)
            end)
            for B_HbQUzWDlQmp, WnnwzvD0MD0lXX in ipairs(WIDWH["GetPlayers"](WIDWH)) do
                if WnnwzvD0MD0lXX ~= Q_qlzpNO1 then
                    if WnnwzvD0MD0lXX["Character"] then
                        MU_m1UmlXXDZ.HealingMethod3(WnnwzvD0MD0lXX["Character"])
                    end
                    WnnwzvD0MD0lXX["CharacterAdded"]:Connect(function(oXWl1Hm0I)
                        task["wait"](1)
                        MU_m1UmlXXDZ.HealingMethod3(oXWl1Hm0I)
                    end)
                end
            end
            WIDWH["PlayerAdded"]:Connect(function(lIIUH)
                lIIUH["CharacterAdded"]:Connect(function(B_qOoU)
                    task["wait"](1)
                    if _1OUbnbM["autoCrouchEnabled"] then
                        MU_m1UmlXXDZ.HealingMethod3(B_qOoU)
                    end
                end)
            end)
        end
        do
            MU_m1UmlXXDZ.bzzQN = false
            MU_m1UmlXXDZ.WQzvv_Dw1uOoH = nil
            function MU_m1UmlXXDZ.HealingMethod4(Hq00mww)
                if not Hq00mww then
                    return false
                end
                if Hq00mww["FindFirstChild"](Hq00mww, "Flashlight") then
                    return true
                end
                for Nv1zv1UWm, N0wQnNQOQbQO0q in ipairs(Hq00mww["GetDescendants"](Hq00mww)) do
                    if
                        N0wQnNQOQbQO0q["Name"] == "Flashlight"
                        and (N0wQnNQOQbQO0q["IsA"](N0wQnNQOQbQO0q, "Model") or N0wQnNQOQbQO0q["IsA"](N0wQnNQOQbQO0q, "Tool") or N0wQnNQOQbQO0q["IsA"](N0wQnNQOQbQO0q, "Accessory"))
                    then
                        return true
                    end
                end
                return false
            end
            function MU_m1UmlXXDZ.HealingMethod5(qN0_Uz)
                if not qN0_Uz then
                    return false
                end
                local lnzouHIwblXlvU = qN0_Uz["FindFirstChildOfClass"](qN0_Uz, "Humanoid")
                if not lnzouHIwblXlvU or lnzouHIwblXlvU["Health"] <= 50 then
                    return false
                end
                local ubWMWNXbOwq1Ul = qN0_Uz["GetAttribute"](qN0_Uz, "IsHooked") or qN0_Uz["GetAttribute"](qN0_Uz, "isHooked")
                if ubWMWNXbOwq1Ul == true then
                    return false
                end
                return true
            end
            function MU_m1UmlXXDZ.FlashlightMethod(__z_pql)
                if not __z_pql then
                    return nil
                end
                local wo1u0zbDnIDzX = __z_pql["FindFirstChild"](__z_pql, "Head")
                if wo1u0zbDnIDzX and wo1u0zbDnIDzX["IsA"](wo1u0zbDnIDzX, "BasePart") then
                    return wo1u0zbDnIDzX
                end
                return __z_pql["FindFirstChild"](__z_pql, "UpperTorso") or __z_pql["FindFirstChild"](__z_pql, "Torso") or __z_pql["FindFirstChild"](__z_pql, "HumanoidRootPart")
            end
            function MU_m1UmlXXDZ.FlashlightMethod2()
                local qOQDNo1xx = Q_qlzpNO1["Character"]
                local qxv1XnZMnn = qOQDNo1xx and qOQDNo1xx["FindFirstChild"](qOQDNo1xx, "HumanoidRootPart")
                if not qxv1XnZMnn then
                    return nil
                end
                local l1w_NUq0, pMvUpODOpHqxOZ = nil, math["huge"]
                for obmwo_1O_, pvwmlQMNouv0uU in ipairs(WIDWH["GetPlayers"](WIDWH)) do
                    if pvwmlQMNouv0uU ~= Q_qlzpNO1 and pvwmlQMNouv0uU["Character"] and MU_m1UmlXXDZ.HealingMethod5(pvwmlQMNouv0uU["Character"]) then
                        if CharacterFunction7(pvwmlQMNouv0uU) == "killer" then
                            local l_ZXnHNQmz0N_ = MU_m1UmlXXDZ.FlashlightMethod(pvwmlQMNouv0uU["Character"])
                            if l_ZXnHNQmz0N_ and l_ZXnHNQmz0N_["IsA"](l_ZXnHNQmz0N_, "BasePart") then
                                local MHZZuvu_Qzx = (qxv1XnZMnn["Position"] - l_ZXnHNQmz0N_["Position"])["Magnitude"]
                                if MHZZuvu_Qzx <= 30 and MHZZuvu_Qzx < pMvUpODOpHqxOZ then
                                    pMvUpODOpHqxOZ = MHZZuvu_Qzx
                                    l1w_NUq0 = l_ZXnHNQmz0N_
                                end
                            end
                        end
                    end
                end
                return l1w_NUq0
            end
            pcall(function()
                local oUlQUvzqmuZ = oZzw1oZIXX_["FindFirstChild"](oZzw1oZIXX_, "Remotes")
                local vOzZuZnOM = oUlQUvzqmuZ and oUlQUvzqmuZ["FindFirstChild"](oUlQUvzqmuZ, "Items")
                local MIvx_z0XDW_NNZ = vOzZuZnOM and vOzZuZnOM["FindFirstChild"](vOzZuZnOM, "Flashlight")
                local Wpnu1Nw_xvNQl0 = MIvx_z0XDW_NNZ and MIvx_z0XDW_NNZ["FindFirstChild"](MIvx_z0XDW_NNZ, "Activate")
                if Wpnu1Nw_xvNQl0 and Wpnu1Nw_xvNQl0["IsA"](Wpnu1Nw_xvNQl0, "RemoteEvent") then
                    MU_m1UmlXXDZ.WQzvv_Dw1uOoH = Wpnu1Nw_xvNQl0
                end
            end)
            pcall(function()
                local Wv__qq
                Wv__qq = hookmetamethod(game, "__namecall", function(lQuxvv0qqbHnWZ, ...)
                    local _uQwDZnUWH = getnamecallmethod()
                    if _uQwDZnUWH == "FireServer" and MU_m1UmlXXDZ.WQzvv_Dw1uOoH and rawequal(lQuxvv0qqbHnWZ, MU_m1UmlXXDZ.WQzvv_Dw1uOoH) then
                        local IODxmZmvD = table["pack"](...)
                        pcall(function()
                            MU_m1UmlXXDZ.bzzQN = (IODxmZmvD[2] == true)
                        end)
                    end
                    if Wv__qq then
                        return Wv__qq(lQuxvv0qqbHnWZ, ...)
                    end
                    return lQuxvv0qqbHnWZ["FireServer"](lQuxvv0qqbHnWZ, ...)
                end)
            end)
            CharacterFunction6("FlashAimLock", 0.02, function()
                if not _1OUbnbM["aimlockFlashlightEnabled"] then
                    return
                end
                local bU_pmOQuMp_X = MU_m1UmlXXDZ.HealingMethod4(Q_qlzpNO1["Character"])
                local IbIDUQDu0DWw = CharacterFunction7(Q_qlzpNO1) ~= "killer"
                if not (bU_pmOQuMp_X and IbIDUQDu0DWw and MU_m1UmlXXDZ.bzzQN) then
                    return
                end
                local pZnnODnpIqWQU = wxl1Uo1UbDnnb["CurrentCamera"]
                if not pZnnODnpIqWQU then
                    return
                end
                local Qb_X0Q0UoQ_uD = MU_m1UmlXXDZ.FlashlightMethod2()
                if not Qb_X0Q0UoQ_uD then
                    return
                end
                local NqnmOqv = Qb_X0Q0UoQ_uD["Position"]
                local DouXOwU = math.clamp(tonumber(_1OUbnbM["aimlockFlashlightSmooth"]) or 0.35, 0.05, 1)
                pcall(function()
                    pZnnODnpIqWQU["CFrame"] = pZnnODnpIqWQU["CFrame"]:Lerp(CFrame["new"](pZnnODnpIqWQU["CFrame"]["Position"], NqnmOqv), DouXOwU)
                end)
                pcall(function()
                    local IHonooQzmHUXD = Q_qlzpNO1["Character"]
                    local BUlZZpXOXnNDb = IHonooQzmHUXD and IHonooQzmHUXD["FindFirstChild"](IHonooQzmHUXD, "HumanoidRootPart")
                    if BUlZZpXOXnNDb then
                        BUlZZpXOXnNDb["CFrame"] = CFrame["new"](BUlZZpXOXnNDb["Position"], Vector3["new"](NqnmOqv["X"], BUlZZpXOXnNDb["Position"]["Y"], NqnmOqv["Z"]))
                    end
                end)
            end)
        end
        do
            MU_m1UmlXXDZ.q_OpO = false
            MU_m1UmlXXDZ.loWxMp = {}
            MU_m1UmlXXDZ.OIWpZ = {}
            MU_m1UmlXXDZ.qMpzb1zzzvxp = nil
            MU_m1UmlXXDZ.WzDUDnMb = nil
            MU_m1UmlXXDZ.omznvO = nil
            MU_m1UmlXXDZ.BvIIUz = 0
            function MU_m1UmlXXDZ.HealingMethod6()
                local oQzwz = tick()
                if oQzwz - MU_m1UmlXXDZ.BvIIUz < 2 and MU_m1UmlXXDZ.omznvO ~= nil then
                    return MU_m1UmlXXDZ.omznvO
                end
                local QMxmvD = nil
                pcall(function()
                    local wXIu_lpbxN1 = Q_qlzpNO1["GetAttribute"](Q_qlzpNO1, "SelectedKiller")
                    local QbquUUbb = tostring(wXIu_lpbxN1 or ""):lower()
                    if QbquUUbb["find"](QbquUUbb, "hidden") then
                        QMxmvD = "hidden"
                    elseif QbquUUbb["find"](QbquUUbb, "mayers") or QbquUUbb["find"](QbquUUbb, "stalker") or QbquUUbb["find"](QbquUUbb, "michael") then
                        QMxmvD = "mayers"
                    end
                    if not QMxmvD then
                        local buWW1n = Q_qlzpNO1["FindFirstChildOfClass"](Q_qlzpNO1, "PlayerGui")
                        if buWW1n then
                            if buWW1n["FindFirstChild"](buWW1n, "Hidden-mob") or buWW1n["FindFirstChild"](buWW1n, "Hidden") or buWW1n["FindFirstChild"](buWW1n, "Hidden-con") then
                                QMxmvD = "hidden"
                            elseif buWW1n["FindFirstChild"](buWW1n, "Slasher-mob") or buWW1n["FindFirstChild"](buWW1n, "Slasher") then
                                QMxmvD = "mayers"
                            end
                        end
                    end
                end)
                MU_m1UmlXXDZ.omznvO = QMxmvD
                MU_m1UmlXXDZ.BvIIUz = oQzwz
                return QMxmvD
            end
            function MU_m1UmlXXDZ.HealingMethod7(MlznHQmXZNM)
                MlznHQmXZNM = MlznHQmXZNM or 5
                local vwnoOv = Q_qlzpNO1["Character"]
                local wOOXONO0bnpx0 = vwnoOv and vwnoOv["FindFirstChild"](vwnoOv, "HumanoidRootPart")
                if not wOOXONO0bnpx0 then
                    return nil, math["huge"]
                end
                local llbZ0OQIO, b0oHZ = nil, MlznHQmXZNM + 0.01
                for pqlOlml1D, vMIUIbQ in ipairs(WIDWH["GetPlayers"](WIDWH)) do
                    if vMIUIbQ ~= Q_qlzpNO1 and vMIUIbQ["Character"] then
                        local NxHxQ_mIq = vMIUIbQ["Character"]:FindFirstChild("HumanoidRootPart")
                        local uDI_Onn = vMIUIbQ["Character"]:FindFirstChildOfClass("Humanoid")
                        if NxHxQ_mIq and uDI_Onn and uDI_Onn["Health"] > 0 then
                            local O_NpDbl = (NxHxQ_mIq["Position"] - wOOXONO0bnpx0["Position"])["Magnitude"]
                            if O_NpDbl < b0oHZ then
                                llbZ0OQIO, b0oHZ = vMIUIbQ["Character"], O_NpDbl
                            end
                        end
                    end
                end
                return llbZ0OQIO, b0oHZ
            end
            function MU_m1UmlXXDZ.HealingMethod8()
                if not _1OUbnbM["mayersNoCooldownEnabled"] then
                    return
                end
                if MU_m1UmlXXDZ.HealingMethod6() ~= "mayers" then
                    return
                end
                if MU_m1UmlXXDZ.q_OpO then
                    return
                end
                local q1bZ1lbxM1 = Q_qlzpNO1["Character"]
                if not q1bZ1lbxM1 then
                    return
                end
                local pvuUNvww = q1bZ1lbxM1["FindFirstChild"](q1bZ1lbxM1, "HumanoidRootPart")
                local BHn1qw0ZoN = q1bZ1lbxM1["FindFirstChildOfClass"](q1bZ1lbxM1, "Humanoid")
                if not (pvuUNvww and BHn1qw0ZoN and BHn1qw0ZoN["Health"] > 0) then
                    return
                end
                MU_m1UmlXXDZ.q_OpO = true
                task["delay"](0.35, function()
                    MU_m1UmlXXDZ.q_OpO = false
                end)
                local oulZHDxx10OHb = nil
                pcall(function()
                    local Qu1pX0 = Instance["new"]("Animation")
                    Qu1pX0["AnimationId"] = "rbxassetid://77477445889320"
                    local pWIlXWwU1p_p = BHn1qw0ZoN["FindFirstChildOfClass"](BHn1qw0ZoN, "Animator") or BHn1qw0ZoN
                    oulZHDxx10OHb = pWIlXWwU1p_p["LoadAnimation"](pWIlXWwU1p_p, Qu1pX0)
                    oulZHDxx10OHb["Priority"] = Enum["AnimationPriority"]["Action"]
                    oulZHDxx10OHb:Play()
                end)
                local NwmpZq = oZzw1oZIXX_
                pcall(function()
                    NwmpZq["Remotes"]["SoundPlayer"]:FireServer("132736711620405", pvuUNvww, 0.3, 70)
                end)
                pcall(function()
                    NwmpZq["Remotes"]["Attacks"]["BasicAttack"]:FireServer(true)
                end)
                pcall(function()
                    local u_poQpzIup0luW = NwmpZq["FindFirstChild"](NwmpZq, "Remotes")
                        and NwmpZq["Remotes"]:FindFirstChild("Killers")
                        and NwmpZq["Remotes"]["Killers"]:FindFirstChild("Stalker")
                        and NwmpZq["Remotes"]["Killers"]["Stalker"]:FindFirstChild("ConsumeReady")
                    if u_poQpzIup0luW then
                        u_poQpzIup0luW["FireServer"](u_poQpzIup0luW)
                    end
                end)
                task["spawn"](function()
                    local vXzHQOQlvmmv0 = tick()
                    local QnQmXlnXb = false
                    while tick() - vXzHQOQlvmmv0 < 2 and not QnQmXlnXb do
                        WwNbnqHIQwppl["Heartbeat"]:Wait()
                        local Hw_Dv_zDIMMH, BHZUNvq1INM = MU_m1UmlXXDZ.HealingMethod7(5)
                        if Hw_Dv_zDIMMH and BHZUNvq1INM <= 5 then
                            pcall(function()
                                local Mm_onq_ = NwmpZq["Remotes"]["Killers"]["Stalker"]:FindFirstChild("grab")
                                if Mm_onq_ then
                                    Mm_onq_["FireServer"](Mm_onq_, Hw_Dv_zDIMMH)
                                end
                            end)
                            if oulZHDxx10OHb then
                                pcall(function()
                                    oulZHDxx10OHb:Stop(0.1)
                                end)
                            end
                            QnQmXlnXb = true
                            break
                        end
                    end
                    if oulZHDxx10OHb then
                        pcall(function()
                            oulZHDxx10OHb:Stop(0.1)
                        end)
                    end
                end)
            end
            CharacterFunction6("MayersStalkWhileMoving", 0.2, function()
                if not _1OUbnbM["mayersStalkWhileMovingEnabled"] then
                    return
                end
                pcall(function()
                    local lUlxuI = oZzw1oZIXX_
                    local QpHzuvlNbZQ1 = lUlxuI["FindFirstChild"](lUlxuI, "Remotes")
                        and lUlxuI["Remotes"]:FindFirstChild("Killers")
                        and lUlxuI["Remotes"]["Killers"]:FindFirstChild("Stalker")
                    local uupMqzHZxOI = QpHzuvlNbZQ1 and QpHzuvlNbZQ1["FindFirstChild"](QpHzuvlNbZQ1, "StartStalking")
                    if not uupMqzHZxOI then
                        return
                    end
                    for BHZOxo, qbn_wulpmO in ipairs(WIDWH["GetPlayers"](WIDWH)) do
                        if qbn_wulpmO ~= Q_qlzpNO1 and qbn_wulpmO["Character"] then
                            local QXmvqH = qbn_wulpmO["Character"]:FindFirstChildOfClass("Humanoid")
                            if QXmvqH and QXmvqH["Health"] > 0 then
                                pcall(function()
                                    uupMqzHZxOI:FireServer(qbn_wulpmO)
                                end)
                            end
                        end
                    end
                end)
            end)
            M_QbbvZ0IU["InputBegan"]:Connect(function(wU1DmlnD, _QZWZZzqN)
                if _QZWZZzqN then
                    return
                end
                if wU1DmlnD["KeyCode"] ~= Enum["KeyCode"]["Q"] then
                    return
                end
                if not _1OUbnbM["mayersNoCooldownEnabled"] then
                    return
                end
                pcall(MU_m1UmlXXDZ.HealingMethod8)
            end)
            function MU_m1UmlXXDZ.UIMethod4(BDD0DWnXXUv)
                if not (BDD0DWnXXUv and BDD0DWnXXUv["IsA"](BDD0DWnXXUv, "GuiButton")) then
                    return false
                end
                if BDD0DWnXXUv["Name"] ~= "move2" then
                    return false
                end
                local w_zbqHDXDQN = BDD0DWnXXUv["Parent"]
                if not (w_zbqHDXDQN and w_zbqHDXDQN["Name"] == "Controls") then
                    return false
                end
                local BoqHz1zvo0v = w_zbqHDXDQN["Parent"]
                if not (BoqHz1zvo0v and BoqHz1zvo0v["Name"] == "Slasher-mob") then
                    return false
                end
                return true
            end
            function MU_m1UmlXXDZ.SystemMethod4(_pqU1xWpMXMM)
                if not _1OUbnbM["mayersNoCooldownEnabled"] then
                    return
                end
                if not MU_m1UmlXXDZ.UIMethod4(_pqU1xWpMXMM) then
                    return
                end
                if MU_m1UmlXXDZ.OIWpZ[_pqU1xWpMXMM] then
                    return
                end
                MU_m1UmlXXDZ.OIWpZ[_pqU1xWpMXMM] = true
                pcall(function()
                    _pqU1xWpMXMM["Active"] = true
                end)
                local function SystemFunction8()
                    if not _1OUbnbM["mayersNoCooldownEnabled"] then
                        return
                    end
                    pcall(MU_m1UmlXXDZ.HealingMethod8)
                end
                local OzwpmnN1DuNbx = _pqU1xWpMXMM["Activated"]:Connect(SystemFunction8)
                table.insert(MU_m1UmlXXDZ.loWxMp, OzwpmnN1DuNbx)
            end
            function MU_m1UmlXXDZ.SystemMethod5()
                if not _1OUbnbM["mayersNoCooldownEnabled"] then
                    return
                end
                local oZzpub = Q_qlzpNO1["FindFirstChildOfClass"](Q_qlzpNO1, "PlayerGui")
                if not oZzpub then
                    return
                end
                pcall(function()
                    local QxHQm = oZzpub["FindFirstChild"](oZzpub, "Slasher-mob")
                    if QxHQm then
                        local NWNno = QxHQm["FindFirstChild"](QxHQm, "Controls")
                        if NWNno then
                            local lDb1l = NWNno["FindFirstChild"](NWNno, "move2")
                            if lDb1l then
                                MU_m1UmlXXDZ.SystemMethod4(lDb1l)
                            end
                            for INHo1vubxbxM, pMxvbmuw0Xwmq0 in ipairs(NWNno["GetDescendants"](NWNno)) do
                                if pMxvbmuw0Xwmq0["Name"] == "move2" then
                                    MU_m1UmlXXDZ.SystemMethod4(pMxvbmuw0Xwmq0)
                                end
                            end
                        end
                    end
                end)
                if MU_m1UmlXXDZ.qMpzb1zzzvxp then
                    pcall(function()
                        MU_m1UmlXXDZ.qMpzb1zzzvxp:Disconnect()
                    end)
                end
                MU_m1UmlXXDZ.qMpzb1zzzvxp = oZzpub["ChildAdded"]:Connect(function(qXWvwx)
                    if qXWvwx["Name"] == "Slasher-mob" then
                        task["wait"](0.5)
                        MU_m1UmlXXDZ.SystemMethod5()
                        if MU_m1UmlXXDZ.WzDUDnMb then
                            pcall(function()
                                MU_m1UmlXXDZ.WzDUDnMb:Disconnect()
                            end)
                        end
                        MU_m1UmlXXDZ.WzDUDnMb = qXWvwx["DescendantAdded"]:Connect(function(DDluZQqH11)
                            if DDluZQqH11["Name"] == "move2" then
                                MU_m1UmlXXDZ.SystemMethod4(DDluZQqH11)
                            end
                        end)
                        table.insert(MU_m1UmlXXDZ.loWxMp, MU_m1UmlXXDZ.WzDUDnMb)
                    end
                end)
                table.insert(MU_m1UmlXXDZ.loWxMp, MU_m1UmlXXDZ.qMpzb1zzzvxp)
                pcall(function()
                    local OHQnXlb_ = oZzpub["FindFirstChild"](oZzpub, "Slasher-mob")
                    if OHQnXlb_ and not MU_m1UmlXXDZ.WzDUDnMb then
                        MU_m1UmlXXDZ.WzDUDnMb = OHQnXlb_["DescendantAdded"]:Connect(function(QlQpQQZQWxW_lM)
                            if QlQpQQZQWxW_lM["Name"] == "move2" then
                                MU_m1UmlXXDZ.SystemMethod4(QlQpQQZQWxW_lM)
                            end
                        end)
                        table.insert(MU_m1UmlXXDZ.loWxMp, MU_m1UmlXXDZ.WzDUDnMb)
                    end
                end)
            end
            function MU_m1UmlXXDZ.SystemMethod6()
                MU_m1UmlXXDZ.SystemMethod5()
            end
            function MU_m1UmlXXDZ.SystemMethod7()
                for lvX_zuoxolunW, wqWnmDOMZX in ipairs(MU_m1UmlXXDZ.loWxMp) do
                    pcall(function()
                        wqWnmDOMZX:Disconnect()
                    end)
                end
                MU_m1UmlXXDZ.loWxMp = {}
                MU_m1UmlXXDZ.OIWpZ = {}
                if MU_m1UmlXXDZ.qMpzb1zzzvxp then
                    pcall(function()
                        MU_m1UmlXXDZ.qMpzb1zzzvxp:Disconnect()
                    end)
                    MU_m1UmlXXDZ.qMpzb1zzzvxp = nil
                end
                if MU_m1UmlXXDZ.WzDUDnMb then
                    pcall(function()
                        MU_m1UmlXXDZ.WzDUDnMb:Disconnect()
                    end)
                    MU_m1UmlXXDZ.WzDUDnMb = nil
                end
            end
            MU_m1UmlXXDZ.SystemMethod6()
        end
        MU_m1UmlXXDZ.INDqmHQUQXolN = 142.5
        MU_m1UmlXXDZ.oDXWbwIl0XQM = 0.5
        MU_m1UmlXXDZ.IXHN1zUU = nil
        do
            MU_m1UmlXXDZ.DWHIDO_ = math["rad"](42)
            MU_m1UmlXXDZ._lMpNbDDMp0 = math["rad"](28)
            MU_m1UmlXXDZ.wxnnH = math["rad"](72)
            MU_m1UmlXXDZ.IDHlWZ_pn_Wl = 0.15
            MU_m1UmlXXDZ.ounWD_ZIOI_zoZ = nil
            MU_m1UmlXXDZ.bWumxzloIvuDpU = 1.0
            MU_m1UmlXXDZ.oOD0QWnulW = false
            MU_m1UmlXXDZ.bbmImz = nil
            MU_m1UmlXXDZ.IuHN1moN = Vector3["new"](0, 0, 0)
            MU_m1UmlXXDZ.OupXz = nil
            MU_m1UmlXXDZ.uvOm1pbWp = 1
            MU_m1UmlXXDZ.bMmpZw = nil
            MU_m1UmlXXDZ.qNollU = nil
            MU_m1UmlXXDZ.DpWXwbQZl = nil
            MU_m1UmlXXDZ.HnnwWM0 = nil
            MU_m1UmlXXDZ.MINoWIOu = nil
            MU_m1UmlXXDZ.OvWnq1Ozp = nil
            MU_m1UmlXXDZ.llHll0Z = nil
            MU_m1UmlXXDZ.blnzDmopMD_Mzn = nil
            MU_m1UmlXXDZ.qnplm0_bD0p = nil
            MU_m1UmlXXDZ.bzwHIzb_ = nil
            MU_m1UmlXXDZ.OHop1vzpZ = { ["locked"] = false, ["lockedTarget"] = nil, ["lockedPlayerName"] = "" }
            MU_m1UmlXXDZ._uqwx = { ["hist"] = {}, ["char"] = nil, ["sm"] = Vector3["new"](0, 0, 0) }
            function MU_m1UmlXXDZ.CharacterMethod3()
                if MU_m1UmlXXDZ.ounWD_ZIOI_zoZ == nil then
                    pcall(function()
                        MU_m1UmlXXDZ.ounWD_ZIOI_zoZ = game["GetService"](game, "Stats")["Network"]["ServerStatsItem"]["Data Ping"]
                    end)
                end
                local HN_wD1NmNI = 0
                if MU_m1UmlXXDZ.ounWD_ZIOI_zoZ ~= nil then
                    pcall(function()
                        HN_wD1NmNI = MU_m1UmlXXDZ.ounWD_ZIOI_zoZ["GetValue"](MU_m1UmlXXDZ.ounWD_ZIOI_zoZ)
                    end)
                end
                HN_wD1NmNI = tonumber(HN_wD1NmNI) or 0
                return math.clamp(HN_wD1NmNI / 1000, 0, 1)
            end
            function MU_m1UmlXXDZ.CharacterMethod4(WNxoqH1DmUmM, NuMXup0, WlM_XuDQUvnm)
                local N_Qxxu = tick()
                if WNxoqH1DmUmM["char"] ~= NuMXup0 then
                    WNxoqH1DmUmM["char"] = NuMXup0
                    WNxoqH1DmUmM["hist"] = {}
                    WNxoqH1DmUmM["sm"] = Vector3["new"](0, 0, 0)
                    WNxoqH1DmUmM["turn"] = 0
                end
                if WNxoqH1DmUmM["turn"] == nil then
                    WNxoqH1DmUmM["turn"] = 0
                end
                local qMZn_xN0xo = WNxoqH1DmUmM["hist"]
                table.insert(qMZn_xN0xo, { ["pos"] = WlM_XuDQUvnm, ["t"] = N_Qxxu })
                while #qMZn_xN0xo > 1 and qMZn_xN0xo[1]["t"] < N_Qxxu - 0.4 do
                    table.remove(qMZn_xN0xo, 1)
                end
                if #qMZn_xN0xo >= 2 then
                    local vWbDOWIuuz = qMZn_xN0xo[#qMZn_xN0xo - 1]
                    local qwpWMZqwM0W = qMZn_xN0xo[#qMZn_xN0xo]
                    local OlvqzmIZHM_QoH = qwpWMZqwM0W["t"] - vWbDOWIuuz["t"]
                    if OlvqzmIZHM_QoH > 0.001 then
                        local lHlXZnxoD0Ovo = (qwpWMZqwM0W["pos"] - vWbDOWIuuz["pos"]) / OlvqzmIZHM_QoH
                        local wzUvNqXq_ln = Vector3["new"](lHlXZnxoD0Ovo["X"], 0, lHlXZnxoD0Ovo["Z"])
                        local _UxNQpNxo0ubD_ = NuMXup0 and NuMXup0["FindFirstChild"](NuMXup0, "HumanoidRootPart")
                        if _UxNQpNxo0ubD_ and _UxNQpNxo0ubD_["IsA"](_UxNQpNxo0ubD_, "BasePart") then
                            local __Wqw, qlZmWuQuWulQQ = pcall(function()
                                return _UxNQpNxo0ubD_["AssemblyLinearVelocity"]
                            end)
                            if __Wqw and typeof(qlZmWuQuWulQQ) == "Vector3" then
                                local Io0xxZMW_ = Vector3["new"](qlZmWuQuWulQQ["X"], 0, qlZmWuQuWulQQ["Z"])
                                if Io0xxZMW_["Magnitude"] > 0.5 and Io0xxZMW_["Magnitude"] < 100 then
                                    wzUvNqXq_ln = wzUvNqXq_ln["Lerp"](wzUvNqXq_ln, Io0xxZMW_, 0.5)
                                end
                            end
                        end
                        if wzUvNqXq_ln["Magnitude"] > 24 then
                            wzUvNqXq_ln = wzUvNqXq_ln["Unit"] * 24
                        end
                        local NXUOU_ = 0
                        if WNxoqH1DmUmM["sm"]["Magnitude"] > 2 and wzUvNqXq_ln["Magnitude"] > 2 then
                            local _pvHmulq = WNxoqH1DmUmM["sm"]:Dot(wzUvNqXq_ln) / (WNxoqH1DmUmM["sm"]["Magnitude"] * wzUvNqXq_ln["Magnitude"])
                            if _1OUbnbM["spearDamping"] and _pvHmulq < 0 then
                                wzUvNqXq_ln = wzUvNqXq_ln * 0.7
                            end
                            NXUOU_ = math.clamp(1 - _pvHmulq, 0, 1)
                        end
                        WNxoqH1DmUmM["turn"] = WNxoqH1DmUmM["turn"] * 0.7 + NXUOU_ * 0.3
                        WNxoqH1DmUmM["sm"] = WNxoqH1DmUmM["sm"]:Lerp(wzUvNqXq_ln, 0.45)
                    end
                end
                local DW0XzuI = Vector3["new"](WNxoqH1DmUmM["sm"]["X"], 0, WNxoqH1DmUmM["sm"]["Z"])
                if DW0XzuI["Magnitude"] > 24 then
                    DW0XzuI = DW0XzuI["Unit"] * 24
                end
                WNxoqH1DmUmM["sm"] = DW0XzuI
                local WZzUzqqpI = 1 - math.clamp(WNxoqH1DmUmM["turn"], 0, 1)
                return DW0XzuI, WZzUzqqpI
            end
            function MU_m1UmlXXDZ.AimbotMethod4(uvmZOvZb)
                if not uvmZOvZb then
                    return nil
                end
                local oXbpuzDUHZo1Z = uvmZOvZb["FindFirstChild"](uvmZOvZb, "UpperTorso")
                if oXbpuzDUHZo1Z and oXbpuzDUHZo1Z["IsA"](oXbpuzDUHZo1Z, "BasePart") then
                    return oXbpuzDUHZo1Z["Position"]
                end
                local w_bnxpM_XI01Z = uvmZOvZb["FindFirstChild"](uvmZOvZb, "Torso")
                if w_bnxpM_XI01Z and w_bnxpM_XI01Z["IsA"](w_bnxpM_XI01Z, "BasePart") then
                    return w_bnxpM_XI01Z["Position"]
                end
                local W_x0UNxvv = uvmZOvZb["FindFirstChild"](uvmZOvZb, "HumanoidRootPart")
                if W_x0UNxvv then
                    return W_x0UNxvv["Position"] + Vector3["new"](0, 0.5, 0)
                end
                return nil
            end
            function MU_m1UmlXXDZ.AimbotMethod5(_HIvXvZUMHvb, HwmIw0XOIz1QDo, H0mzpI_bH)
                local bZwb_, bzmzO1xz = _HIvXvZUMHvb["WorldToViewportPoint"](_HIvXvZUMHvb, HwmIw0XOIz1QDo)
                if not bzmzO1xz then
                    return false
                end
                local N1DHbDZHQUzIbI = Vector2["new"](_HIvXvZUMHvb["ViewportSize"]["X"] / 2, _HIvXvZUMHvb["ViewportSize"]["Y"] / 2)
                local pluMv = Vector2["new"](bZwb_["X"], bZwb_["Y"])
                local _nmnIn0XHXI = (pluMv - N1DHbDZHQUzIbI)["Magnitude"]
                return _nmnIn0XHXI <= H0mzpI_bH
            end
            function MU_m1UmlXXDZ.AimbotMethod6()
                local Dnwol = CharacterFunction4()
                if not Dnwol then
                    return
                end
                local MIQ0Dw = Instance["new"]("ScreenGui")
                MIQ0Dw["Name"] = "SpearFOV"
                MIQ0Dw["ResetOnSpawn"] = false
                MIQ0Dw["DisplayOrder"] = 999999
                MIQ0Dw["Parent"] = Dnwol
                MU_m1UmlXXDZ.bMmpZw = Instance["new"]("Frame")
                MU_m1UmlXXDZ.bMmpZw["Size"] = UDim2["new"](0, _1OUbnbM["spearFovRadius"] * 2, 0, _1OUbnbM["spearFovRadius"] * 2)
                MU_m1UmlXXDZ.bMmpZw["Position"] = UDim2["new"](0.5, 0, 0.5, 0)
                MU_m1UmlXXDZ.bMmpZw["AnchorPoint"] = Vector2["new"](0.5, 0.5)
                MU_m1UmlXXDZ.bMmpZw["BackgroundColor3"] = Color3["fromRGB"](255, 255, 255)
                MU_m1UmlXXDZ.bMmpZw["BackgroundTransparency"] = 1
                MU_m1UmlXXDZ.bMmpZw["Visible"] = false
                MU_m1UmlXXDZ.bMmpZw["Parent"] = MIQ0Dw
                local HmZz1NIQDI = Instance["new"]("UICorner")
                HmZz1NIQDI["CornerRadius"] = UDim["new"](1, 0)
                HmZz1NIQDI["Parent"] = MU_m1UmlXXDZ.bMmpZw
                local pXwzH00W_qO1 = Instance["new"]("UIStroke")
                pXwzH00W_qO1["Color"] = Color3["fromRGB"](255, 255, 255)
                pXwzH00W_qO1["Thickness"] = 2
                pXwzH00W_qO1["Transparency"] = 0.2
                pXwzH00W_qO1["Parent"] = MU_m1UmlXXDZ.bMmpZw
            end
            function MU_m1UmlXXDZ.SpearMethod()
                local NlOIpq1ubXZvuv = CharacterFunction4()
                if not NlOIpq1ubXZvuv then
                    return
                end
                local oWWXnZHN_X = Instance["new"]("ScreenGui")
                oWWXnZHN_X["Name"] = "SpearIndicator"
                oWWXnZHN_X["ResetOnSpawn"] = false
                oWWXnZHN_X["Enabled"] = false
                oWWXnZHN_X["DisplayOrder"] = 999998
                oWWXnZHN_X["IgnoreGuiInset"] = true
                oWWXnZHN_X["Parent"] = NlOIpq1ubXZvuv
                MU_m1UmlXXDZ.qNollU = Instance["new"]("Frame")
                MU_m1UmlXXDZ.qNollU["Name"] = "MainFrame"
                MU_m1UmlXXDZ.qNollU["Size"] = UDim2["new"](0, 180, 0, 42)
                MU_m1UmlXXDZ.qNollU["Position"] = UDim2["new"](0.5, 0, 0.82, 0)
                MU_m1UmlXXDZ.qNollU["AnchorPoint"] = Vector2["new"](0.5, 0.5)
                MU_m1UmlXXDZ.qNollU["BackgroundColor3"] = Color3["fromRGB"](20, 20, 25)
                MU_m1UmlXXDZ.qNollU["BackgroundTransparency"] = 0.1
                MU_m1UmlXXDZ.qNollU["BorderSizePixel"] = 0
                MU_m1UmlXXDZ.qNollU["Parent"] = oWWXnZHN_X
                local _wpbIUoW_bZ = Instance["new"]("UICorner")
                _wpbIUoW_bZ["CornerRadius"] = UDim["new"](0, 8)
                _wpbIUoW_bZ["Parent"] = MU_m1UmlXXDZ.qNollU
                local HUplX = Instance["new"]("UIStroke")
                HUplX["Color"] = Color3["fromRGB"](45, 45, 55)
                HUplX["Thickness"] = 1
                HUplX["Transparency"] = 0.2
                HUplX["Parent"] = MU_m1UmlXXDZ.qNollU
                local oQ1XoUIZI = Instance["new"]("UIGradient")
                oQ1XoUIZI["Color"] = ColorSequence["new"]({
                    ColorSequenceKeypoint["new"](0, Color3["fromRGB"](35, 35, 40)),
                    ColorSequenceKeypoint["new"](1, Color3["fromRGB"](15, 15, 20)),
                })
                oQ1XoUIZI["Rotation"] = 90
                oQ1XoUIZI["Parent"] = MU_m1UmlXXDZ.qNollU
                MU_m1UmlXXDZ.MINoWIOu = Instance["new"]("Frame")
                MU_m1UmlXXDZ.MINoWIOu["Name"] = "AccentBar"
                MU_m1UmlXXDZ.MINoWIOu["Size"] = UDim2["new"](0, 3, 1, -12)
                MU_m1UmlXXDZ.MINoWIOu["Position"] = UDim2["new"](0, 6, 0, 6)
                MU_m1UmlXXDZ.MINoWIOu["BackgroundColor3"] = Color3["fromRGB"](200, 200, 200)
                MU_m1UmlXXDZ.MINoWIOu["BorderSizePixel"] = 0
                MU_m1UmlXXDZ.MINoWIOu["Parent"] = MU_m1UmlXXDZ.qNollU
                local pUvz_Dpl_mHXwN = Instance["new"]("UICorner")
                pUvz_Dpl_mHXwN["CornerRadius"] = UDim["new"](1, 0)
                pUvz_Dpl_mHXwN["Parent"] = MU_m1UmlXXDZ.MINoWIOu
                MU_m1UmlXXDZ.DpWXwbQZl = Instance["new"]("TextLabel")
                MU_m1UmlXXDZ.DpWXwbQZl["Name"] = "StatusText"
                MU_m1UmlXXDZ.DpWXwbQZl["Size"] = UDim2["new"](1, -18, 0, 18)
                MU_m1UmlXXDZ.DpWXwbQZl["Position"] = UDim2["new"](0, 14, 0, 5)
                MU_m1UmlXXDZ.DpWXwbQZl["BackgroundTransparency"] = 1
                MU_m1UmlXXDZ.DpWXwbQZl["Text"] = "ไม่มีเป้าหมาย"
                MU_m1UmlXXDZ.DpWXwbQZl["TextColor3"] = Color3["fromRGB"](255, 255, 255)
                MU_m1UmlXXDZ.DpWXwbQZl["TextSize"] = 13
                MU_m1UmlXXDZ.DpWXwbQZl["Font"] = Enum["Font"]["GothamBold"]
                MU_m1UmlXXDZ.DpWXwbQZl["TextXAlignment"] = Enum["TextXAlignment"]["Left"]
                MU_m1UmlXXDZ.DpWXwbQZl["TextTruncate"] = Enum["TextTruncate"]["AtEnd"]
                MU_m1UmlXXDZ.DpWXwbQZl["Parent"] = MU_m1UmlXXDZ.qNollU
                MU_m1UmlXXDZ.HnnwWM0 = Instance["new"]("TextLabel")
                MU_m1UmlXXDZ.HnnwWM0["Name"] = "InfoText"
                MU_m1UmlXXDZ.HnnwWM0["Size"] = UDim2["new"](1, -18, 0, 14)
                MU_m1UmlXXDZ.HnnwWM0["Position"] = UDim2["new"](0, 14, 0, 23)
                MU_m1UmlXXDZ.HnnwWM0["BackgroundTransparency"] = 1
                MU_m1UmlXXDZ.HnnwWM0["Text"] = "เล็งไปยังผู้รอดชีวิต"
                MU_m1UmlXXDZ.HnnwWM0["TextColor3"] = Color3["fromRGB"](160, 160, 170)
                MU_m1UmlXXDZ.HnnwWM0["TextSize"] = 10
                MU_m1UmlXXDZ.HnnwWM0["Font"] = Enum["Font"]["Gotham"]
                MU_m1UmlXXDZ.HnnwWM0["TextXAlignment"] = Enum["TextXAlignment"]["Left"]
                MU_m1UmlXXDZ.HnnwWM0["TextTruncate"] = Enum["TextTruncate"]["AtEnd"]
                MU_m1UmlXXDZ.HnnwWM0["Parent"] = MU_m1UmlXXDZ.qNollU
                MU_m1UmlXXDZ.OvWnq1Ozp = oWWXnZHN_X
            end
            function MU_m1UmlXXDZ.SpearMethod2()
                local __nHnuWIxW = CharacterFunction4()
                if not __nHnuWIxW then
                    return
                end
                MU_m1UmlXXDZ.llHll0Z = Instance["new"]("ScreenGui")
                MU_m1UmlXXDZ.llHll0Z["Name"] = "SpearVeil_SnapLine"
                MU_m1UmlXXDZ.llHll0Z["IgnoreGuiInset"] = true
                MU_m1UmlXXDZ.llHll0Z["ResetOnSpawn"] = false
                MU_m1UmlXXDZ.llHll0Z["DisplayOrder"] = 999999
                MU_m1UmlXXDZ.llHll0Z["Parent"] = __nHnuWIxW
                MU_m1UmlXXDZ.blnzDmopMD_Mzn = Instance["new"]("Frame")
                MU_m1UmlXXDZ.blnzDmopMD_Mzn["Name"] = "Line"
                MU_m1UmlXXDZ.blnzDmopMD_Mzn["AnchorPoint"] = Vector2["new"](0.5, 0.5)
                MU_m1UmlXXDZ.blnzDmopMD_Mzn["BorderSizePixel"] = 0
                MU_m1UmlXXDZ.blnzDmopMD_Mzn["BackgroundColor3"] = Color3["fromRGB"](255, 220, 0)
                MU_m1UmlXXDZ.blnzDmopMD_Mzn["BackgroundTransparency"] = 0.35
                MU_m1UmlXXDZ.blnzDmopMD_Mzn["Visible"] = false
                MU_m1UmlXXDZ.blnzDmopMD_Mzn["Parent"] = MU_m1UmlXXDZ.llHll0Z
                MU_m1UmlXXDZ.qnplm0_bD0p = Instance["new"]("Frame")
                MU_m1UmlXXDZ.qnplm0_bD0p["Name"] = "Dot"
                MU_m1UmlXXDZ.qnplm0_bD0p["AnchorPoint"] = Vector2["new"](0.5, 0.5)
                MU_m1UmlXXDZ.qnplm0_bD0p["BorderSizePixel"] = 0
                MU_m1UmlXXDZ.qnplm0_bD0p["BackgroundColor3"] = Color3["fromRGB"](255, 220, 0)
                MU_m1UmlXXDZ.qnplm0_bD0p["BackgroundTransparency"] = 0
                MU_m1UmlXXDZ.qnplm0_bD0p["Size"] = UDim2["fromOffset"](4, 4)
                MU_m1UmlXXDZ.qnplm0_bD0p["Visible"] = false
                MU_m1UmlXXDZ.qnplm0_bD0p["Parent"] = MU_m1UmlXXDZ.llHll0Z
                local IwNqN = Instance["new"]("UICorner")
                IwNqN["CornerRadius"] = UDim["new"](1, 0)
                IwNqN["Parent"] = MU_m1UmlXXDZ.qnplm0_bD0p
                MU_m1UmlXXDZ.bzwHIzb_ = Instance["new"]("TextLabel")
                MU_m1UmlXXDZ.bzwHIzb_["Name"] = "InfoText"
                MU_m1UmlXXDZ.bzwHIzb_["AnchorPoint"] = Vector2["new"](0.5, 1)
                MU_m1UmlXXDZ.bzwHIzb_["Size"] = UDim2["new"](0, 200, 0, 16)
                MU_m1UmlXXDZ.bzwHIzb_["BackgroundTransparency"] = 1
                MU_m1UmlXXDZ.bzwHIzb_["Text"] = ""
                MU_m1UmlXXDZ.bzwHIzb_["TextColor3"] = Color3["fromRGB"](255, 255, 255)
                MU_m1UmlXXDZ.bzwHIzb_["TextSize"] = 12
                MU_m1UmlXXDZ.bzwHIzb_["Font"] = Enum["Font"]["GothamBold"]
                MU_m1UmlXXDZ.bzwHIzb_["TextStrokeTransparency"] = 0
                MU_m1UmlXXDZ.bzwHIzb_["TextStrokeColor3"] = Color3["new"](0, 0, 0)
                MU_m1UmlXXDZ.bzwHIzb_["TextXAlignment"] = Enum["TextXAlignment"]["Center"]
                MU_m1UmlXXDZ.bzwHIzb_["TextTruncate"] = Enum["TextTruncate"]["AtEnd"]
                MU_m1UmlXXDZ.bzwHIzb_["Visible"] = false
                MU_m1UmlXXDZ.bzwHIzb_["Parent"] = MU_m1UmlXXDZ.llHll0Z
            end
            function MU_m1UmlXXDZ.SystemMethod8(MwI0wHqNl, ObXovZ, OUxIQmpmMm, QzUDMO)
                local OIION = math["cos"](ObXovZ)
                if OIION <= 0.015 then
                    return nil, nil
                end
                local MnWo1mZ = MwI0wHqNl / (OUxIQmpmMm * OIION)
                if MnWo1mZ ~= MnWo1mZ or MnWo1mZ <= 0 then
                    return nil, nil
                end
                local DmUz0vm_ = 1 / 60
                local pwvQDXNmO1D = 0.5 * QzUDMO * DmUz0vm_ * MnWo1mZ
                local HZqONWzUHmM0 = OUxIQmpmMm * math["sin"](ObXovZ) * MnWo1mZ - (0.5 * QzUDMO * MnWo1mZ * MnWo1mZ) - pwvQDXNmO1D
                return HZqONWzUHmM0, MnWo1mZ
            end
            function MU_m1UmlXXDZ.SystemMethod9(HIHuuZID, WmQobM, b_mNq_Mz, vpDUDvDWbZl, NOHHuqvDvbwIbx)
                local qpUXlQpz0mNZNN, lZXzoIv = MU_m1UmlXXDZ.SystemMethod8(HIHuuZID, b_mNq_Mz, vpDUDvDWbZl, NOHHuqvDvbwIbx)
                if not qpUXlQpz0mNZNN or not lZXzoIv then
                    return nil
                end
                if lZXzoIv < 0.025 or lZXzoIv > 5 then
                    return nil
                end
                local Dq0bNQuqIbm = math.abs(qpUXlQpz0mNZNN - WmQobM)
                local WwbNv = math.max(b_mNq_Mz - MU_m1UmlXXDZ.DWHIDO_, 0) * 0.35
                local WZx_mu = math.max(lZXzoIv - 1.3, 0) * 0.25
                return Dq0bNQuqIbm + WwbNv + WZx_mu, Dq0bNQuqIbm, lZXzoIv
            end
            function MU_m1UmlXXDZ.SystemMethod10(Mnx_M1Do, b_wuv0pU1IvM, DpWlpZMO, pz_vWInxwDzx)
                if DpWlpZMO <= 0 then
                    DpWlpZMO = 142.5
                end
                if pz_vWInxwDzx <= 0 then
                    pz_vWInxwDzx = 196.2
                end
                local QZImxW = b_wuv0pU1IvM - Mnx_M1Do
                local qWDqWq = Vector3["new"](QZImxW["X"], 0, QZImxW["Z"])
                local bOlUnlIbU = qWDqWq["Magnitude"]
                local lQqlXW__oo1Z = QZImxW["Y"]
                if QZImxW["Magnitude"] <= 0.001 then
                    return nil
                end
                if bOlUnlIbU <= 0.35 or pz_vWInxwDzx <= 0.001 then
                    return QZImxW["Unit"], math.clamp(QZImxW["Magnitude"] / DpWlpZMO, 0.025, 5)
                end
                local DwNOW = qWDqWq["Unit"]
                local lNl0l = math["atan2"](lQqlXW__oo1Z, bOlUnlIbU)
                local pZN_MQIDuIUM = math.max(-MU_m1UmlXXDZ._lMpNbDDMp0, lNl0l - math["rad"](18))
                local OqpnQq = MU_m1UmlXXDZ.wxnnH
                local __vXHDM, WOHopZwIXZWD, IlD_zzO, bwWIqq = nil, math["huge"], math["huge"], nil
                local w0xqmu1 = bOlUnlIbU > 80
                local loZDuQIHlwl = w0xqmu1 and 44 or 30
                local _NnwNzmxX0HIzD = w0xqmu1 and 0.08 or MU_m1UmlXXDZ.IDHlWZ_pn_Wl
                for vWovDu1Nvx0mon = 0, loZDuQIHlwl do
                    local wQQ_nZNOHu_qn = pZN_MQIDuIUM + (OqpnQq - pZN_MQIDuIUM) * (vWovDu1Nvx0mon / loZDuQIHlwl)
                    local vlnbNz, IDMHHDzpUZoQlN, vXOzlnqw = MU_m1UmlXXDZ.SystemMethod9(bOlUnlIbU, lQqlXW__oo1Z, wQQ_nZNOHu_qn, DpWlpZMO, pz_vWInxwDzx)
                    if vlnbNz and vlnbNz < WOHopZwIXZWD then
                        WOHopZwIXZWD, IlD_zzO, __vXHDM, bwWIqq = vlnbNz, IDMHHDzpUZoQlN, wQQ_nZNOHu_qn, vXOzlnqw
                        if IlD_zzO < _NnwNzmxX0HIzD then
                            break
                        end
                    end
                end
                if __vXHDM then
                    local MuvMHOWDQ = (OqpnQq - pZN_MQIDuIUM) / loZDuQIHlwl * 2.5
                    local BUunZxxnz = (IlD_zzO < _NnwNzmxX0HIzD) and 1 or (w0xqmu1 and 6 or 4)
                    for _XlDzHIu = 1, BUunZxxnz do
                        local wQOwIzH, WmQ00bDWv, OqOxNH, _QWQI = __vXHDM, WOHopZwIXZWD, IlD_zzO, bwWIqq
                        for oN1MXHumXUWxv = -3, 3 do
                            local WMpU_Ox0I0Q_b = math.clamp(__vXHDM + MuvMHOWDQ * (oN1MXHumXUWxv / 3), pZN_MQIDuIUM, OqpnQq)
                            local WwlzO_bzMMp_, IDUmoI1n_XHZNX, _XZqZqqZxuZ = MU_m1UmlXXDZ.SystemMethod9(bOlUnlIbU, lQqlXW__oo1Z, WMpU_Ox0I0Q_b, DpWlpZMO, pz_vWInxwDzx)
                            if WwlzO_bzMMp_ and WwlzO_bzMMp_ < WmQ00bDWv then
                                WmQ00bDWv, OqOxNH, wQOwIzH, _QWQI = WwlzO_bzMMp_, IDUmoI1n_XHZNX, WMpU_Ox0I0Q_b, _XZqZqqZxuZ
                            end
                        end
                        __vXHDM, WOHopZwIXZWD, IlD_zzO, bwWIqq = wQOwIzH, WmQ00bDWv, OqOxNH, _QWQI
                        if IlD_zzO < _NnwNzmxX0HIzD then
                            break
                        end
                        MuvMHOWDQ = MuvMHOWDQ * 0.38
                    end
                end
                if not __vXHDM then
                    local _ObZ_nonx0z = math.clamp(bOlUnlIbU / DpWlpZMO, 0.025, 5)
                    local N1q0p = math.min(0.5 * pz_vWInxwDzx * _ObZ_nonx0z * _ObZ_nonx0z, 15)
                    local o0MvwwHz = b_wuv0pU1IvM + Vector3["new"](0, N1q0p, 0)
                    local HmXQvIQuxnI = o0MvwwHz - Mnx_M1Do
                    if HmXQvIQuxnI["Magnitude"] <= 0.001 then
                        return nil
                    end
                    return HmXQvIQuxnI["Unit"], _ObZ_nonx0z
                end
                local MpnzpnHm0 = DwNOW * math["cos"](__vXHDM) + Vector3["new"](0, math["sin"](__vXHDM), 0)
                if MpnzpnHm0["Magnitude"] <= 0.001 then
                    return nil
                end
                return MpnzpnHm0["Unit"], bwWIqq
            end
            function MU_m1UmlXXDZ.SpearMethod3(HWXzZv0ulpqUD, Q1OqvNmlxX0Q, vHuxmW01WNmoMm, QnxWvZqnIHu0Z)
                if vHuxmW01WNmoMm <= 0 or QnxWvZqnIHu0Z <= 0 then
                    return false
                end
                local uzZoHNQIUuo0n0, NIZQbpHoq, lIv0mxIoZmD, oWnz1Q = HWXzZv0ulpqUD, Q1OqvNmlxX0Q, vHuxmW01WNmoMm, QnxWvZqnIHu0Z
                local OxxmqZQUU = (oWnz1Q * uzZoHNQIUuo0n0 * uzZoHNQIUuo0n0) / (2 * lIv0mxIoZmD * lIv0mxIoZmD)
                if OxxmqZQUU <= 0 then
                    return false
                end
                local vHxZowpMlZ, N0UMuZmNI, BXu_1zv_X = OxxmqZQUU, -uzZoHNQIUuo0n0, NIZQbpHoq + OxxmqZQUU
                return (N0UMuZmNI * N0UMuZmNI - 4 * vHxZowpMlZ * BXu_1zv_X) >= 0
            end
            function MU_m1UmlXXDZ.SpearMethod4(__nv_, HWobunOlMIOoN, QoHvO)
                for WMNumumUZn1xZv = 0.1, 3.0, 0.05 do
                    local lzpOUUp_ = 23
                    if WMNumumUZn1xZv < 1 then
                        lzpOUUp_ = math.max(23, WMNumumUZn1xZv * 150)
                    elseif WMNumumUZn1xZv < 2 then
                        lzpOUUp_ = 142.5
                    else
                        lzpOUUp_ = 165
                    end
                    if MU_m1UmlXXDZ.SpearMethod3(__nv_, HWobunOlMIOoN, lzpOUUp_, QoHvO) then
                        return WMNumumUZn1xZv
                    end
                end
                return nil
            end
            do
                MU_m1UmlXXDZ.MlUwlW1bU = nil
                pcall(function()
                    local l11HzX_xMH = oZzw1oZIXX_ and oZzw1oZIXX_["FindFirstChild"](oZzw1oZIXX_, "Remotes")
                    local NwNluXumnwvnz = l11HzX_xMH and l11HzX_xMH["FindFirstChild"](l11HzX_xMH, "Killers")
                    local DqNqHbNn0QZ = NwNluXumnwvnz and NwNluXumnwvnz["FindFirstChild"](NwNluXumnwvnz, "Veil")
                    local Du0Iq = DqNqHbNn0QZ and DqNqHbNn0QZ["FindFirstChild"](DqNqHbNn0QZ, "Spearthrow")
                    if Du0Iq then
                        MU_m1UmlXXDZ.MlUwlW1bU = Du0Iq
                    end
                end)
                pcall(function()
                    local DuxuHw = oZzw1oZIXX_ and oZzw1oZIXX_["FindFirstChild"](oZzw1oZIXX_, "Remotes")
                    local oQbnlQHxw1nQ = DuxuHw and DuxuHw["FindFirstChild"](DuxuHw, "Mechanics")
                    local Mb_uQ = oQbnlQHxw1nQ and oQbnlQHxw1nQ["FindFirstChild"](oQbnlQHxw1nQ, "visualize")
                    if Mb_uQ then
                        Mb_uQ["OnClientEvent"]:Connect(function(qNbXmbqq, wX_XHQZpmoq, InbZHM, lqqMMOQ1nu0UZ)
                            if qNbXmbqq == Q_qlzpNO1["Character"] then
                                if type(InbZHM) == "number" and InbZHM >= 15 and InbZHM <= 800 then
                                    MU_m1UmlXXDZ.INDqmHQUQXolN = InbZHM
                                end
                                if type(lqqMMOQ1nu0UZ) == "number" and lqqMMOQ1nu0UZ > 0.2 and lqqMMOQ1nu0UZ <= 5 then
                                    MU_m1UmlXXDZ.oDXWbwIl0XQM = lqqMMOQ1nu0UZ
                                end
                                local _bNZwmDX0_IMNq = MU_m1UmlXXDZ.IXHN1zUU
                                if
                                    _bNZwmDX0_IMNq
                                    and (tick() - (_bNZwmDX0_IMNq["t"] or 0)) < 5
                                    and (_bNZwmDX0_IMNq["speed"] or 0) > 1
                                    and type(InbZHM) == "number"
                                    and InbZHM >= 15
                                    and InbZHM <= 800
                                then
                                    local bpxvMx = InbZHM / _bNZwmDX0_IMNq["speed"]
                                    if bpxvMx > 0.2 and bpxvMx < 5 then
                                        local lzlHH0uI_1m0qH = tonumber(MU_m1UmlXXDZ.bWumxzloIvuDpU) or 1.0
                                        MU_m1UmlXXDZ.bWumxzloIvuDpU = math.clamp(lzlHH0uI_1m0qH + (bpxvMx - 1) * 0.3, 0.5, 2.0)
                                    end
                                end
                            end
                        end)
                    end
                end)
                pcall(function()
                    local ox1Mnm
                    ox1Mnm = hookmetamethod(game, "__namecall", function(...)
                        local _wDMzzMOX0O10 = getnamecallmethod()
                        if _wDMzzMOX0O10 == "FireServer" then
                            local WbMqNqD1u = table["pack"](...)
                            local Bpq_DMl = WbMqNqD1u[1]
                            if typeof(Bpq_DMl) == "Instance" and MU_m1UmlXXDZ.MlUwlW1bU and rawequal(Bpq_DMl, MU_m1UmlXXDZ.MlUwlW1bU) then
                                if _1OUbnbM["spearEnabled"] and typeof(MU_m1UmlXXDZ.OupXz) == "Vector3" then
                                    if WbMqNqD1u["n"] >= 4 and typeof(WbMqNqD1u[2]) == "Vector3" and typeof(WbMqNqD1u[4]) == "Vector3" then
                                        WbMqNqD1u[2] = MU_m1UmlXXDZ.OupXz
                                        return ox1Mnm(table.unpack(WbMqNqD1u, 1, WbMqNqD1u["n"]))
                                    end
                                end
                            end
                        end
                        return ox1Mnm(...)
                    end)
                end)
                pcall(function()
                    local QNZUQ_Qq
                    QNZUQ_Qq = hookmetamethod(game, "__index", function(NHwOH_WMvIXv, HInINqm)
                        if HInINqm == "FireServer" and typeof(NHwOH_WMvIXv) == "Instance" and MU_m1UmlXXDZ.MlUwlW1bU and rawequal(NHwOH_WMvIXv, MU_m1UmlXXDZ.MlUwlW1bU) then
                            return (newcclosure or function(w1mvmb)
                                return w1mvmb
                            end)(function(...)
                                local qqXDUMHp = table["pack"](...)
                                if _1OUbnbM["spearEnabled"] and typeof(MU_m1UmlXXDZ.OupXz) == "Vector3" then
                                    if qqXDUMHp["n"] >= 4 and typeof(qqXDUMHp[2]) == "Vector3" and typeof(qqXDUMHp[4]) == "Vector3" then
                                        qqXDUMHp[2] = MU_m1UmlXXDZ.OupXz
                                    end
                                end
                                return QNZUQ_Qq(NHwOH_WMvIXv, HInINqm)(table.unpack(qqXDUMHp, 1, qqXDUMHp["n"]))
                            end)
                        end
                        return QNZUQ_Qq(NHwOH_WMvIXv, HInINqm)
                    end)
                end)
            end
            do
                MU_m1UmlXXDZ.DqIUbXNW = {}
                function MU_m1UmlXXDZ.SpearMethod5(_Oup_, _1MQUo_Xv)
                    local NNMQO10qZIOpow = _Oup_ and _Oup_["Parent"]
                    while NNMQO10qZIOpow do
                        if NNMQO10qZIOpow["Name"] == _1MQUo_Xv then
                            return true
                        end
                        NNMQO10qZIOpow = NNMQO10qZIOpow["Parent"]
                    end
                    return false
                end
                function MU_m1UmlXXDZ.SpearMethod6(w_QbW1UU0Izqpx)
                    if not (w_QbW1UU0Izqpx and w_QbW1UU0Izqpx["IsA"](w_QbW1UU0Izqpx, "GuiButton")) then
                        return false
                    end
                    if w_QbW1UU0Izqpx["Name"] ~= "attack" and w_QbW1UU0Izqpx["Name"] ~= "Gui-mob" then
                        return false
                    end
                    if not MU_m1UmlXXDZ.SpearMethod5(w_QbW1UU0Izqpx, "Slasher-mob") and not MU_m1UmlXXDZ.SpearMethod5(w_QbW1UU0Izqpx, "Survivor-mob") then
                        return false
                    end
                    if not MU_m1UmlXXDZ.SpearMethod5(w_QbW1UU0Izqpx, "Control") and not MU_m1UmlXXDZ.SpearMethod5(w_QbW1UU0Izqpx, "Controls") then
                        return false
                    end
                    return true
                end
                function MU_m1UmlXXDZ.SpearMethod7(IubHoW)
                    if not MU_m1UmlXXDZ.SpearMethod6(IubHoW) then
                        return
                    end
                    if MU_m1UmlXXDZ.DqIUbXNW[IubHoW] then
                        return
                    end
                    MU_m1UmlXXDZ.DqIUbXNW[IubHoW] = true
                    IubHoW["InputBegan"]:Connect(function(_xmvwQOZbU)
                        local uMOMUZIXlwUO1 = _xmvwQOZbU["UserInputType"]
                        if uMOMUZIXlwUO1 ~= Enum["UserInputType"]["Touch"] and uMOMUZIXlwUO1 ~= Enum["UserInputType"]["MouseButton1"] then
                            return
                        end
                        local qlDZQIMNU = Q_qlzpNO1["Character"]
                        if qlDZQIMNU and qlDZQIMNU["GetAttribute"](qlDZQIMNU, "spearmode") then
                            MU_m1UmlXXDZ.oOD0QWnulW = true
                            MU_m1UmlXXDZ.bbmImz = tick()
                        end
                    end)
                    IubHoW["InputEnded"]:Connect(function(BQQXnN)
                        local NxHuQwmZ = BQQXnN["UserInputType"]
                        if NxHuQwmZ ~= Enum["UserInputType"]["Touch"] and NxHuQwmZ ~= Enum["UserInputType"]["MouseButton1"] then
                            return
                        end
                        MU_m1UmlXXDZ.oOD0QWnulW = false
                        MU_m1UmlXXDZ.bbmImz = nil
                    end)
                end
                function MU_m1UmlXXDZ.SetupMobileControls()
                    local bpxIZmH = Q_qlzpNO1["FindFirstChildOfClass"](Q_qlzpNO1, "PlayerGui")
                    if not bpxIZmH then
                        return
                    end
                    pcall(function()
                        local function SpearFunction(OHUvWHU)
                            local vOpXzq1v1OXlv = bpxIZmH["FindFirstChild"](bpxIZmH, OHUvWHU, true)
                            if not vOpXzq1v1OXlv then
                                return
                            end
                            local qMWZ_0wuwzm = vOpXzq1v1OXlv["FindFirstChild"](vOpXzq1v1OXlv, "Control") or vOpXzq1v1OXlv["FindFirstChild"](vOpXzq1v1OXlv, "Controls")
                            if qMWZ_0wuwzm then
                                local function SpearFunction2(lMX1I)
                                    for BN1oXmmp, H_x_UIHw in ipairs(lMX1I["GetChildren"](lMX1I)) do
                                        MU_m1UmlXXDZ.SpearMethod7(H_x_UIHw)
                                        SpearFunction2(H_x_UIHw)
                                    end
                                end
                                SpearFunction2(qMWZ_0wuwzm)
                            end
                            local QO_pxNN = vOpXzq1v1OXlv["FindFirstChild"](vOpXzq1v1OXlv, "Gui-mob", true)
                            if QO_pxNN and QO_pxNN["IsA"](QO_pxNN, "GuiButton") then
                                MU_m1UmlXXDZ.SpearMethod7(QO_pxNN)
                            end
                        end
                        SpearFunction("Slasher-mob")
                        SpearFunction("Survivor-mob")
                    end)
                    bpxIZmH["DescendantAdded"]:Connect(function(BIHuzM_bQpm0Z)
                        MU_m1UmlXXDZ.SpearMethod7(BIHuzM_bQpm0Z)
                    end)
                end
                M_QbbvZ0IU["InputBegan"]:Connect(function(BNHbUlZpHpmz, uwOQ_lvZWx)
                    if BNHbUlZpHpmz["UserInputType"] == Enum["UserInputType"]["MouseButton1"] then
                        local NOpWZbXXOIobzo = Q_qlzpNO1["Character"]
                        if NOpWZbXXOIobzo and NOpWZbXXOIobzo["GetAttribute"](NOpWZbXXOIobzo, "spearmode") then
                            MU_m1UmlXXDZ.oOD0QWnulW = true
                            MU_m1UmlXXDZ.bbmImz = tick()
                        end
                    end
                end)
                M_QbbvZ0IU["InputEnded"]:Connect(function(pODIIwDZDZw)
                    if pODIIwDZDZw["UserInputType"] == Enum["UserInputType"]["MouseButton1"] then
                        MU_m1UmlXXDZ.oOD0QWnulW = false
                        MU_m1UmlXXDZ.bbmImz = nil
                    end
                end)
                MU_m1UmlXXDZ.SetupMobileControls()
            end
            CharacterFunction6("Spear_UpdateSnapLine", 0, function(qxDwnDMnmnxMv)
                if not _1OUbnbM["spearSnapLineEnabled"] then
                    if MU_m1UmlXXDZ.blnzDmopMD_Mzn then
                        MU_m1UmlXXDZ.blnzDmopMD_Mzn["Visible"] = false
                    end
                    if MU_m1UmlXXDZ.qnplm0_bD0p then
                        MU_m1UmlXXDZ.qnplm0_bD0p["Visible"] = false
                    end
                    if MU_m1UmlXXDZ.bzwHIzb_ then
                        MU_m1UmlXXDZ.bzwHIzb_["Visible"] = false
                    end
                    MU_m1UmlXXDZ.OHop1vzpZ["locked"] = false
                    MU_m1UmlXXDZ.OHop1vzpZ["lockedTarget"] = nil
                    MU_m1UmlXXDZ.OHop1vzpZ["lockedPlayerName"] = ""
                    return
                end
                local BmmDuwIDu = wxl1Uo1UbDnnb["CurrentCamera"]
                if not BmmDuwIDu then
                    if MU_m1UmlXXDZ.blnzDmopMD_Mzn then
                        MU_m1UmlXXDZ.blnzDmopMD_Mzn["Visible"] = false
                    end
                    if MU_m1UmlXXDZ.qnplm0_bD0p then
                        MU_m1UmlXXDZ.qnplm0_bD0p["Visible"] = false
                    end
                    if MU_m1UmlXXDZ.bzwHIzb_ then
                        MU_m1UmlXXDZ.bzwHIzb_["Visible"] = false
                    end
                    return
                end
                local lxDuupWD1W = Q_qlzpNO1["Character"]
                local MUx_ZNqUHOWZ = lxDuupWD1W and lxDuupWD1W["GetAttribute"](lxDuupWD1W, "spearmode")
                if not MUx_ZNqUHOWZ then
                    if MU_m1UmlXXDZ.blnzDmopMD_Mzn then
                        MU_m1UmlXXDZ.blnzDmopMD_Mzn["Visible"] = false
                    end
                    if MU_m1UmlXXDZ.qnplm0_bD0p then
                        MU_m1UmlXXDZ.qnplm0_bD0p["Visible"] = false
                    end
                    if MU_m1UmlXXDZ.bzwHIzb_ then
                        MU_m1UmlXXDZ.bzwHIzb_["Visible"] = false
                    end
                    return
                end
                local _0z1l1oqmppbu0 = BmmDuwIDu["ViewportSize"]
                local uv0UQmXNOOOm = Vector2["new"](_0z1l1oqmppbu0["X"] / 2, _0z1l1oqmppbu0["Y"] / 2)
                local bMlzQ = lxDuupWD1W and lxDuupWD1W["FindFirstChild"](lxDuupWD1W, "HumanoidRootPart")
                local function AimbotFunction5()
                    local uOmq0UXWUbUIl = nil
                    local DMO1m = math["huge"]
                    local vzD_zluQNNn = math["huge"]
                    for bUv_ZDWnvHX1, uUX_WuvIlqNwl in ipairs(WIDWH["GetPlayers"](WIDWH)) do
                        if uUX_WuvIlqNwl ~= Q_qlzpNO1 and CharacterFunction7(uUX_WuvIlqNwl) == "survivor" then
                            local vqIWxzXD = uUX_WuvIlqNwl["Character"]
                            if vqIWxzXD then
                                local DUWwDmWpnvWbb = vqIWxzXD["FindFirstChildOfClass"](vqIWxzXD, "Humanoid")
                                local H0pxD = MU_m1UmlXXDZ.AimbotMethod4(vqIWxzXD)
                                if
                                    H0pxD
                                    and DUWwDmWpnvWbb
                                    and DUWwDmWpnvWbb["Health"] > 0
                                    and DUWwDmWpnvWbb["Health"] > 50
                                    and not vqIWxzXD["GetAttribute"](vqIWxzXD, "IsHooked")
                                then
                                    local pUN_zNWwv1D = bMlzQ and (H0pxD - bMlzQ["Position"])["Magnitude"] or 0
                                    if pUN_zNWwv1D <= _1OUbnbM["spearSnaplineMaxDistance"] then
                                        local bXzqn, IWnvM = BmmDuwIDu["WorldToViewportPoint"](BmmDuwIDu, H0pxD)
                                        if IWnvM then
                                            local HbzoHXbHIxl = (Vector2["new"](bXzqn["X"], bXzqn["Y"]) - uv0UQmXNOOOm)["Magnitude"]
                                            if HbzoHXbHIxl <= _1OUbnbM["spearFovRadius"] then
                                                if HbzoHXbHIxl < DMO1m then
                                                    DMO1m = HbzoHXbHIxl
                                                    vzD_zluQNNn = pUN_zNWwv1D
                                                    uOmq0UXWUbUIl = uUX_WuvIlqNwl
                                                end
                                            end
                                        end
                                    end
                                end
                            end
                        end
                    end
                    return uOmq0UXWUbUIl, DMO1m, vzD_zluQNNn
                end
                if MU_m1UmlXXDZ.oOD0QWnulW and not MU_m1UmlXXDZ.OHop1vzpZ["locked"] then
                    local pbuWqbo, _l0pulpzIvw, uQqDxb = AimbotFunction5()
                    if pbuWqbo then
                        MU_m1UmlXXDZ.OHop1vzpZ["locked"] = true
                        MU_m1UmlXXDZ.OHop1vzpZ["lockedTarget"] = pbuWqbo
                        MU_m1UmlXXDZ.OHop1vzpZ["lockedPlayerName"] = pbuWqbo["Name"]
                    end
                end
                if not MU_m1UmlXXDZ.oOD0QWnulW then
                    MU_m1UmlXXDZ.OHop1vzpZ["locked"] = false
                    MU_m1UmlXXDZ.OHop1vzpZ["lockedTarget"] = nil
                    MU_m1UmlXXDZ.OHop1vzpZ["lockedPlayerName"] = ""
                end
                local HuQvvbqxZ = false
                local _DoIZ10p0WUnm = nil
                local qUWNmqQqIpQ1 = 0
                local pl1oQU_MQz0p = nil
                if MU_m1UmlXXDZ.OHop1vzpZ["locked"] and MU_m1UmlXXDZ.OHop1vzpZ["lockedTarget"] then
                    local DOqvHqm0mDHzub = MU_m1UmlXXDZ.OHop1vzpZ["lockedTarget"]["Character"]
                    if DOqvHqm0mDHzub then
                        local b0DUOOzUQXoupo = DOqvHqm0mDHzub["FindFirstChildOfClass"](DOqvHqm0mDHzub, "Humanoid")
                        local Wzpl_qXZOwWU = MU_m1UmlXXDZ.AimbotMethod4(DOqvHqm0mDHzub)
                        if Wzpl_qXZOwWU and b0DUOOzUQXoupo and b0DUOOzUQXoupo["Health"] > 50 and not DOqvHqm0mDHzub["GetAttribute"](DOqvHqm0mDHzub, "IsHooked") then
                            local vZlDDbonN, QXumQlHxXb = BmmDuwIDu["WorldToViewportPoint"](BmmDuwIDu, Wzpl_qXZOwWU)
                            if QXumQlHxXb then
                                local HzXXoON = (Vector2["new"](vZlDDbonN["X"], vZlDDbonN["Y"]) - uv0UQmXNOOOm)["Magnitude"]
                                if HzXXoON <= _1OUbnbM["spearFovRadius"] * 1.15 then
                                    _DoIZ10p0WUnm = Vector2["new"](vZlDDbonN["X"], vZlDDbonN["Y"])
                                    qUWNmqQqIpQ1 = bMlzQ and (Wzpl_qXZOwWU - bMlzQ["Position"])["Magnitude"] or 0
                                    pl1oQU_MQz0p = Wzpl_qXZOwWU
                                    HuQvvbqxZ = true
                                end
                            end
                        end
                    end
                    if not HuQvvbqxZ then
                        MU_m1UmlXXDZ.OHop1vzpZ["locked"] = false
                        MU_m1UmlXXDZ.OHop1vzpZ["lockedTarget"] = nil
                        MU_m1UmlXXDZ.OHop1vzpZ["lockedPlayerName"] = ""
                    end
                end
                local uMXbW = nil
                local _vU1lvH0Q00u = 0
                local lQlXpHwpU = nil
                local p1qOM = nil
                if not MU_m1UmlXXDZ.OHop1vzpZ["locked"] then
                    local v0o0Mnb, Wxb_M, OlZ0Z = AimbotFunction5()
                    if v0o0Mnb then
                        local Qll_zQOHw = MU_m1UmlXXDZ.AimbotMethod4(v0o0Mnb["Character"])
                        local qXl0wvU0xQW, wDMMUboxn1H = BmmDuwIDu["WorldToViewportPoint"](BmmDuwIDu, Qll_zQOHw)
                        uMXbW = Vector2["new"](qXl0wvU0xQW["X"], qXl0wvU0xQW["Y"])
                        _vU1lvH0Q00u = OlZ0Z
                        lQlXpHwpU = Qll_zQOHw
                        p1qOM = v0o0Mnb
                    end
                end
                local HbUQw = false
                if MU_m1UmlXXDZ.oOD0QWnulW and MU_m1UmlXXDZ.bbmImz and bMlzQ then
                    local wWOqpwxIDznv = pl1oQU_MQz0p or (p1qOM and MU_m1UmlXXDZ.AimbotMethod4(p1qOM["Character"]))
                    if wWOqpwxIDznv then
                        local H0XMWw = BmmDuwIDu["CFrame"]["Position"]
                        local uz_ZZzuHUuv = wWOqpwxIDznv - H0XMWw
                        local QDqqmW = Vector3["new"](uz_ZZzuHUuv["X"], 0, uz_ZZzuHUuv["Z"])
                        local oMQUnNlmOo = QDqqmW["Magnitude"]
                        local uDDobMlqDvDuxz = uz_ZZzuHUuv["Y"]
                        local QQnuu = wxl1Uo1UbDnnb["Gravity"] * (MU_m1UmlXXDZ.oDXWbwIl0XQM or 1)
                        local p1pXOq0 = MU_m1UmlXXDZ.SpearMethod4(oMQUnNlmOo, uDDobMlqDvDuxz, QQnuu)
                        if p1pXOq0 then
                            local uzQxNuIXDvOxQx = tick() - MU_m1UmlXXDZ.bbmImz
                            if uzQxNuIXDvOxQx >= p1pXOq0 then
                                HbUQw = true
                            end
                        end
                    end
                end
                local N0OmqXxmb0HzXu = nil
                local DN0mqq = ""
                local uOpxnMpOMWDWmU = 0
                if MU_m1UmlXXDZ.OHop1vzpZ["locked"] and HuQvvbqxZ then
                    N0OmqXxmb0HzXu = _DoIZ10p0WUnm
                    DN0mqq = MU_m1UmlXXDZ.OHop1vzpZ["lockedPlayerName"]
                    uOpxnMpOMWDWmU = qUWNmqQqIpQ1
                elseif uMXbW then
                    N0OmqXxmb0HzXu = uMXbW
                    DN0mqq = p1qOM and p1qOM["Name"] or ""
                    uOpxnMpOMWDWmU = _vU1lvH0Q00u
                end
                local DMmznDZq = pcall(function()
                    if not MU_m1UmlXXDZ.blnzDmopMD_Mzn or not MU_m1UmlXXDZ.qnplm0_bD0p or not MU_m1UmlXXDZ.bzwHIzb_ or not BmmDuwIDu then
                        if MU_m1UmlXXDZ.blnzDmopMD_Mzn then
                            MU_m1UmlXXDZ.blnzDmopMD_Mzn["Visible"] = false
                        end
                        if MU_m1UmlXXDZ.qnplm0_bD0p then
                            MU_m1UmlXXDZ.qnplm0_bD0p["Visible"] = false
                        end
                        if MU_m1UmlXXDZ.bzwHIzb_ then
                            MU_m1UmlXXDZ.bzwHIzb_["Visible"] = false
                        end
                        return
                    end
                    if not N0OmqXxmb0HzXu then
                        MU_m1UmlXXDZ.blnzDmopMD_Mzn["Visible"] = false
                        MU_m1UmlXXDZ.qnplm0_bD0p["Visible"] = false
                        MU_m1UmlXXDZ.bzwHIzb_["Visible"] = false
                        return
                    end
                    local BmmvXzlOq = uv0UQmXNOOOm
                    local Ozmbwnll1luQu = N0OmqXxmb0HzXu
                    local vp1lp = Ozmbwnll1luQu - BmmvXzlOq
                    local pmpWwouIDmlUIn = vp1lp["Magnitude"]
                    if pmpWwouIDmlUIn < 2 then
                        MU_m1UmlXXDZ.blnzDmopMD_Mzn["Visible"] = false
                        MU_m1UmlXXDZ.qnplm0_bD0p["Visible"] = false
                        MU_m1UmlXXDZ.bzwHIzb_["Visible"] = false
                        return
                    end
                    local wDUMIoIXWzpm0O = HbUQw and Color3["fromRGB"](0, 255, 120) or Color3["fromRGB"](255, 220, 0)
                    local omxQQHI1m = HbUQw and 0.08 or 0.35
                    MU_m1UmlXXDZ.blnzDmopMD_Mzn["BackgroundColor3"] = wDUMIoIXWzpm0O
                    MU_m1UmlXXDZ.blnzDmopMD_Mzn["BackgroundTransparency"] = omxQQHI1m
                    MU_m1UmlXXDZ.blnzDmopMD_Mzn["Size"] = UDim2["fromOffset"](pmpWwouIDmlUIn, HbUQw and 2 or 1)
                    MU_m1UmlXXDZ.blnzDmopMD_Mzn["Position"] = UDim2["fromOffset"]((BmmvXzlOq["X"] + Ozmbwnll1luQu["X"]) * 0.5, (BmmvXzlOq["Y"] + Ozmbwnll1luQu["Y"]) * 0.5)
                    MU_m1UmlXXDZ.blnzDmopMD_Mzn["Rotation"] = math["deg"](math["atan2"](vp1lp["Y"], vp1lp["X"]))
                    MU_m1UmlXXDZ.blnzDmopMD_Mzn["Visible"] = true
                    MU_m1UmlXXDZ.qnplm0_bD0p["BackgroundColor3"] = wDUMIoIXWzpm0O
                    MU_m1UmlXXDZ.qnplm0_bD0p["Position"] = UDim2["fromOffset"](Ozmbwnll1luQu["X"], Ozmbwnll1luQu["Y"])
                    MU_m1UmlXXDZ.qnplm0_bD0p["Visible"] = true
                    if _1OUbnbM["spearSnaplineShowText"] and DN0mqq ~= "" then
                        MU_m1UmlXXDZ.bzwHIzb_["Text"] = string.format("%s [%dm]", DN0mqq, math.floor(uOpxnMpOMWDWmU))
                        MU_m1UmlXXDZ.bzwHIzb_["TextColor3"] = wDUMIoIXWzpm0O
                        MU_m1UmlXXDZ.bzwHIzb_["Position"] = UDim2["fromOffset"](Ozmbwnll1luQu["X"], Ozmbwnll1luQu["Y"] - 14)
                        MU_m1UmlXXDZ.bzwHIzb_["Visible"] = true
                    else
                        MU_m1UmlXXDZ.bzwHIzb_["Visible"] = false
                    end
                end)
                if not DMmznDZq then
                    if MU_m1UmlXXDZ.blnzDmopMD_Mzn then
                        MU_m1UmlXXDZ.blnzDmopMD_Mzn["Visible"] = false
                    end
                    if MU_m1UmlXXDZ.qnplm0_bD0p then
                        MU_m1UmlXXDZ.qnplm0_bD0p["Visible"] = false
                    end
                    if MU_m1UmlXXDZ.bzwHIzb_ then
                        MU_m1UmlXXDZ.bzwHIzb_["Visible"] = false
                    end
                end
            end)
            CharacterFunction6("Spear_UpdateSpearSystem", 0, function()
                if MU_m1UmlXXDZ.bMmpZw then
                    MU_m1UmlXXDZ.bMmpZw["Visible"] = _1OUbnbM["spearFovCircleEnabled"]
                    local QvHpovmIMHm = _1OUbnbM["spearFovRadius"] * 2
                    if MU_m1UmlXXDZ.bMmpZw["Size"]["X"]["Offset"] ~= QvHpovmIMHm then
                        MU_m1UmlXXDZ.bMmpZw["Size"] = UDim2["new"](0, QvHpovmIMHm, 0, QvHpovmIMHm)
                    end
                end
                if not _1OUbnbM["spearEnabled"] then
                    MU_m1UmlXXDZ.OupXz = nil
                    return
                end
                local IWWx_qUQWXZIq = Q_qlzpNO1["Character"]
                local _MuOXqDZHZuq = IWWx_qUQWXZIq and IWWx_qUQWXZIq["GetAttribute"](IWWx_qUQWXZIq, "spearmode")
                if not _MuOXqDZHZuq then
                    if MU_m1UmlXXDZ.OvWnq1Ozp then
                        MU_m1UmlXXDZ.OvWnq1Ozp["Enabled"] = false
                    end
                    MU_m1UmlXXDZ.OupXz = nil
                    return
                end
                local lb_nnMW1mDpl0D = IWWx_qUQWXZIq and IWWx_qUQWXZIq["FindFirstChild"](IWWx_qUQWXZIq, "HumanoidRootPart")
                if not lb_nnMW1mDpl0D then
                    MU_m1UmlXXDZ.OupXz = nil
                    return
                end
                local _wIHI = wxl1Uo1UbDnnb["CurrentCamera"]
                if not _wIHI then
                    MU_m1UmlXXDZ.OupXz = nil
                    return
                end
                if _1OUbnbM["spearIndicatorEnabled"] and MU_m1UmlXXDZ.OvWnq1Ozp then
                    MU_m1UmlXXDZ.OvWnq1Ozp["Enabled"] = true
                end
                local vOH_XDM = nil
                local WwwQnUuvZ_XI = math["huge"]
                local vXHUu = math["huge"]
                local wxXlv_Io_oM = false
                local HQUnuZXoQQ = Vector2["new"](_wIHI["ViewportSize"]["X"] / 2, _wIHI["ViewportSize"]["Y"] / 2)
                for wpnnZ, N01OnZbNIuD in ipairs(WIDWH["GetPlayers"](WIDWH)) do
                    if N01OnZbNIuD ~= Q_qlzpNO1 and CharacterFunction7(N01OnZbNIuD) == "survivor" then
                        local B1ozmUowp_ = N01OnZbNIuD["Character"]
                        if B1ozmUowp_ then
                            local HUvwq1xHuM = B1ozmUowp_["FindFirstChildOfClass"](B1ozmUowp_, "Humanoid")
                            local bpvIvwIqq = MU_m1UmlXXDZ.AimbotMethod4(B1ozmUowp_)
                            local NXQm0qpx = B1ozmUowp_["FindFirstChild"](B1ozmUowp_, "HumanoidRootPart")
                            if
                                HUvwq1xHuM
                                and HUvwq1xHuM["Health"] > 50
                                and typeof(bpvIvwIqq) == "Vector3"
                                and NXQm0qpx
                                and not B1ozmUowp_["GetAttribute"](B1ozmUowp_, "IsHooked")
                            then
                                local wo1no1z = (bpvIvwIqq - lb_nnMW1mDpl0D["Position"])["Magnitude"]
                                local pquH_, ObUzl0xqQMoMn = _wIHI["WorldToViewportPoint"](_wIHI, bpvIvwIqq)
                                if ObUzl0xqQMoMn then
                                    local qmwUnM_lqwm = (Vector2["new"](pquH_["X"], pquH_["Y"]) - HQUnuZXoQQ)["Magnitude"]
                                    if qmwUnM_lqwm <= _1OUbnbM["spearFovRadius"] then
                                        if qmwUnM_lqwm < WwwQnUuvZ_XI then
                                            WwwQnUuvZ_XI = qmwUnM_lqwm
                                            vXHUu = wo1no1z
                                            vOH_XDM = N01OnZbNIuD
                                            wxXlv_Io_oM = true
                                        end
                                    elseif not wxXlv_Io_oM and wo1no1z < vXHUu then
                                        vXHUu = wo1no1z
                                        vOH_XDM = N01OnZbNIuD
                                    end
                                elseif not wxXlv_Io_oM and wo1no1z < vXHUu then
                                    vXHUu = wo1no1z
                                    vOH_XDM = N01OnZbNIuD
                                end
                            end
                        end
                    end
                end
                if vOH_XDM and vOH_XDM["Character"] then
                    local WQ_0ZUomDODw = MU_m1UmlXXDZ.AimbotMethod4(vOH_XDM["Character"])
                    if WQ_0ZUomDODw then
                        wxXlv_Io_oM = MU_m1UmlXXDZ.AimbotMethod5(_wIHI, WQ_0ZUomDODw, _1OUbnbM["spearFovRadius"])
                    end
                end
                if _1OUbnbM["spearIndicatorEnabled"] and _MuOXqDZHZuq and MU_m1UmlXXDZ.DpWXwbQZl then
                    if not vOH_XDM or not vOH_XDM["Character"] then
                        MU_m1UmlXXDZ.DpWXwbQZl["Text"] = "ไม่มีเป้าหมาย"
                        MU_m1UmlXXDZ.DpWXwbQZl["TextColor3"] = Color3["fromRGB"](200, 200, 200)
                        MU_m1UmlXXDZ.MINoWIOu["BackgroundColor3"] = Color3["fromRGB"](80, 80, 80)
                        MU_m1UmlXXDZ.HnnwWM0["Text"] = "เล็งไปยังผู้รอดชีวิต"
                    else
                        local QHpwpQ = MU_m1UmlXXDZ.AimbotMethod4(vOH_XDM["Character"])
                        local NWv1Nwqlvnl = _wIHI["CFrame"]["Position"]
                        local uX0bbpb = QHpwpQ - NWv1Nwqlvnl
                        local WwDW1mWQWl0m_Q = Vector3["new"](uX0bbpb["X"], 0, uX0bbpb["Z"])
                        local NInMXHXwNHIWp = WwDW1mWQWl0m_Q["Magnitude"]
                        local vommOXMn = uX0bbpb["Y"]
                        local QMlwOlpQDIxpn = uX0bbpb["Magnitude"]
                        local Bn0uowm = wxl1Uo1UbDnnb["Gravity"] * (MU_m1UmlXXDZ.oDXWbwIl0XQM or 1)
                        local DQHHDl = MU_m1UmlXXDZ.SpearMethod4(NInMXHXwNHIWp, vommOXMn, Bn0uowm)
                        local o1pZuImoDUnl = vOH_XDM["Name"]
                        local Nz0MNblwxmQH = string.format("%.0f", QMlwOlpQDIxpn)
                        if not DQHHDl then
                            MU_m1UmlXXDZ.DpWXwbQZl["Text"] = "อยู่นอกระยะ"
                            MU_m1UmlXXDZ.DpWXwbQZl["TextColor3"] = Color3["fromRGB"](255, 80, 80)
                            MU_m1UmlXXDZ.MINoWIOu["BackgroundColor3"] = Color3["fromRGB"](255, 50, 50)
                            MU_m1UmlXXDZ.HnnwWM0["Text"] = string.format("%s | %s studs", o1pZuImoDUnl, Nz0MNblwxmQH)
                        elseif not wxXlv_Io_oM then
                            MU_m1UmlXXDZ.DpWXwbQZl["Text"] = "กำลังเล็งเป้าหมาย"
                            MU_m1UmlXXDZ.DpWXwbQZl["TextColor3"] = Color3["fromRGB"](255, 150, 150)
                            MU_m1UmlXXDZ.MINoWIOu["BackgroundColor3"] = Color3["fromRGB"](255, 100, 100)
                            local WzHZbHHI1DXoOI, qIw0ovZm = _wIHI["WorldToViewportPoint"](_wIHI, QHpwpQ)
                            local Bwu_DIq0 = Vector2["new"](_wIHI["ViewportSize"]["X"] / 2, _wIHI["ViewportSize"]["Y"] / 2)
                            local pWWQ__UmW1O = (Vector2["new"](WzHZbHHI1DXoOI["X"], WzHZbHHI1DXoOI["Y"]) - Bwu_DIq0)["Magnitude"]
                            local wmzON = string.format("%.0f", pWWQ__UmW1O - _1OUbnbM["spearFovRadius"])
                            if not qIw0ovZm then
                                MU_m1UmlXXDZ.HnnwWM0["Text"] = "เป้าหมายอยู่ด้านหลังกล้อง"
                            else
                                MU_m1UmlXXDZ.HnnwWM0["Text"] = string.format("Masuk FOV: %s px lagi", wmzON)
                            end
                        elseif not MU_m1UmlXXDZ.oOD0QWnulW then
                            MU_m1UmlXXDZ.DpWXwbQZl["Text"] = "พร้อม"
                            MU_m1UmlXXDZ.DpWXwbQZl["TextColor3"] = Color3["fromRGB"](255, 255, 255)
                            MU_m1UmlXXDZ.MINoWIOu["BackgroundColor3"] = Color3["fromRGB"](150, 150, 200)
                            MU_m1UmlXXDZ.HnnwWM0["Text"] = string.format("%s | %s studs | Hold: %ss", o1pZuImoDUnl, Nz0MNblwxmQH, string.format("%.2f", DQHHDl))
                        else
                            local bxOM_p1HQwmH = tick() - MU_m1UmlXXDZ.bbmImz
                            local NbuoNu0uu1bx1b = string.format("%.2f", bxOM_p1HQwmH)
                            local NDzn0Hpbl1v = string.format("%.2f", DQHHDl)
                            local wnoo_NNHNIU = MU_m1UmlXXDZ.AimbotMethod5(_wIHI, QHpwpQ, _1OUbnbM["spearFovRadius"])
                            if not wnoo_NNHNIU then
                                MU_m1UmlXXDZ.DpWXwbQZl["Text"] = "กำลังเล็งเป้าหมาย"
                                MU_m1UmlXXDZ.DpWXwbQZl["TextColor3"] = Color3["fromRGB"](255, 150, 150)
                                MU_m1UmlXXDZ.MINoWIOu["BackgroundColor3"] = Color3["fromRGB"](255, 100, 100)
                                MU_m1UmlXXDZ.HnnwWM0["Text"] = "เป้าหมายออกนอกมุมมอง!"
                            elseif bxOM_p1HQwmH >= DQHHDl then
                                if MU_m1UmlXXDZ.uvOm1pbWp ~= nil and MU_m1UmlXXDZ.uvOm1pbWp < 0.35 then
                                    MU_m1UmlXXDZ.DpWXwbQZl["Text"] = "ไม่เสถียร!"
                                    MU_m1UmlXXDZ.DpWXwbQZl["TextColor3"] = Color3["fromRGB"](255, 150, 50)
                                    MU_m1UmlXXDZ.MINoWIOu["BackgroundColor3"] = Color3["fromRGB"](255, 150, 50)
                                    MU_m1UmlXXDZ.HnnwWM0["Text"] = "เป้าหมายกำลังเคลื่อนที่ รอก่อน..."
                                else
                                    MU_m1UmlXXDZ.DpWXwbQZl["Text"] = "ปล่อย!"
                                    MU_m1UmlXXDZ.DpWXwbQZl["TextColor3"] = Color3["fromRGB"](80, 255, 120)
                                    MU_m1UmlXXDZ.MINoWIOu["BackgroundColor3"] = Color3["fromRGB"](50, 255, 100)
                                    MU_m1UmlXXDZ.HnnwWM0["Text"] = string.format("Hold: %ss | Ideal: %ss", NbuoNu0uu1bx1b, NDzn0Hpbl1v)
                                end
                            else
                                MU_m1UmlXXDZ.DpWXwbQZl["Text"] = "กดค้าง..."
                                MU_m1UmlXXDZ.DpWXwbQZl["TextColor3"] = Color3["fromRGB"](255, 220, 100)
                                MU_m1UmlXXDZ.MINoWIOu["BackgroundColor3"] = Color3["fromRGB"](255, 200, 50)
                                MU_m1UmlXXDZ.HnnwWM0["Text"] = string.format("Hold: %ss | Ideal: %ss", NbuoNu0uu1bx1b, NDzn0Hpbl1v)
                            end
                        end
                    end
                end
                if _1OUbnbM["spearEnabled"] and _MuOXqDZHZuq and vOH_XDM and vOH_XDM["Character"] then
                    local lWlbuXl_m1Uz = MU_m1UmlXXDZ.AimbotMethod4(vOH_XDM["Character"])
                    local _NOzuWpXmm = vOH_XDM["Character"]:FindFirstChild("HumanoidRootPart")
                    if typeof(lWlbuXl_m1Uz) == "Vector3" and _NOzuWpXmm then
                        local HopNlU = MU_m1UmlXXDZ.AimbotMethod5(_wIHI, lWlbuXl_m1Uz, _1OUbnbM["spearFovRadius"])
                        if HopNlU then
                            local DNQnMHMHIvHm1 = _wIHI["CFrame"]["Position"]
                            local HZ_xQxW = lWlbuXl_m1Uz - DNQnMHMHIvHm1
                            local qHWwHb_xWlu = HZ_xQxW["Magnitude"]
                            if qHWwHb_xWlu > 0.1 then
                                local D0uZWQq0mw = 142.5
                                if MU_m1UmlXXDZ.oOD0QWnulW and MU_m1UmlXXDZ.bbmImz then
                                    local vZXvoObWZ = tick() - MU_m1UmlXXDZ.bbmImz
                                    if vZXvoObWZ >= 2 then
                                        D0uZWQq0mw = 165
                                    elseif vZXvoObWZ >= 1 then
                                        D0uZWQq0mw = 142.5
                                    else
                                        D0uZWQq0mw = math.max(23, vZXvoObWZ * 150)
                                    end
                                end
                                local IuvInoIO = D0uZWQq0mw
                                D0uZWQq0mw = IuvInoIO * (tonumber(MU_m1UmlXXDZ.bWumxzloIvuDpU) or 1.0)
                                local Blox_0pvwzpNq = wxl1Uo1UbDnnb["Gravity"] * (MU_m1UmlXXDZ.oDXWbwIl0XQM or 1)
                                local Qn0muob_, BupnnzWHQZzbo = nil, 1
                                if _1OUbnbM["spearPrediction"] then
                                    Qn0muob_, BupnnzWHQZzbo = MU_m1UmlXXDZ.CharacterMethod4(MU_m1UmlXXDZ._uqwx, vOH_XDM["Character"], lWlbuXl_m1Uz)
                                else
                                    MU_m1UmlXXDZ._uqwx["char"], MU_m1UmlXXDZ._uqwx["hist"], MU_m1UmlXXDZ._uqwx["sm"] = nil, {}, Vector3["new"](0, 0, 0)
                                    MU_m1UmlXXDZ._uqwx["turn"] = 0
                                    local vXMWDnm = _NOzuWpXmm["AssemblyLinearVelocity"]
                                    Qn0muob_ = Vector3["new"](vXMWDnm["X"], 0, vXMWDnm["Z"])
                                    if Qn0muob_["Magnitude"] > 65 then
                                        Qn0muob_ = Qn0muob_["Unit"] * 65
                                    end
                                end
                                MU_m1UmlXXDZ.IuHN1moN = Qn0muob_
                                MU_m1UmlXXDZ.uvOm1pbWp = math.clamp(BupnnzWHQZzbo or 1, 0, 1)
                                local WU1_w_0 = 1
                                if _1OUbnbM["spearDamping"] then
                                    WU1_w_0 = 0.55 + 0.45 * MU_m1UmlXXDZ.uvOm1pbWp
                                end
                                local MNl_mIx0Wqo_, HbUQH = MU_m1UmlXXDZ.SystemMethod10(DNQnMHMHIvHm1, lWlbuXl_m1Uz, D0uZWQq0mw, Blox_0pvwzpNq)
                                if MNl_mIx0Wqo_ and HbUQH then
                                    local uDnmIQ1l0 = MU_m1UmlXXDZ.CharacterMethod3() * (tonumber(_1OUbnbM["spearPingLead"]) or 1.0)
                                    local velocityLead = math.clamp(tonumber(_1OUbnbM["spearVelocityLead"]) or 1.0, 0.5, 1.5)
                                    local vMInOIWD = MU_m1UmlXXDZ.IuHN1moN * ((HbUQH + uDnmIQ1l0) * WU1_w_0) * velocityLead
                                    local qpvDU_vmUu = math.max(qHWwHb_xWlu * 0.4, 4)
                                    if vMInOIWD["Magnitude"] > qpvDU_vmUu then
                                        vMInOIWD = vMInOIWD["Unit"] * qpvDU_vmUu
                                    end
                                    local MDpXmIIDW = lWlbuXl_m1Uz + vMInOIWD
                                    local HomuU0UpuM, HxONxmXD1 = MU_m1UmlXXDZ.SystemMethod10(DNQnMHMHIvHm1, MDpXmIIDW, D0uZWQq0mw, Blox_0pvwzpNq)
                                    if HomuU0UpuM and HxONxmXD1 and HxONxmXD1 > 0.35 then
                                        local wWwXql = MU_m1UmlXXDZ.IuHN1moN * ((HxONxmXD1 + uDnmIQ1l0) * WU1_w_0)
                                        if wWwXql["Magnitude"] > qpvDU_vmUu then
                                            wWwXql = wWwXql["Unit"] * qpvDU_vmUu
                                        end
                                        local wXWmDp = lWlbuXl_m1Uz + wWwXql
                                        local bUuD0qXo = MU_m1UmlXXDZ.SystemMethod10(DNQnMHMHIvHm1, wXWmDp, D0uZWQq0mw, Blox_0pvwzpNq)
                                        if bUuD0qXo then
                                            HomuU0UpuM = bUuD0qXo
                                        end
                                    end
                                    if HomuU0UpuM then
                                        MU_m1UmlXXDZ.OupXz = HomuU0UpuM
                                        MU_m1UmlXXDZ.IXHN1zUU = {
                                            ["dist"] = qHWwHb_xWlu,
                                            ["speed"] = D0uZWQq0mw,
                                            ["raw"] = IuvInoIO,
                                            ["tof"] = HbUQH,
                                            ["lead"] = vMInOIWD["Magnitude"],
                                            ["ping"] = uDnmIQ1l0,
                                            ["t"] = tick(),
                                            ["grav"] = (MU_m1UmlXXDZ.oDXWbwIl0XQM or 1),
                                            ["stab"] = MU_m1UmlXXDZ.uvOm1pbWp,
                                        }
                                    else
                                        MU_m1UmlXXDZ.OupXz = nil
                                        MU_m1UmlXXDZ.IXHN1zUU = nil
                                    end
                                else
                                    MU_m1UmlXXDZ.OupXz = nil
                                end
                            else
                                MU_m1UmlXXDZ.OupXz = nil
                            end
                        else
                            MU_m1UmlXXDZ.OupXz = nil
                        end
                    else
                        MU_m1UmlXXDZ.OupXz = nil
                    end
                else
                    MU_m1UmlXXDZ.OupXz = nil
                end
            end)
            MU_m1UmlXXDZ.AimbotMethod6()
            MU_m1UmlXXDZ.SpearMethod()
            MU_m1UmlXXDZ.SpearMethod2()
        end
        do
            MU_m1UmlXXDZ.bvo0NwXHvov__ = nil
            MU_m1UmlXXDZ.Hn1QmMXDupp = nil
            function MU_m1UmlXXDZ.SetupWindowRemotes()
                local InZzwIvvz = oZzw1oZIXX_["FindFirstChild"](oZzw1oZIXX_, "Remotes") and oZzw1oZIXX_["Remotes"]:FindFirstChild("Window")
                if not InZzwIvvz then
                    return
                end
                MU_m1UmlXXDZ.bvo0NwXHvov__ = InZzwIvvz["FindFirstChild"](InZzwIvvz, "fastvault")
                MU_m1UmlXXDZ.Hn1QmMXDupp = InZzwIvvz["FindFirstChild"](InZzwIvvz, "VaultCompleteEventpart1")
            end
            pcall(MU_m1UmlXXDZ.SetupWindowRemotes)
            MU_m1UmlXXDZ.DmUHqnHODM = {}
            function MU_m1UmlXXDZ.IsVaultPart()
                local WMl_1M1znOoN = false
                local function VaultFunction(IwnDIZIQWHwbWx)
                    return IwnDIZIQWHwbWx["IsA"](IwnDIZIQWHwbWx, "BasePart") and (IwnDIZIQWHwbWx["Name"] == "VaultTrigger" or IwnDIZIQWHwbWx["Name"] == "VaultPoint")
                end
                local function VaultFunction2(bUQw0b)
                    if not VaultFunction(bUQw0b) then
                        return
                    end
                    for vHppvMub, o0xUWMnxqM_Uup in ipairs(MU_m1UmlXXDZ.DmUHqnHODM) do
                        if o0xUWMnxqM_Uup == bUQw0b then
                            return
                        end
                    end
                    table.insert(MU_m1UmlXXDZ.DmUHqnHODM, bUQw0b)
                end
                local function VaultFunction3(l0QDqu1O0)
                    for MqpMq, vNqI0I_oWulO in ipairs(MU_m1UmlXXDZ.DmUHqnHODM) do
                        if vNqI0I_oWulO == l0QDqu1O0 then
                            table.remove(MU_m1UmlXXDZ.DmUHqnHODM, MqpMq)
                            break
                        end
                    end
                end
                if WMl_1M1znOoN then
                    return
                end
                WMl_1M1znOoN = true
                for lzmI1xpQUIxbp, ozuXNq0MIMx in ipairs(pmDxuq1Qvl["GetTagged"](pmDxuq1Qvl, "VaultPoint")) do
                    VaultFunction2(ozuXNq0MIMx)
                end
                wxl1Uo1UbDnnb["DescendantAdded"]:Connect(VaultFunction2)
                wxl1Uo1UbDnnb["DescendantRemoving"]:Connect(VaultFunction3)
            end
            MU_m1UmlXXDZ.IsVaultPart()
            function MU_m1UmlXXDZ.FindNearestVaultPoint(lNbbQUOXxwUX, BZmOvxpQp)
                local pDIbWpznMqzN, upqIIpzxUN = nil, BZmOvxpQp
                for DHIQ1_mv, MHwHnQm0Ob1 in ipairs(MU_m1UmlXXDZ.DmUHqnHODM) do
                    if MHwHnQm0Ob1 and MHwHnQm0Ob1["Parent"] then
                        local wzXxMbDlNZxNx = (MHwHnQm0Ob1["Position"] - lNbbQUOXxwUX)["Magnitude"]
                        if wzXxMbDlNZxNx < upqIIpzxUN then
                            upqIIpzxUN = wzXxMbDlNZxNx
                            pDIbWpznMqzN = MHwHnQm0Ob1
                        end
                    end
                end
                return pDIbWpznMqzN
            end
            CharacterFunction6("FastVault", 0.05, function()
                if not _1OUbnbM["alwaysFastVault"] then
                    return
                end
                if CharacterFunction7(Q_qlzpNO1) == "killer" then
                    return
                end
                local vxIxm__pqoxZ = Q_qlzpNO1["Character"]
                local poxOD = vxIxm__pqoxZ and vxIxm__pqoxZ["FindFirstChild"](vxIxm__pqoxZ, "HumanoidRootPart")
                if not vxIxm__pqoxZ or not poxOD then
                    return
                end
                if MU_m1UmlXXDZ.FindNearestVaultPoint(poxOD["Position"], 6) then
                    pcall(function()
                        vxIxm__pqoxZ:SetAttribute("Sprinting", true)
                        vxIxm__pqoxZ:SetAttribute("IsRunning", true)
                    end)
                end
            end)
            M_QbbvZ0IU["InputBegan"]:Connect(function(uHMzWwQOz0x1Q, IbupUqnMvDZu1N)
                if not _1OUbnbM["alwaysFastVault"] then
                    return
                end
                if CharacterFunction7(Q_qlzpNO1) == "killer" then
                    return
                end
                if IbupUqnMvDZu1N then
                    return
                end
                local DHlZqblQ = uHMzWwQOz0x1Q["KeyCode"]
                if DHlZqblQ ~= Enum["KeyCode"]["Space"] and DHlZqblQ ~= Enum["KeyCode"]["E"] then
                    return
                end
                local NwWqw = Q_qlzpNO1["Character"]
                local _qHMm = NwWqw and NwWqw["FindFirstChild"](NwWqw, "HumanoidRootPart")
                if not NwWqw or not _qHMm then
                    return
                end
                local DMDXZMqXlbIqZ = MU_m1UmlXXDZ.FindNearestVaultPoint(_qHMm["Position"], 9)
                if not DMDXZMqXlbIqZ then
                    return
                end
                local WZIQO1MbW0Z = DMDXZMqXlbIqZ["Position"] - _qHMm["Position"]
                WZIQO1MbW0Z = Vector3["new"](WZIQO1MbW0Z["X"], 0, WZIQO1MbW0Z["Z"])
                if WZIQO1MbW0Z["Magnitude"] > 0.05 then
                    WZIQO1MbW0Z = WZIQO1MbW0Z["Unit"]
                else
                    WZIQO1MbW0Z = Vector3["new"](_qHMm["CFrame"]["LookVector"]["X"], 0, _qHMm["CFrame"]["LookVector"]["Z"])["Unit"]
                end
                local QqqQUX = _qHMm["AssemblyLinearVelocity"]
                local NXvxXuboq_MqM = Vector3["new"](QqqQUX["X"], 0, QqqQUX["Z"])["Magnitude"]
                if NXvxXuboq_MqM < 13 then
                    pcall(function()
                        NwWqw:SetAttribute("Sprinting", true)
                        NwWqw:SetAttribute("IsRunning", true)
                    end)
                    _qHMm["CFrame"] = CFrame["new"](_qHMm["Position"], _qHMm["Position"] + WZIQO1MbW0Z)
                    _qHMm["AssemblyLinearVelocity"] = WZIQO1MbW0Z * 22
                end
            end)
            local function ZeroGetVaultActions()
                local ok, actions = pcall(function()
                    local modules = oZzw1oZIXX_:FindFirstChild("Modules", true)
                    local module = modules and modules:FindFirstChild("SurvivorActions", true)
                    return module and require(module)
                end)
                return ok and actions or nil
            end
            local function ZeroInstallVaultHook()
                local actions = ZeroGetVaultActions()
                if not actions or type(actions["startVault"]) ~= "function" then
                    return false
                end
                local current = actions["startVault"]
                if MU_m1UmlXXDZ._VaultHookedTable == actions and MU_m1UmlXXDZ._VaultHookedFunction == current then
                    return true
                end
                local original = current
                local wrapper = newcclosure(function(qpmbQUoO, WQzZUmp1HZ)
                    if not (_1OUbnbM["vaultSpeedEnabled"] or _1OUbnbM["alwaysFastVault"]) then
                        return original(qpmbQUoO, WQzZUmp1HZ)
                    end
                    pcall(function()
                        local character = qpmbQUoO and qpmbQUoO["character"]
                        local root = character and character:FindFirstChild("HumanoidRootPart")
                        if character and root then
                            character:SetAttribute("Sprinting", true)
                            character:SetAttribute("IsRunning", true)
                            local pos = WQzZUmp1HZ and (WQzZUmp1HZ["Position"] or (WQzZUmp1HZ:IsA("Model") and WQzZUmp1HZ.PrimaryPart and WQzZUmp1HZ.PrimaryPart.Position))
                            if pos then
                                local dir = Vector3.new(pos.X - root.Position.X, 0, pos.Z - root.Position.Z)
                                if dir.Magnitude > 0.05 then
                                    root.AssemblyLinearVelocity = dir.Unit * (22 * math.clamp(tonumber(_1OUbnbM["vaultSpeedValue"]) or 1.5, 1, 3))
                                end
                            end
                        end
                    end)
                    local result = table.pack(original(qpmbQUoO, WQzZUmp1HZ))
                    if _1OUbnbM["fakePerksEnabled"] and _1OUbnbM["flowstateBoostEnabled"] then
                        local character = qpmbQUoO and qpmbQUoO["character"]
                        task.delay(0.20, function()
                            if character and character == Q_qlzpNO1["Character"] and MU_m1UmlXXDZ.WpxuObUp then
                                local buffs = MU_m1UmlXXDZ.WpxuObUp["ActiveBuffs"]
                                if type(buffs) == "table" then
                                    buffs["PostVaultBoost"] = { ["amt"] = 6, ["endTime"] = tick() + 6 }
                                    pcall(function()
                                        MU_m1UmlXXDZ.UpdateMovementSpeed()
                                        MU_m1UmlXXDZ.StartFakePerksHeartbeat()
                                    end)
                                end
                            end
                        end)
                    end
                    if MU_m1UmlXXDZ.bvo0NwXHvov__ then
                        pcall(function()
                            MU_m1UmlXXDZ.bvo0NwXHvov__:FireServer(Q_qlzpNO1)
                        end)
                    end
                    if MU_m1UmlXXDZ.Hn1QmMXDupp then
                        pcall(function()
                            MU_m1UmlXXDZ.Hn1QmMXDupp:FireServer()
                        end)
                    end
                    return table.unpack(result, 1, result.n)
                end)
                actions["startVault"] = wrapper
                MU_m1UmlXXDZ._VaultHookedTable = actions
                MU_m1UmlXXDZ._VaultHookedFunction = wrapper
                return true
            end
            task.spawn(function()
                for _ = 1, 40 do
                    if ZeroInstallVaultHook() then
                        break
                    end
                    task.wait(0.25)
                end
                while task.wait(0.75) do
                    pcall(ZeroInstallVaultHook)
                end
            end)
            -- Keep the enabled vault state alive across round resets/character recreation.
            task.spawn(function()
                while task.wait(0.5) do
                    pcall(function()
                        local character = Q_qlzpNO1["Character"]
                        if not character then
                            return
                        end
                        if _1OUbnbM["flowstateEnabled"] then
                            character:SetAttribute("Flowstate", true)
                        end
                        character:SetAttribute("vaultspeed", _1OUbnbM["vaultSpeedEnabled"] and (tonumber(_1OUbnbM["vaultSpeedValue"]) or 1.5) or 1.0)
                    end)
                end
            end)
            Q_qlzpNO1["CharacterAdded"]:Connect(function(character)
                MU_m1UmlXXDZ._VaultHookedTable = nil
                MU_m1UmlXXDZ._VaultHookedFunction = nil
                task.spawn(function()
                    for _ = 1, 30 do
                        if ZeroInstallVaultHook() then
                            break
                        end
                        task.wait(0.25)
                    end
                end)
                task.delay(0.5, function()
                    if _1OUbnbM["flowstateEnabled"] then
                        pcall(function()
                            character:SetAttribute("Flowstate", true)
                        end)
                    end
                    pcall(function()
                        character:SetAttribute("vaultspeed", _1OUbnbM["vaultSpeedEnabled"] and (tonumber(_1OUbnbM["vaultSpeedValue"]) or 1.5) or 1.0)
                    end)
                end)
            end)
            pcall(function()
                local MmZMu0oQDUI = oZzw1oZIXX_["FindFirstChild"](oZzw1oZIXX_, "Modules", true)
                local IXxHDqpMmb = MmZMu0oQDUI and MmZMu0oQDUI["FindFirstChild"](MmZMu0oQDUI, "SurvivorAnimationsController", true)
                local wQuZQ0DzmNDM = IXxHDqpMmb and require(IXxHDqpMmb)
                if wQuZQ0DzmNDM and wQuZQ0DzmNDM["_isFacingStraightEnough"] then
                    local MHuIlUZ = wQuZQ0DzmNDM["_isFacingStraightEnough"]
                    wQuZQ0DzmNDM["_isFacingStraightEnough"] = newcclosure(function(...)
                        if not _1OUbnbM["alwaysFastVault"] then
                            return MHuIlUZ(...)
                        end
                        return true
                    end)
                end
            end)
            MU_m1UmlXXDZ.QqvvWpmzQpMDX = {}
            function MU_m1UmlXXDZ.RestoreNoClipParts()
                for DOWnnD, onvwDloD in pairs(MU_m1UmlXXDZ.QqvvWpmzQpMDX) do
                    if DOWnnD and DOWnnD["Parent"] then
                        pcall(function()
                            DOWnnD["CanCollide"] = onvwDloD
                        end)
                    end
                end
                MU_m1UmlXXDZ.QqvvWpmzQpMDX = {}
            end
            WwNbnqHIQwppl["Stepped"]:Connect(function()
                if _1OUbnbM["noclipEnabled"] then
                    local lOzqIN = Q_qlzpNO1["Character"]
                    if lOzqIN then
                        for DbIDZp, qubwOwlmQQuMmQ in ipairs(lOzqIN["GetDescendants"](lOzqIN)) do
                            if qubwOwlmQQuMmQ["IsA"](qubwOwlmQQuMmQ, "BasePart") then
                                if MU_m1UmlXXDZ.QqvvWpmzQpMDX[qubwOwlmQQuMmQ] == nil then
                                    MU_m1UmlXXDZ.QqvvWpmzQpMDX[qubwOwlmQQuMmQ] = qubwOwlmQQuMmQ["CanCollide"]
                                end
                                qubwOwlmQQuMmQ["CanCollide"] = false
                            end
                        end
                    end
                else
                    if next(MU_m1UmlXXDZ.QqvvWpmzQpMDX) ~= nil then
                        MU_m1UmlXXDZ.RestoreNoClipParts()
                    end
                end
            end)
            Q_qlzpNO1["CharacterRemoving"]:Connect(function(l1vOQlqWp)
                if l1vOQlqWp == Q_qlzpNO1["Character"] then
                    MU_m1UmlXXDZ.QqvvWpmzQpMDX = {}
                end
            end)
            function MU_m1UmlXXDZ.HookFallDamage()
                local WumpDXummq
                WumpDXummq = hookmetamethod(game, "__namecall", function(ppmOvzl, ...)
                    local u_MOoXvnDZO = getnamecallmethod()
                    if u_MOoXvnDZO == "FireServer" and _1OUbnbM["antiFallDamage"] then
                        local H1UXNvzUuDpw, vDUHp1m = pcall(function()
                            return ppmOvzl["Name"]:lower()
                        end)
                        if H1UXNvzUuDpw and (vDUHp1m["find"](vDUHp1m, "falldamage") or vDUHp1m["find"](vDUHp1m, "fall") or vDUHp1m["find"](vDUHp1m, "ragdollfall")) then
                            return
                        end
                    end
                    return WumpDXummq(ppmOvzl, ...)
                end)
            end
            MU_m1UmlXXDZ.HookFallDamage()
            MU_m1UmlXXDZ.u1QnvMvHvMn = game["GetService"](game, "Lighting")
            getgenv()["VD_CurrentSky"] = nil
            getgenv()["VD_WeatherCC"] = nil
            getgenv()["VD_WeatherAtmosphere"] = nil
            MU_m1UmlXXDZ._wMoHuNI = {
                ["Default"] = {},
                ["Christmas (Snow)"] = {
                    ["Lighting"] = {
                        ["FogColor"] = Color3["fromRGB"](150, 180, 220),
                        ["FogEnd"] = 200,
                        ["ClockTime"] = 8,
                        ["OutdoorAmbient"] = Color3["fromRGB"](100, 120, 150),
                    },
                    ["Atmosphere"] = {
                        ["Density"] = 0.5,
                        ["Color"] = Color3["fromRGB"](180, 200, 220),
                        ["Decay"] = Color3["fromRGB"](150, 180, 220),
                        ["Haze"] = 5,
                        ["Glare"] = 0,
                    },
                },
                ["Heavy Rain (Storm)"] = {
                    ["Lighting"] = {
                        ["FogColor"] = Color3["fromRGB"](50, 50, 60),
                        ["FogEnd"] = 150,
                        ["OutdoorAmbient"] = Color3["fromRGB"](40, 40, 50),
                        ["Brightness"] = 0.2,
                        ["ClockTime"] = 12,
                    },
                    ["CC"] = { ["TintColor"] = Color3["fromRGB"](150, 150, 180), ["Contrast"] = 0.2, ["Saturation"] = -0.5 },
                },
                ["Cherry Blossom (Sakura)"] = {
                    ["Lighting"] = {
                        ["FogColor"] = Color3["fromRGB"](255, 200, 220),
                        ["FogEnd"] = 600,
                        ["OutdoorAmbient"] = Color3["fromRGB"](255, 180, 200),
                        ["ClockTime"] = 9,
                    },
                    ["CC"] = { ["TintColor"] = Color3["fromRGB"](255, 230, 240), ["Saturation"] = 0.3 },
                },
                ["Blood Moon (Spooky)"] = {
                    ["Lighting"] = {
                        ["FogColor"] = Color3["fromRGB"](150, 10, 10),
                        ["FogEnd"] = 500,
                        ["OutdoorAmbient"] = Color3["fromRGB"](80, 0, 0),
                        ["ClockTime"] = 0,
                        ["Brightness"] = 0.3,
                    },
                    ["CC"] = { ["TintColor"] = Color3["fromRGB"](255, 50, 50), ["Contrast"] = 0.4, ["Saturation"] = 0.5 },
                    ["Atmosphere"] = {
                        ["Density"] = 0.35,
                        ["Color"] = Color3["fromRGB"](255, 0, 0),
                        ["Decay"] = Color3["fromRGB"](100, 0, 0),
                        ["Haze"] = 5,
                        ["Glare"] = 0,
                    },
                },
                ["Midnight (Pitch Black)"] = {
                    ["Lighting"] = {
                        ["FogColor"] = Color3["fromRGB"](0, 0, 0),
                        ["FogEnd"] = 100,
                        ["OutdoorAmbient"] = Color3["fromRGB"](0, 0, 0),
                        ["Brightness"] = 0,
                        ["ClockTime"] = 0,
                    },
                    ["CC"] = { ["TintColor"] = Color3["fromRGB"](50, 50, 60), ["Contrast"] = 0.5, ["Saturation"] = -0.8 },
                },
            }
            function MU_m1UmlXXDZ.ApplyWeather(QnqMD)
                local WUOvO = MU_m1UmlXXDZ._wMoHuNI[QnqMD] or MU_m1UmlXXDZ._wMoHuNI["Default"]
                if getgenv()["VD_CurrentSky"] and getgenv()["VD_CurrentSky"]["Parent"] then
                    getgenv()["VD_CurrentSky"]:Destroy()
                end
                getgenv()["VD_CurrentSky"] = nil
                if getgenv()["VD_WeatherCC"] and getgenv()["VD_WeatherCC"]["Parent"] then
                    getgenv()["VD_WeatherCC"]:Destroy()
                end
                getgenv()["VD_WeatherCC"] = nil
                if getgenv()["VD_WeatherAtmosphere"] and getgenv()["VD_WeatherAtmosphere"]["Parent"] then
                    getgenv()["VD_WeatherAtmosphere"]:Destroy()
                end
                getgenv()["VD_WeatherAtmosphere"] = nil
                if WUOvO["Atmosphere"] then
                    local Nqpuzb = Instance["new"]("Atmosphere")
                    Nqpuzb["Name"] = "VD_WeatherAtmosphere"
                    for DHZnmOIq, vIqqbumXmbmp in pairs(WUOvO["Atmosphere"]) do
                        pcall(function()
                            Nqpuzb[DHZnmOIq] = vIqqbumXmbmp
                        end)
                    end
                    Nqpuzb["Parent"] = MU_m1UmlXXDZ.u1QnvMvHvMn
                    getgenv()["VD_WeatherAtmosphere"] = Nqpuzb
                end
                if WUOvO["CC"] then
                    local NO_Xw_ZD0pbMM = Instance["new"]("ColorCorrectionEffect")
                    NO_Xw_ZD0pbMM["Name"] = "VD_WeatherCC"
                    for _lqXDzlUn0__x, QW_H1Xmu in pairs(WUOvO["CC"]) do
                        pcall(function()
                            NO_Xw_ZD0pbMM[_lqXDzlUn0__x] = QW_H1Xmu
                        end)
                    end
                    NO_Xw_ZD0pbMM["Parent"] = MU_m1UmlXXDZ.u1QnvMvHvMn
                    getgenv()["VD_WeatherCC"] = NO_Xw_ZD0pbMM
                end
                if WUOvO["Lighting"] then
                    for q_Q1b1p, WnpDz in pairs(WUOvO["Lighting"]) do
                        pcall(function()
                            MU_m1UmlXXDZ.u1QnvMvHvMn[q_Q1b1p] = WnpDz
                        end)
                    end
                end
            end
            task["spawn"](function()
                while not _1OUbnbM["Destroyed"] do
                    if _1OUbnbM["Fullbright"] then
                        local qbpvDlN1Q0uXW = _1OUbnbM["VIS_WeatherTheme"] and MU_m1UmlXXDZ._wMoHuNI[_1OUbnbM["VIS_WeatherTheme"]]
                        local qmuINZ1zX1n = _1OUbnbM["VIS_WeatherTheme"] and _1OUbnbM["VIS_WeatherTheme"] ~= "Default" and qbpvDlN1Q0uXW and qbpvDlN1Q0uXW["Lighting"]
                        if qmuINZ1zX1n then
                            for px11N, IvDIxHZ in pairs(qbpvDlN1Q0uXW["Lighting"]) do
                                pcall(function()
                                    MU_m1UmlXXDZ.u1QnvMvHvMn[px11N] = IvDIxHZ
                                end)
                            end
                            MU_m1UmlXXDZ.u1QnvMvHvMn["Brightness"] = math.max(MU_m1UmlXXDZ.u1QnvMvHvMn["Brightness"], 2)
                            MU_m1UmlXXDZ.u1QnvMvHvMn["GlobalShadows"] = false
                            if _1OUbnbM["NO_Fog"] then
                                MU_m1UmlXXDZ.u1QnvMvHvMn["FogStart"] = 0
                                MU_m1UmlXXDZ.u1QnvMvHvMn["FogEnd"] = 100000
                            end
                        else
                            MU_m1UmlXXDZ.u1QnvMvHvMn["Brightness"] = 2
                            MU_m1UmlXXDZ.u1QnvMvHvMn["ClockTime"] = 14
                            MU_m1UmlXXDZ.u1QnvMvHvMn["GlobalShadows"] = false
                            MU_m1UmlXXDZ.u1QnvMvHvMn["OutdoorAmbient"] = Color3["fromRGB"](128, 128, 128)
                            MU_m1UmlXXDZ.u1QnvMvHvMn["FogStart"] = 0
                            MU_m1UmlXXDZ.u1QnvMvHvMn["FogEnd"] = 100000
                        end
                        for OnxW_IO, qqo0z0zlD1 in pairs(MU_m1UmlXXDZ.u1QnvMvHvMn["GetChildren"](MU_m1UmlXXDZ.u1QnvMvHvMn)) do
                            if qqo0z0zlD1["IsA"](qqo0z0zlD1, "Atmosphere") and qqo0z0zlD1["Name"] ~= "VD_WeatherAtmosphere" then
                                qqo0z0zlD1["Density"] = 0
                                qqo0z0zlD1["Offset"] = 0
                                qqo0z0zlD1["Glare"] = 0
                                qqo0z0zlD1["Haze"] = 0
                            end
                            if qqo0z0zlD1["IsA"](qqo0z0zlD1, "BlurEffect") then
                                qqo0z0zlD1["Size"] = 0
                            end
                            if qqo0z0zlD1["IsA"](qqo0z0zlD1, "ColorCorrectionEffect") and qqo0z0zlD1["Name"] ~= "VD_WeatherCC" then
                                qqo0z0zlD1["Enabled"] = false
                            end
                            if qqo0z0zlD1["IsA"](qqo0z0zlD1, "SunRaysEffect") then
                                qqo0z0zlD1["Enabled"] = false
                            end
                        end
                    end
                    task["wait"](0.5)
                end
            end)
            MU_m1UmlXXDZ.ulInpml_vDvp = { ["LaserBeam"] = nil }
            function MU_m1UmlXXDZ.CreateAimLaser(QzMMol1U, QZzqlvzODxw)
                if not MU_m1UmlXXDZ.ulInpml_vDvp["LaserBeam"] then
                    local buDuWlqvW01ubv = Instance["new"]("Part")
                    buDuWlqvW01ubv["Name"] = "AimbotLaserBeam"
                    buDuWlqvW01ubv["Anchored"] = true
                    buDuWlqvW01ubv["CanCollide"] = false
                    buDuWlqvW01ubv["CastShadow"] = false
                    buDuWlqvW01ubv["Material"] = Enum["Material"]["Neon"]
                    buDuWlqvW01ubv["Color"] = Color3["fromRGB"](255, 50, 50)
                    buDuWlqvW01ubv["Parent"] = workspace
                    MU_m1UmlXXDZ.ulInpml_vDvp["LaserBeam"] = buDuWlqvW01ubv
                end
                local vWlN1p0Z = MU_m1UmlXXDZ.ulInpml_vDvp["LaserBeam"]
                if vWlN1p0Z and QzMMol1U and QZzqlvzODxw then
                    local quOpOvOU_wDQMO = (QzMMol1U - QZzqlvzODxw)["Magnitude"]
                    vWlN1p0Z["Size"] = Vector3["new"](0.05, 0.05, quOpOvOU_wDQMO)
                    vWlN1p0Z["CFrame"] = CFrame["new"](QzMMol1U, QZzqlvzODxw) * CFrame["new"](0, 0, -quOpOvOU_wDQMO / 2)
                    vWlN1p0Z["Transparency"] = 0.3
                end
            end
            function MU_m1UmlXXDZ.RemoveAimLaser()
                if MU_m1UmlXXDZ.ulInpml_vDvp["LaserBeam"] then
                    MU_m1UmlXXDZ.ulInpml_vDvp["LaserBeam"]:Destroy()
                    MU_m1UmlXXDZ.ulInpml_vDvp["LaserBeam"] = nil
                end
            end
            function MU_m1UmlXXDZ.GetAimOrigin()
                local pxlpUq0_NpoWNo = Q_qlzpNO1["Character"]
                if not pxlpUq0_NpoWNo then
                    return nil
                end
                local uvlHo, p_v0O0HqzM = pcall(function()
                    return pxlpUq0_NpoWNo["FindFirstChildOfClass"](pxlpUq0_NpoWNo, "Tool"):FindFirstChild("Handle")
                end)
                if uvlHo and p_v0O0HqzM and p_v0O0HqzM["IsA"](p_v0O0HqzM, "BasePart") then
                    return p_v0O0HqzM["Position"]
                end
                local luXuUunqNwQOzD = pxlpUq0_NpoWNo["FindFirstChild"](pxlpUq0_NpoWNo, "HumanoidRootPart")
                if luXuUunqNwQOzD then
                    return luXuUunqNwQOzD["Position"] + Vector3["new"](0, 1, 0)
                end
                return oZubzuHwUUDMv["CFrame"]["Position"]
            end
            MU_m1UmlXXDZ.Q0bplOXNXNWHv = {}
            for OwnpI, BxzDW1_X in ipairs(wxl1Uo1UbDnnb["GetDescendants"](wxl1Uo1UbDnnb)) do
                MU_m1UmlXXDZ.BH1nHIZzQzpwoQ = string["lower"](BxzDW1_X["Name"])
                if string.find(MU_m1UmlXXDZ.BH1nHIZzQzpwoQ, "scp") then
                    MU_m1UmlXXDZ.Q0bplOXNXNWHv[BxzDW1_X] = true
                end
            end
            wxl1Uo1UbDnnb["DescendantAdded"]:Connect(function(lZq_NNw_)
                local vqmWlWNb1 = string["lower"](lZq_NNw_["Name"])
                if string.find(vqmWlWNb1, "scp") then
                    MU_m1UmlXXDZ.Q0bplOXNXNWHv[lZq_NNw_] = true
                end
            end)
            wxl1Uo1UbDnnb["DescendantRemoving"]:Connect(function(O1IvxWIWlN)
                MU_m1UmlXXDZ.Q0bplOXNXNWHv[O1IvxWIWlN] = nil
            end)
            MU_m1UmlXXDZ._MxozpXMIWOWIX = Drawing["new"]("Circle")
            MU_m1UmlXXDZ._MxozpXMIWOWIX["Visible"] = false
            MU_m1UmlXXDZ._MxozpXMIWOWIX["ZIndex"] = 999
            MU_m1UmlXXDZ.vxxowvoQllo = RaycastParams["new"]()
            MU_m1UmlXXDZ.vxxowvoQllo["FilterType"] = Enum["RaycastFilterType"]["Blacklist"]
            function MU_m1UmlXXDZ.CastAimRay(QbZX_1pUmnXZl)
                local BOInxlWb = wxl1Uo1UbDnnb["CurrentCamera"]
                MU_m1UmlXXDZ.vxxowvoQllo["FilterDescendantsInstances"] = { Q_qlzpNO1["Character"] }
                local opUxXzpZxW = BOInxlWb["CFrame"]["Position"]
                local WQmUXvqqOX = (QbZX_1pUmnXZl["Position"] - opUxXzpZxW)
                local wbQ_ZmHuImuH = wxl1Uo1UbDnnb["Raycast"](wxl1Uo1UbDnnb, opUxXzpZxW, WQmUXvqqOX, MU_m1UmlXXDZ.vxxowvoQllo)
                if not wbQ_ZmHuImuH then
                    return true
                end
                return wbQ_ZmHuImuH["Instance"]:IsDescendantOf(QbZX_1pUmnXZl["Parent"])
            end
            function MU_m1UmlXXDZ.FindAimTarget()
                local _o_Nz = wxl1Uo1UbDnnb["CurrentCamera"]
                local QHnpZu = Vector2["new"](_o_Nz["ViewportSize"]["X"] / 2, _o_Nz["ViewportSize"]["Y"] / 2)
                local uUovuvN0b = nil
                local NvQNZqmXMNq = _1OUbnbM["aimbotFOV"]
                for D0mHwo, QWNMow in pairs(WIDWH["GetPlayers"](WIDWH)) do
                    if QWNMow ~= Q_qlzpNO1 and QWNMow["Character"] and QWNMow["Team"] then
                        local Q0vbN = false
                        if _1OUbnbM["aimbotTargetMode"] == "Killer" and QWNMow["Team"]["Name"] == "Killer" then
                            Q0vbN = true
                        elseif _1OUbnbM["aimbotTargetMode"] == "Survivor" and QWNMow["Team"]["Name"] == "Survivors" then
                            Q0vbN = true
                        end
                        if Q0vbN then
                            local HOoxOp = QWNMow["Character"]:FindFirstChild(_1OUbnbM["aimbotAimPart"])
                            local w0xoH0uqHIm_M1 = QWNMow["Character"]:FindFirstChildOfClass("Humanoid")
                            if HOoxOp and w0xoH0uqHIm_M1 and w0xoH0uqHIm_M1["Health"] > 0 then
                                local QoIWo, _xzQblmxDQ10wQ = _o_Nz["WorldToViewportPoint"](_o_Nz, HOoxOp["Position"])
                                if _xzQblmxDQ10wQ then
                                    local llpONIWml1lM = (Vector2["new"](QoIWo["X"], QoIWo["Y"]) - QHnpZu)["Magnitude"]
                                    if llpONIWml1lM < NvQNZqmXMNq then
                                        if not _1OUbnbM["aimbotThroughWall"] then
                                            if not MU_m1UmlXXDZ.CastAimRay(HOoxOp) then
                                                continue
                                            end
                                        end
                                        NvQNZqmXMNq = llpONIWml1lM
                                        uUovuvN0b = HOoxOp
                                    end
                                end
                            end
                        end
                    end
                end
                if _1OUbnbM["aimbotTargetMode"] == "SCP" then
                    for pbUl_pH_QoD in pairs(MU_m1UmlXXDZ.Q0bplOXNXNWHv) do
                        if pbUl_pH_QoD and pbUl_pH_QoD["Parent"] then
                            local INI0HMZub1w
                            if pbUl_pH_QoD["IsA"](pbUl_pH_QoD, "Model") then
                                INI0HMZub1w = pbUl_pH_QoD["PrimaryPart"] or pbUl_pH_QoD["FindFirstChildWhichIsA"](pbUl_pH_QoD, "BasePart")
                            elseif pbUl_pH_QoD["IsA"](pbUl_pH_QoD, "BasePart") then
                                INI0HMZub1w = pbUl_pH_QoD
                            end
                            if INI0HMZub1w then
                                local qmWZWQW10b, IoXDDxquObo = _o_Nz["WorldToViewportPoint"](_o_Nz, INI0HMZub1w["Position"])
                                if IoXDDxquObo then
                                    local wM_uz1HIv = (Vector2["new"](qmWZWQW10b["X"], qmWZWQW10b["Y"]) - QHnpZu)["Magnitude"]
                                    if wM_uz1HIv < NvQNZqmXMNq then
                                        if not _1OUbnbM["aimbotThroughWall"] then
                                            if not MU_m1UmlXXDZ.CastAimRay(INI0HMZub1w) then
                                                continue
                                            end
                                        end
                                        NvQNZqmXMNq = wM_uz1HIv
                                        uUovuvN0b = INI0HMZub1w
                                    end
                                end
                            end
                        end
                    end
                end
                return uUovuvN0b
            end
            MU_m1UmlXXDZ.bIMHzDvqolp = false
            M_QbbvZ0IU["InputBegan"]:Connect(function(Q1QnzZQb1zbv, qQmwlW1wIpqDIo)
                if qQmwlW1wIpqDIo then
                    return
                end
                if Q1QnzZQb1zbv["UserInputType"] == Enum["UserInputType"]["MouseButton2"] then
                    MU_m1UmlXXDZ.bIMHzDvqolp = true
                end
            end)
            M_QbbvZ0IU["InputEnded"]:Connect(function(QZlpZz1W1WZ)
                if QZlpZz1W1WZ["UserInputType"] == Enum["UserInputType"]["MouseButton2"] then
                    MU_m1UmlXXDZ.bIMHzDvqolp = false
                end
            end)
            WwNbnqHIQwppl["RenderStepped"]:Connect(function()
                if _1OUbnbM["aimbotFovCircle"] then
                else
                    MU_m1UmlXXDZ._MxozpXMIWOWIX["Visible"] = false
                end
                if not _1OUbnbM["aimbotEnabled"] or not MU_m1UmlXXDZ.bIMHzDvqolp then
                    MU_m1UmlXXDZ.RemoveAimLaser()
                    return
                end
                local MlwoxuO = wxl1Uo1UbDnnb["CurrentCamera"]
                local oWvXXxIvl = MU_m1UmlXXDZ.FindAimTarget()
                if not oWvXXxIvl then
                    MU_m1UmlXXDZ.RemoveAimLaser()
                    return
                end
                local _zHwp10OuN = oWvXXxIvl["Position"]
                if _1OUbnbM["aimbotPredict"] then
                    _zHwp10OuN = _zHwp10OuN + (oWvXXxIvl["AssemblyLinearVelocity"] * _1OUbnbM["aimbotPredictStrength"])
                end
                local bnDHIMuD = _zHwp10OuN
                local vlUnlp_wD, uHuI1m111 = MlwoxuO["WorldToViewportPoint"](MlwoxuO, _zHwp10OuN)
                if uHuI1m111 then
                    local Qqm_0b1MH0Ovx = Vector2["new"](vlUnlp_wD["X"] + (_1OUbnbM["aimbotOffsetX"] or 0), vlUnlp_wD["Y"] + (_1OUbnbM["aimbotOffsetY"] or 0))
                    local wuqIQMmmWz = MlwoxuO["ViewportPointToRay"](MlwoxuO, Qqm_0b1MH0Ovx["X"], Qqm_0b1MH0Ovx["Y"])
                    local oDN0DWp1loIM = (_zHwp10OuN - MlwoxuO["CFrame"]["Position"])["Magnitude"]
                    bnDHIMuD = wuqIQMmmWz["Origin"] + (wuqIQMmmWz["Direction"] * oDN0DWp1loIM)
                end
                if _1OUbnbM["aimbotLaser"] then
                    local pnNbnqw = MU_m1UmlXXDZ.GetAimOrigin()
                    if pnNbnqw then
                        MU_m1UmlXXDZ.CreateAimLaser(pnNbnqw, _zHwp10OuN)
                    end
                else
                    MU_m1UmlXXDZ.RemoveAimLaser()
                end
                local _q_WbzxvUM = CFrame["new"](MlwoxuO["CFrame"]["Position"], _zHwp10OuN)
                MlwoxuO["CFrame"] = MlwoxuO["CFrame"]:Lerp(_q_WbzxvUM, _1OUbnbM["aimbotStrength"])
            end)
            function MU_m1UmlXXDZ.FindMobileControl()
                local OxZQwDlI_M = Q_qlzpNO1["FindFirstChild"](Q_qlzpNO1, "PlayerGui")
                for buuo1Z1HvuZXm in string["gmatch"]("Survivor-mob.Controls.Gui-mob", "[^%.]+") do
                    OxZQwDlI_M = OxZQwDlI_M and OxZQwDlI_M["FindFirstChild"](OxZQwDlI_M, buuo1Z1HvuZXm)
                end
                return OxZQwDlI_M
            end
            task["spawn"](function()
                local pum1O = nil
                local BnQZQ = nil
                while true do
                    task["wait"](1)
                    local uZwM0XwbNUlwq = MU_m1UmlXXDZ.FindMobileControl()
                    if not uZwM0XwbNUlwq then
                        pum1O = nil
                        continue
                    end
                    if uZwM0XwbNUlwq ~= pum1O then
                        pum1O = uZwM0XwbNUlwq
                        if BnQZQ then
                            BnQZQ["Disconnect"](BnQZQ)
                            BnQZQ = nil
                        end
                        uZwM0XwbNUlwq["InputBegan"]:Connect(function(Dpn0zQzp)
                            if Dpn0zQzp["UserInputType"] == Enum["UserInputType"]["Touch"] or Dpn0zQzp["UserInputType"] == Enum["UserInputType"]["MouseButton2"] then
                                MU_m1UmlXXDZ.bIMHzDvqolp = true
                            end
                        end)
                        uZwM0XwbNUlwq["InputEnded"]:Connect(function(HHWNw0lbn)
                            if HHWNw0lbn["UserInputType"] == Enum["UserInputType"]["Touch"] or HHWNw0lbn["UserInputType"] == Enum["UserInputType"]["MouseButton2"] then
                                MU_m1UmlXXDZ.bIMHzDvqolp = false
                            end
                        end)
                    end
                end
            end)
            WwNbnqHIQwppl["Heartbeat"]:Connect(function()
                pcall(function()
                    local OH__NbZ = Q_qlzpNO1["Character"]
                    if OH__NbZ then
                        if _1OUbnbM["vaultSpeedEnabled"] then
                            OH__NbZ["SetAttribute"](OH__NbZ, "vaultspeed", _1OUbnbM["vaultSpeedValue"] or 1.5)
                        else
                            OH__NbZ["SetAttribute"](OH__NbZ, "vaultspeed", 1.0)
                        end
                    end
                end)
            end)
            getgenv()["VD"] = getgenv()["VD"] or {}
            _1OUbnbM["fpsBoosterEnabled"] = _1OUbnbM["fpsBoosterEnabled"] or false
            _1OUbnbM["clayModeEnabled"] = _1OUbnbM["clayModeEnabled"] or false

            local PerformanceLighting = game:GetService("Lighting")
            local PerformanceTerrain = workspace:FindFirstChildOfClass("Terrain")
            local PerformanceFPSCache = {
                Lighting = {},
                Terrain = {},
                Objects = {},
                Cached = false,
            }
            local PerformanceClayCache = {}

            local function PerformanceRemember(cache, object, properties)
                if cache[object] == nil then
                    cache[object] = properties
                end
            end

            local function PerformanceApplyLighting()
                if not PerformanceFPSCache.Cached then
                    PerformanceRemember(PerformanceFPSCache.Lighting, PerformanceLighting, {
                        GlobalShadows = PerformanceLighting.GlobalShadows,
                        FogEnd = PerformanceLighting.FogEnd,
                        EnvironmentDiffuseScale = PerformanceLighting.EnvironmentDiffuseScale,
                        EnvironmentSpecularScale = PerformanceLighting.EnvironmentSpecularScale,
                    })
                    for _, child in ipairs(PerformanceLighting:GetChildren()) do
                        if child:IsA("PostEffect") or child:IsA("Atmosphere") or child:IsA("Sky") then
                            PerformanceRemember(PerformanceFPSCache.Objects, child, { Enabled = child.Enabled })
                        end
                    end
                    if PerformanceTerrain then
                        PerformanceRemember(PerformanceFPSCache.Terrain, PerformanceTerrain, {
                            WaterWaveSize = PerformanceTerrain.WaterWaveSize,
                            WaterWaveSpeed = PerformanceTerrain.WaterWaveSpeed,
                            WaterTransparency = PerformanceTerrain.WaterTransparency,
                            WaterReflectance = PerformanceTerrain.WaterReflectance,
                        })
                    end
                    PerformanceFPSCache.Cached = true
                end
                pcall(function()
                    PerformanceLighting.GlobalShadows = false
                    PerformanceLighting.FogEnd = 1000000
                    PerformanceLighting.EnvironmentDiffuseScale = 0
                    PerformanceLighting.EnvironmentSpecularScale = 0
                    for _, child in ipairs(PerformanceLighting:GetChildren()) do
                        if child:IsA("PostEffect") or child:IsA("Atmosphere") or child:IsA("Sky") then
                            child.Enabled = false
                        end
                    end
                    if PerformanceTerrain then
                        PerformanceTerrain.WaterWaveSize = 0
                        PerformanceTerrain.WaterWaveSpeed = 0
                        PerformanceTerrain.WaterTransparency = 1
                        PerformanceTerrain.WaterReflectance = 0
                    end
                end)
            end

            local function PerformanceApplyObjects()
                local descendants = workspace:GetDescendants()
                for index, object in ipairs(descendants) do
                    if index % 200 == 0 then
                        task.wait()
                        if not _1OUbnbM["fpsBoosterEnabled"] then
                            return
                        end
                    end
                    pcall(function()
                        if object:IsA("BasePart") then
                            PerformanceRemember(PerformanceFPSCache.Objects, object, {
                                CastShadow = object.CastShadow,
                                Material = object.Material,
                                Reflectance = object.Reflectance,
                            })
                            object.CastShadow = false
                            object.Material = Enum.Material.SmoothPlastic
                            object.Reflectance = 0
                        elseif object:IsA("Decal") or object:IsA("Texture") then
                            PerformanceRemember(PerformanceFPSCache.Objects, object, { Transparency = object.Transparency })
                            object.Transparency = 1
                        elseif object:IsA("ParticleEmitter") or object:IsA("Trail") or object:IsA("Fire") or object:IsA("Smoke") or object:IsA("Sparkles") then
                            PerformanceRemember(PerformanceFPSCache.Objects, object, { Enabled = object.Enabled })
                            object.Enabled = false
                        end
                    end)
                end
            end

            function ApplyFPSBooster()
                _1OUbnbM["fpsBoosterEnabled"] = true
                PerformanceApplyLighting()
                task.spawn(PerformanceApplyObjects)
            end

            function RevertFPSBooster()
                _1OUbnbM["fpsBoosterEnabled"] = false
                pcall(function()
                    for object, properties in pairs(PerformanceFPSCache.Objects) do
                        if object and object.Parent then
                            for property, value in pairs(properties) do
                                pcall(function()
                                    object[property] = value
                                end)
                            end
                        end
                    end
                    for object, properties in pairs(PerformanceFPSCache.Lighting) do
                        if object and object.Parent then
                            for property, value in pairs(properties) do
                                pcall(function()
                                    object[property] = value
                                end)
                            end
                        end
                    end
                    for object, properties in pairs(PerformanceFPSCache.Terrain) do
                        if object and object.Parent then
                            for property, value in pairs(properties) do
                                pcall(function()
                                    object[property] = value
                                end)
                            end
                        end
                    end
                end)
                PerformanceFPSCache.Objects = {}
                PerformanceFPSCache.Lighting = {}
                PerformanceFPSCache.Terrain = {}
                PerformanceFPSCache.Cached = false
            end

            local function PerformanceApplyClay()
                local descendants = workspace:GetDescendants()
                for index, object in ipairs(descendants) do
                    if index % 200 == 0 then
                        task.wait()
                        if not _1OUbnbM["clayModeEnabled"] then
                            return
                        end
                    end
                    pcall(function()
                        if object:IsA("BasePart") then
                            PerformanceRemember(PerformanceClayCache, object, {
                                Material = object.Material,
                                Color = object.Color,
                                Reflectance = object.Reflectance,
                            })
                            object.Material = Enum.Material.SmoothPlastic
                            object.Reflectance = 0
                        elseif object:IsA("Decal") or object:IsA("Texture") then
                            PerformanceRemember(PerformanceClayCache, object, { Transparency = object.Transparency })
                            object.Transparency = 1
                        end
                    end)
                end
            end

            function ApplyClayMode()
                _1OUbnbM["clayModeEnabled"] = true
                task.spawn(PerformanceApplyClay)
            end

            function RevertClayMode()
                _1OUbnbM["clayModeEnabled"] = false
                pcall(function()
                    for object, properties in pairs(PerformanceClayCache) do
                        if object and object.Parent then
                            for property, value in pairs(properties) do
                                pcall(function()
                                    object[property] = value
                                end)
                            end
                        end
                    end
                end)
                PerformanceClayCache = {}
            end

            workspace.DescendantAdded:Connect(function(object)
                if _1OUbnbM["fpsBoosterEnabled"] then
                    task.defer(function()
                        pcall(function()
                            if object:IsA("BasePart") then
                                PerformanceRemember(
                                    PerformanceFPSCache.Objects,
                                    object,
                                    { CastShadow = object.CastShadow, Material = object.Material, Reflectance = object.Reflectance }
                                )
                                object.CastShadow = false
                                object.Material = Enum.Material.SmoothPlastic
                                object.Reflectance = 0
                            elseif object:IsA("Decal") or object:IsA("Texture") then
                                PerformanceRemember(PerformanceFPSCache.Objects, object, { Transparency = object.Transparency })
                                object.Transparency = 1
                            end
                        end)
                    end)
                end
                if _1OUbnbM["clayModeEnabled"] then
                    task.defer(function()
                        pcall(function()
                            if object:IsA("BasePart") then
                                PerformanceRemember(PerformanceClayCache, object, { Material = object.Material, Color = object.Color, Reflectance = object.Reflectance })
                                object.Material = Enum.Material.SmoothPlastic
                                object.Reflectance = 0
                            elseif object:IsA("Decal") or object:IsA("Texture") then
                                PerformanceRemember(PerformanceClayCache, object, { Transparency = object.Transparency })
                                object.Transparency = 1
                            end
                        end)
                    end)
                end
            end)
            MU_m1UmlXXDZ.OzQQzw1umQq = nil
            function MU_m1UmlXXDZ.UseHealingRemote()
                local WDuq0z1Qo = Q_qlzpNO1["Character"]
                if not WDuq0z1Qo then
                    return
                end
                local BxH1IMWO = oZzw1oZIXX_["FindFirstChild"](oZzw1oZIXX_, "Remotes")
                    and oZzw1oZIXX_["Remotes"]:FindFirstChild("Healing")
                    and oZzw1oZIXX_["Remotes"]["Healing"]:FindFirstChild("HealEvent")
                local MMvMuqlX = WDuq0z1Qo["FindFirstChild"](WDuq0z1Qo, "HumanoidRootPart")
                if not MMvMuqlX or not BxH1IMWO then
                    return
                end
                pcall(function()
                    BxH1IMWO:FireServer(MMvMuqlX, true)
                end)
            end
            function MU_m1UmlXXDZ.UseItemRemote()
                local _1Xlovnqm = Q_qlzpNO1["Character"]
                if not _1Xlovnqm then
                    return
                end
                local Nq_xXNzNUDn = oZzw1oZIXX_["FindFirstChild"](oZzw1oZIXX_, "Remotes")
                    and oZzw1oZIXX_["Remotes"]:FindFirstChild("Healing")
                    and oZzw1oZIXX_["Remotes"]["Healing"]:FindFirstChild("HealEvent")
                local QqIUnUnppll = _1Xlovnqm["FindFirstChild"](_1Xlovnqm, "HumanoidRootPart")
                if not QqIUnUnppll or not Nq_xXNzNUDn then
                    return
                end
                pcall(function()
                    Nq_xXNzNUDn:FireServer(QqIUnUnppll, false)
                end)
            end
            MU_m1UmlXXDZ.MOwDImn10 = nil
            function MU_m1UmlXXDZ.UseAbilityRemote()
                local DmnWMbvDDx = Q_qlzpNO1["Character"]
                if not DmnWMbvDDx then
                    return
                end
                local W1DU1Zpm1 = oZzw1oZIXX_["FindFirstChild"](oZzw1oZIXX_, "Remotes")
                    and oZzw1oZIXX_["Remotes"]:FindFirstChild("Healing")
                    and oZzw1oZIXX_["Remotes"]["Healing"]:FindFirstChild("HealEvent")
                local _nnHuNNzzqpqw = DmnWMbvDDx["FindFirstChild"](DmnWMbvDDx, "HumanoidRootPart")
                if not _nnHuNNzzqpqw or not W1DU1Zpm1 then
                    return
                end
                pcall(function()
                    W1DU1Zpm1:FireServer(_nnHuNNzzqpqw, true)
                end)
            end
            function MU_m1UmlXXDZ.UseCharacterRemote()
                local pnpnv0uvUnlW = Q_qlzpNO1["Character"]
                if not pnpnv0uvUnlW then
                    return
                end
                local qMlz1 = oZzw1oZIXX_["FindFirstChild"](oZzw1oZIXX_, "Remotes")
                    and oZzw1oZIXX_["Remotes"]:FindFirstChild("Healing")
                    and oZzw1oZIXX_["Remotes"]["Healing"]:FindFirstChild("HealEvent")
                local wvIvH_ = pnpnv0uvUnlW["FindFirstChild"](pnpnv0uvUnlW, "HumanoidRootPart")
                if not wvIvH_ or not qMlz1 then
                    return
                end
                pcall(function()
                    qMlz1:FireServer(wvIvH_, false)
                end)
            end
            function MU_m1UmlXXDZ.CreateInstantHealUI()
                local NxNZOpXXO = Instance["new"]("ScreenGui")
                NxNZOpXXO["Name"] = "FallensHealGui"
                NxNZOpXXO["ResetOnSpawn"] = false
                NxNZOpXXO["ZIndexBehavior"] = Enum["ZIndexBehavior"]["Sibling"]
                NxNZOpXXO["Parent"] = CharacterFunction4()
                NxNZOpXXO["Enabled"] = false
                local H_NDWb0 = Instance["new"]("TextButton")
                H_NDWb0["Name"] = "HealButton"
                H_NDWb0["Text"] = "ฮีล: ปิด"
                H_NDWb0["TextColor3"] = Color3["fromRGB"](205, 230, 205)
                H_NDWb0["TextSize"] = 12
                H_NDWb0["Font"] = Enum["Font"]["SourceSansBold"]
                H_NDWb0["AutoButtonColor"] = false
                H_NDWb0["Size"] = UDim2["fromOffset"](65, 50)
                H_NDWb0["Position"] = UDim2["new"](0.5, -32, 0.45, -25)
                H_NDWb0["BackgroundColor3"] = Color3["fromRGB"](12, 18, 14)
                H_NDWb0["BackgroundTransparency"] = 0.05
                H_NDWb0["ClipsDescendants"] = true
                H_NDWb0["Parent"] = NxNZOpXXO
                local HZHUmzXH1OlM = Instance["new"]("UICorner")
                HZHUmzXH1OlM["CornerRadius"] = UDim["new"](0, 10)
                HZHUmzXH1OlM["Parent"] = H_NDWb0
                local HpmwXX = Instance["new"]("UIStroke")
                HpmwXX["Color"] = Color3["fromRGB"](25, 110, 50)
                HpmwXX["Thickness"] = 1.2
                HpmwXX["ApplyStrokeMode"] = Enum["ApplyStrokeMode"]["Border"]
                HpmwXX["Parent"] = H_NDWb0
                local WO1IWHQuZw = Instance["new"]("UIStroke")
                WO1IWHQuZw["Color"] = Color3["fromRGB"](30, 140, 65)
                WO1IWHQuZw["Thickness"] = 4
                WO1IWHQuZw["Transparency"] = 0.6
                WO1IWHQuZw["Parent"] = H_NDWb0
                H_NDWb0["MouseEnter"]:Connect(function()
                    game:GetService("TweenService"):Create(H_NDWb0, TweenInfo["new"](0.15), { ["BackgroundColor3"] = Color3["fromRGB"](15, 35, 20) }):Play()
                end)
                H_NDWb0["MouseLeave"]:Connect(function()
                    game:GetService("TweenService"):Create(H_NDWb0, TweenInfo["new"](0.15), { ["BackgroundColor3"] = Color3["fromRGB"](12, 18, 14) }):Play()
                end)
                local function HealingFunction2()
                    game:GetService("TweenService"):Create(H_NDWb0, TweenInfo["new"](0.08), { ["Size"] = UDim2["fromOffset"](58, 44) }):Play()
                    task["wait"](0.08)
                    game:GetService("TweenService"):Create(H_NDWb0, TweenInfo["new"](0.08), { ["Size"] = UDim2["fromOffset"](65, 50) }):Play()
                    _1OUbnbM["instantHealActive"] = not _1OUbnbM["instantHealActive"]
                    if _1OUbnbM["instantHealActive"] then
                        H_NDWb0["Text"] = "ฮีล: เปิด"
                        H_NDWb0["TextColor3"] = Color3["fromRGB"](100, 255, 150)
                        HpmwXX["Color"] = Color3["fromRGB"](0, 255, 100)
                        WO1IWHQuZw["Color"] = Color3["fromRGB"](0, 200, 80)
                    else
                        H_NDWb0["Text"] = "ฮีล: ปิด"
                        H_NDWb0["TextColor3"] = Color3["fromRGB"](205, 230, 205)
                        HpmwXX["Color"] = Color3["fromRGB"](25, 110, 50)
                        WO1IWHQuZw["Color"] = Color3["fromRGB"](30, 140, 65)
                        MU_m1UmlXXDZ.UseCharacterRemote()
                    end
                end
                H_NDWb0["MouseButton1Click"]:Connect(HealingFunction2)
                -- ลากปุ่มฮีลได้เฉพาะตอนปลดล็อก (รองรับเมาส์และสัมผัสมือถือ)
                MU_m1UmlXXDZ.HealPositionLocked = MU_m1UmlXXDZ.HealPositionLocked or false
                do
                    local dragInput, dragStart, startPos
                    local UserInputService = game:GetService("UserInputService")
                    H_NDWb0.InputBegan:Connect(function(input)
                        if MU_m1UmlXXDZ.HealPositionLocked then
                            return
                        end
                        if input.UserInputType == Enum.UserInputType.Touch or input.UserInputType == Enum.UserInputType.MouseButton1 then
                            dragInput = input
                            dragStart = input.Position
                            startPos = H_NDWb0.Position
                            input.Changed:Connect(function()
                                if input.UserInputState == Enum.UserInputState.End then
                                    dragInput = nil
                                end
                            end)
                        end
                    end)
                    UserInputService.InputChanged:Connect(function(input)
                        if MU_m1UmlXXDZ.HealPositionLocked or not dragInput then
                            return
                        end
                        if input == dragInput or input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
                            local delta = input.Position - dragStart
                            H_NDWb0.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
                        end
                    end)
                end
                return NxNZOpXXO, H_NDWb0
            end
            getgenv()["HealGuiInstance"], getgenv()["HealButtonInstance"] = MU_m1UmlXXDZ.CreateInstantHealUI()
            WwNbnqHIQwppl["Heartbeat"]:Connect(function()
                if not _1OUbnbM["instantHealEnabled"] or not _1OUbnbM["instantHealActive"] then
                    return
                end
                local quHXooxO = Q_qlzpNO1["Character"]
                local lvu1MXl1OHXU = quHXooxO and quHXooxO["FindFirstChildOfClass"](quHXooxO, "Humanoid")
                if not lvu1MXl1OHXU or lvu1MXl1OHXU["Health"] <= 0 then
                    return
                end
                if lvu1MXl1OHXU["Health"] >= lvu1MXl1OHXU["MaxHealth"] * 0.95 then
                    MU_m1UmlXXDZ.UseCharacterRemote()
                else
                    MU_m1UmlXXDZ.UseAbilityRemote()
                end
            end)
            M_QbbvZ0IU["InputBegan"]:Connect(function(pvHmOH1pzbq, IOX1nO_zOw0)
                if IOX1nO_zOw0 then
                    return
                end
                if pvHmOH1pzbq["KeyCode"] == Enum["KeyCode"]["G"] and _1OUbnbM["instantHealEnabled"] then
                    _1OUbnbM["instantHealActive"] = not _1OUbnbM["instantHealActive"]
                    if HealButtonInstance then
                        if _1OUbnbM["instantHealActive"] then
                            HealButtonInstance["Text"] = "ฮีล: เปิด"
                            HealButtonInstance["TextColor3"] = Color3["fromRGB"](0, 255, 120)
                        else
                            HealButtonInstance["Text"] = "ฮีล: ปิด"
                            HealButtonInstance["TextColor3"] = Color3["fromRGB"](200, 200, 200)
                            MU_m1UmlXXDZ.UseCharacterRemote()
                        end
                    end
                end
            end)
            WwNbnqHIQwppl["Heartbeat"]:Connect(function()
                pcall(function()
                    if _1OUbnbM["speedHackEnabled"] then
                        local u0wHxxHovzm = Q_qlzpNO1["Character"]
                        if u0wHxxHovzm then
                            local wZDnxpqlx = u0wHxxHovzm["FindFirstChildOfClass"](u0wHxxHovzm, "Humanoid")
                            if wZDnxpqlx then
                                local BuwbZlNN = _1OUbnbM["speedValue"] or 32
                                if wZDnxpqlx["WalkSpeed"] ~= BuwbZlNN then
                                    wZDnxpqlx["WalkSpeed"] = BuwbZlNN
                                end
                            end
                        end
                    else
                        local DmuDI_Xnl = Q_qlzpNO1["Character"]
                        if DmuDI_Xnl then
                            local _wmxoXvImXz_I_ = DmuDI_Xnl["FindFirstChildOfClass"](DmuDI_Xnl, "Humanoid")
                            if _wmxoXvImXz_I_ and _wmxoXvImXz_I_["WalkSpeed"] > 16 and _wmxoXvImXz_I_["WalkSpeed"] == (_1OUbnbM["speedValue"] or 32) then
                                _wmxoXvImXz_I_["WalkSpeed"] = 16
                            end
                        end
                    end
                end)
            end)
            Q_qlzpNO1["CharacterAdded"]:Connect(function(lNqNuzIHmZM)
                task["wait"](0.5)
                if _1OUbnbM["speedHackEnabled"] then
                    local DMxwvXQ1qx = lNqNuzIHmZM["FindFirstChildOfClass"](lNqNuzIHmZM, "Humanoid")
                    if DMxwvXQ1qx then
                        DMxwvXQ1qx["WalkSpeed"] = _1OUbnbM["speedValue"] or 32
                    end
                end
            end)
            function MU_m1UmlXXDZ.UseItemAction()
                pcall(function()
                    local bQuo1Ulou = oZzw1oZIXX_["FindFirstChild"](oZzw1oZIXX_, "Remotes")
                    local bD0ZqNUM0pIx_0 = bQuo1Ulou and bQuo1Ulou["FindFirstChild"](bQuo1Ulou, "Items")
                    local qlq0U_ = bD0ZqNUM0pIx_0 and bD0ZqNUM0pIx_0["FindFirstChild"](bD0ZqNUM0pIx_0, "Flashlight")
                    local OOlMwHzuNpvxN = qlq0U_ and qlq0U_["FindFirstChild"](qlq0U_, "GotBlinded")
                    if not (OOlMwHzuNpvxN and OOlMwHzuNpvxN["IsA"](OOlMwHzuNpvxN, "RemoteEvent")) then
                        return
                    end
                    local W1uoqo011, HNxOQM = pcall(function()
                        return getrawmetatable(game)
                    end)
                    if W1uoqo011 and HNxOQM and setreadonly then
                        pcall(function()
                            setreadonly(HNxOQM, false)
                            local wv_pvvnx = HNxOQM["__namecall"]
                            local IQDnnqwMm = getgenv()
                            HNxOQM["__namecall"] = newcclosure(function(HHHMlZn, ...)
                                if not checkcaller() and IQDnnqwMm["VD"] and IQDnnqwMm["VD"]["KILLER_AntiBlind"] and HHHMlZn == OOlMwHzuNpvxN then
                                    local lMOIZqH_X = getnamecallmethod()
                                    if lMOIZqH_X == "FireServer" then
                                        local wOQbUQbO = Q_qlzpNO1["Team"] and Q_qlzpNO1["Team"]["Name"] or "Unknown"
                                        if wOQbUQbO == "Killer" then
                                            return nil
                                        end
                                    end
                                end
                                return wv_pvvnx(HHHMlZn, ...)
                            end)
                            setreadonly(HNxOQM, true)
                        end)
                    end
                end)
            end
            MU_m1UmlXXDZ.UseItemAction()
            getgenv()["VD"] = getgenv()["VD"] or {}
            _1OUbnbM["fakePerksEnabled"] = _1OUbnbM["fakePerksEnabled"] or false
            _1OUbnbM["flowstateEnabled"] = _1OUbnbM["flowstateEnabled"] or false
            _1OUbnbM["flowstateBoostEnabled"] = _1OUbnbM["flowstateBoostEnabled"] or false
            _1OUbnbM["quickRecoveryEnabled"] = _1OUbnbM["quickRecoveryEnabled"] or false
            _1OUbnbM["perfectLandingEnabled"] = _1OUbnbM["perfectLandingEnabled"] or false
            _1OUbnbM["adrenalineRushEnabled"] = _1OUbnbM["adrenalineRushEnabled"] or false
            _1OUbnbM["killerHitEnabled"] = _1OUbnbM["killerHitEnabled"] or false
            MU_m1UmlXXDZ.WpxuObUp = { ["Conns"] = {}, ["ActiveBuffs"] = {}, ["Cooldowns"] = {}, ["HB"] = nil, ["CooldownTime"] = 15 }
            function MU_m1UmlXXDZ.GetCharacter()
                return Q_qlzpNO1["Character"]
            end
            function MU_m1UmlXXDZ.GetHumanoid()
                local B1HmNnXZIq = MU_m1UmlXXDZ.GetCharacter()
                return B1HmNnXZIq and B1HmNnXZIq["FindFirstChildOfClass"](B1HmNnXZIq, "Humanoid")
            end
            function MU_m1UmlXXDZ.GetActiveBuffSpeed()
                local vHlm_OpDmIIo = 0
                for qW_MooxH, owqDDx0wnwuqM in pairs(MU_m1UmlXXDZ.WpxuObUp["ActiveBuffs"]) do
                    if tick() < owqDDx0wnwuqM["endTime"] then
                        vHlm_OpDmIIo = vHlm_OpDmIIo + owqDDx0wnwuqM["amt"]
                    end
                end
                return vHlm_OpDmIIo
            end
            function MU_m1UmlXXDZ.UpdateMovementSpeed()
                local vII_Dn_0H1noUM = MU_m1UmlXXDZ.GetCharacter()
                local WNOmM = MU_m1UmlXXDZ.GetHumanoid()
                local INUlMmIpN = MU_m1UmlXXDZ.GetActiveBuffSpeed()
                if vII_Dn_0H1noUM then
                    vII_Dn_0H1noUM["SetAttribute"](vII_Dn_0H1noUM, "speedboost", INUlMmIpN > 0 and (1 + (INUlMmIpN / 14)) or 1)
                end
                if WNOmM and not _1OUbnbM["speedHackEnabled"] then
                    WNOmM["WalkSpeed"] = 16 + INUlMmIpN
                end
            end
            function MU_m1UmlXXDZ.StartFakePerksHeartbeat()
                if MU_m1UmlXXDZ.WpxuObUp["HB"] then
                    return
                end
                MU_m1UmlXXDZ.WpxuObUp["HB"] = WwNbnqHIQwppl["Heartbeat"]:Connect(function()
                    if not _1OUbnbM["fakePerksEnabled"] then
                        return
                    end
                    local Obml0uQbWOZ0 = {}
                    for DmQqq0pHloNOo, oMmXZmQ1llZ10o in pairs(MU_m1UmlXXDZ.WpxuObUp["ActiveBuffs"]) do
                        if tick() >= oMmXZmQ1llZ10o["endTime"] then
                            table.insert(Obml0uQbWOZ0, DmQqq0pHloNOo)
                        end
                    end
                    for obvllNInwXolXI, __lInxM in ipairs(Obml0uQbWOZ0) do
                        MU_m1UmlXXDZ.WpxuObUp["ActiveBuffs"][__lInxM] = nil
                    end
                    MU_m1UmlXXDZ.UpdateMovementSpeed()
                    if MU_m1UmlXXDZ.GetActiveBuffSpeed() <= 0 and next(MU_m1UmlXXDZ.WpxuObUp["ActiveBuffs"]) == nil then
                        if MU_m1UmlXXDZ.WpxuObUp["HB"] then
                            MU_m1UmlXXDZ.WpxuObUp["HB"]:Disconnect()
                            MU_m1UmlXXDZ.WpxuObUp["HB"] = nil
                        end
                        local Dvumx1O1vmXuoW = MU_m1UmlXXDZ.GetCharacter()
                        if Dvumx1O1vmXuoW then
                            Dvumx1O1vmXuoW["SetAttribute"](Dvumx1O1vmXuoW, "speedboost", 1)
                        end
                    end
                end)
            end
            function MU_m1UmlXXDZ.DisconnectPerkConnections(WIOvQ1OupmOW1q)
                if MU_m1UmlXXDZ.WpxuObUp["Conns"][WIOvQ1OupmOW1q] then
                    for oQZ_DMw, pzqoH0zZoDnQ in ipairs(MU_m1UmlXXDZ.WpxuObUp["Conns"][WIOvQ1OupmOW1q]) do
                        pcall(function()
                            pzqoH0zZoDnQ:Disconnect()
                        end)
                    end
                    MU_m1UmlXXDZ.WpxuObUp["Conns"][WIOvQ1OupmOW1q] = nil
                end
            end
            function MU_m1UmlXXDZ.ConnectPerkEvent(Mn0lolzIIzIq, _1wIpo0q0X1vZ)
                if not MU_m1UmlXXDZ.WpxuObUp["Conns"][Mn0lolzIIzIq] then
                    MU_m1UmlXXDZ.WpxuObUp["Conns"][Mn0lolzIIzIq] = {}
                end
                table.insert(MU_m1UmlXXDZ.WpxuObUp["Conns"][Mn0lolzIIzIq], _1wIpo0q0X1vZ)
            end
            function MU_m1UmlXXDZ.ActivateFakePerk(pbHUm, HNmNbHDH_MW1, lzZnXQ)
                if not _1OUbnbM["fakePerksEnabled"] then
                    return
                end
                if pbHUm == "Flowstate" and not _1OUbnbM["flowstateBoostEnabled"] then
                    return
                end
                if pbHUm == "QuickRecovery" and not _1OUbnbM["quickRecoveryEnabled"] then
                    return
                end
                if pbHUm == "PerfectLanding" and not _1OUbnbM["perfectLandingEnabled"] then
                    return
                end
                if pbHUm == "AdrenalineRush" and not _1OUbnbM["adrenalineRushEnabled"] then
                    return
                end
                if pbHUm == "KillerHit" and not _1OUbnbM["killerHitEnabled"] then
                    return
                end
                local MM_10HnXq = tick()
                if MU_m1UmlXXDZ.WpxuObUp["Cooldowns"][pbHUm] and MM_10HnXq < MU_m1UmlXXDZ.WpxuObUp["Cooldowns"][pbHUm] then
                    return
                end
                if MU_m1UmlXXDZ.WpxuObUp["ActiveBuffs"][pbHUm] then
                    return
                end
                MU_m1UmlXXDZ.WpxuObUp["ActiveBuffs"][pbHUm] = { ["amt"] = HNmNbHDH_MW1, ["endTime"] = MM_10HnXq + lzZnXQ }
                MU_m1UmlXXDZ.WpxuObUp["Cooldowns"][pbHUm] = MM_10HnXq + lzZnXQ + MU_m1UmlXXDZ.WpxuObUp["CooldownTime"]
                MU_m1UmlXXDZ.UpdateMovementSpeed()
                MU_m1UmlXXDZ.StartFakePerksHeartbeat()
            end
            do
                function MU_m1UmlXXDZ.ActivateFlowstateBoost()
                    if not _1OUbnbM["fakePerksEnabled"] or not _1OUbnbM["flowstateBoostEnabled"] then
                        return
                    end
                    MU_m1UmlXXDZ.ActivateFakePerk("Flowstate", 5, 3)
                end
                function MU_m1UmlXXDZ.WatchVaultAttributes(QW0w1zOqQ)
                    if not QW0w1zOqQ then
                        return
                    end
                    QW0w1zOqQ["AttributeChanged"]:Connect(function(NzUHvOIImm_x)
                        if NzUHvOIImm_x == "Vaulting" or NzUHvOIImm_x == "IsVaulting" or NzUHvOIImm_x == "Climbing" then
                            if QW0w1zOqQ["GetAttribute"](QW0w1zOqQ, NzUHvOIImm_x) == true then
                                MU_m1UmlXXDZ.ActivateFlowstateBoost()
                            end
                        end
                    end)
                end
                if Q_qlzpNO1["Character"] then
                    MU_m1UmlXXDZ.WatchVaultAttributes(Q_qlzpNO1["Character"])
                end
                MU_m1UmlXXDZ.ConnectPerkEvent("Flowstate", Q_qlzpNO1["CharacterAdded"]:Connect(MU_m1UmlXXDZ.WatchVaultAttributes))
            end
            do
                function MU_m1UmlXXDZ.ActivateQuickRecovery()
                    if _1OUbnbM["fakePerksEnabled"] and _1OUbnbM["quickRecoveryEnabled"] then
                        MU_m1UmlXXDZ.ActivateFakePerk("QuickRecovery", 5, 3)
                    end
                end
                MU_m1UmlXXDZ.BvUNlNHXbowqI = oZzw1oZIXX_["FindFirstChild"](oZzw1oZIXX_, "Remotes")
                MU_m1UmlXXDZ.OvU1QwN = MU_m1UmlXXDZ.BvUNlNHXbowqI and MU_m1UmlXXDZ.BvUNlNHXbowqI["FindFirstChild"](MU_m1UmlXXDZ.BvUNlNHXbowqI, "Healing")
                if MU_m1UmlXXDZ.OvU1QwN then
                    MU_m1UmlXXDZ.Qpx0Hub = MU_m1UmlXXDZ.OvU1QwN["FindFirstChild"](MU_m1UmlXXDZ.OvU1QwN, "Healdone")
                    if MU_m1UmlXXDZ.Qpx0Hub and MU_m1UmlXXDZ.Qpx0Hub["IsA"](MU_m1UmlXXDZ.Qpx0Hub, "BindableEvent") then
                        MU_m1UmlXXDZ.ConnectPerkEvent("QuickRecovery", MU_m1UmlXXDZ.Qpx0Hub["Event"]:Connect(MU_m1UmlXXDZ.ActivateQuickRecovery))
                    end
                end
            end
            do
                function MU_m1UmlXXDZ.WatchPerfectLanding(qDQnXnOmxlWHlz)
                    if not qDQnXnOmxlWHlz then
                        return
                    end
                    local Bm_ol1olXWWWz1 = qDQnXnOmxlWHlz["FindFirstChildOfClass"](qDQnXnOmxlWHlz, "Humanoid")
                    if not Bm_ol1olXWWWz1 then
                        return
                    end
                    local HIqnHMqOIxq = false
                    local _vxpI = 0
                    local Bmxpm0DW = Bm_ol1olXWWWz1["StateChanged"]:Connect(function(vH_Nuz, IIwZHxm0_UX)
                        if IIwZHxm0_UX == Enum["HumanoidStateType"]["Freefall"] then
                            HIqnHMqOIxq = true
                            _vxpI = tick()
                        end
                        if HIqnHMqOIxq and (IIwZHxm0_UX == Enum["HumanoidStateType"]["Landed"] or IIwZHxm0_UX == Enum["HumanoidStateType"]["Running"]) then
                            local lHNzQ0UlWZ = tick() - _vxpI
                            HIqnHMqOIxq = false
                            if lHNzQ0UlWZ >= 0.25 and _1OUbnbM["fakePerksEnabled"] and _1OUbnbM["perfectLandingEnabled"] then
                                MU_m1UmlXXDZ.ActivateFakePerk("PerfectLanding", 5, 3)
                            end
                        end
                    end)
                    MU_m1UmlXXDZ.ConnectPerkEvent("PerfectLanding", Bmxpm0DW)
                end
                if Q_qlzpNO1["Character"] then
                    MU_m1UmlXXDZ.WatchPerfectLanding(Q_qlzpNO1["Character"])
                end
                MU_m1UmlXXDZ.ConnectPerkEvent("PerfectLanding", Q_qlzpNO1["CharacterAdded"]:Connect(MU_m1UmlXXDZ.WatchPerfectLanding))
            end
            do
                function MU_m1UmlXXDZ.WatchAdrenalineRush(vzNXlnDmQDn_m)
                    if not vzNXlnDmQDn_m then
                        return
                    end
                    local bQmMDwpnD0lun = vzNXlnDmQDn_m["FindFirstChildOfClass"](vzNXlnDmQDn_m, "Humanoid")
                    if not bQmMDwpnD0lun then
                        return
                    end
                    local bZuz_ = bQmMDwpnD0lun["Health"]
                    local lqbN1lDzQ1upN = bQmMDwpnD0lun["HealthChanged"]:Connect(function(wHbbDbvbm)
                        if wHbbDbvbm < bZuz_ and wHbbDbvbm <= 50 and wHbbDbvbm > 0 and _1OUbnbM["fakePerksEnabled"] and _1OUbnbM["adrenalineRushEnabled"] then
                            MU_m1UmlXXDZ.ActivateFakePerk("AdrenalineRush", 5, 3)
                        end
                        bZuz_ = wHbbDbvbm
                    end)
                    MU_m1UmlXXDZ.ConnectPerkEvent("AdrenalineRush", lqbN1lDzQ1upN)
                end
                if Q_qlzpNO1["Character"] then
                    MU_m1UmlXXDZ.WatchAdrenalineRush(Q_qlzpNO1["Character"])
                end
                MU_m1UmlXXDZ.ConnectPerkEvent("AdrenalineRush", Q_qlzpNO1["CharacterAdded"]:Connect(MU_m1UmlXXDZ.WatchAdrenalineRush))
            end
            do
                function MU_m1UmlXXDZ.ActivateKillerHit()
                    if _1OUbnbM["fakePerksEnabled"] and _1OUbnbM["killerHitEnabled"] then
                        MU_m1UmlXXDZ.ActivateFakePerk("KillerHit", 5, 3)
                    end
                end
                pcall(function()
                    for vpXXnzmHXozzm, WQQMvU1lMwOx in ipairs(WIDWH["GetPlayers"](WIDWH)) do
                        if WQQMvU1lMwOx ~= Q_qlzpNO1 then
                            WQQMvU1lMwOx["CharacterAdded"]:Connect(function(_p0mUI)
                                local uwMubo1Xu = _p0mUI["WaitForChild"](_p0mUI, "Humanoid", 5)
                                if uwMubo1Xu then
                                    uwMubo1Xu["AnimationPlayed"]:Connect(function(vqnnImwz_U1xm)
                                        local NvMDpbIWuM = vqnnImwz_U1xm["Animation"] and vqnnImwz_U1xm["Animation"]["AnimationId"] or ""
                                        if MbnHqZNZxQUUq[NvMDpbIWuM] then
                                            local qv1o_wQ_10vO = Q_qlzpNO1["Character"]
                                            local HHXmUNUxWHD = qv1o_wQ_10vO and qv1o_wQ_10vO["FindFirstChild"](qv1o_wQ_10vO, "HumanoidRootPart")
                                            local oqH_mbxqulxDMZ = _p0mUI["FindFirstChild"](_p0mUI, "HumanoidRootPart")
                                            if HHXmUNUxWHD and oqH_mbxqulxDMZ then
                                                if (HHXmUNUxWHD["Position"] - oqH_mbxqulxDMZ["Position"])["Magnitude"] <= 12 then
                                                    MU_m1UmlXXDZ.ActivateKillerHit()
                                                end
                                            end
                                        end
                                    end)
                                end
                            end)
                        end
                    end
                end)
            end
            getgenv()["KYS_HiddenLeapBypassThread"] = nil
            function MU_m1UmlXXDZ.SetHiddenLeapBypass(vIzWHxHWW)
                _1OUbnbM["KILLER_BypassLeap"] = vIzWHxHWW
                if vIzWHxHWW then
                    if getgenv()["KYS_HiddenLeapBypassThread"] then
                        task["cancel"](getgenv()["KYS_HiddenLeapBypassThread"])
                    end
                    getgenv()["KYS_HiddenLeapBypassThread"] = task["spawn"](function()
                        local DIlIb_mM, quQxU
                        local function FindKillerAnimationFunctions()
                            pcall(function()
                                for OxlbuwuUDzH, wZbwxznnpDbzm in pairs(getgc(true)) do
                                    if type(wZbwxznnpDbzm) == "function" and islclosure(wZbwxznnpDbzm) then
                                        local NMMbNnw_MOOlU
                                        pcall(function()
                                            NMMbNnw_MOOlU = debug["getinfo"](wZbwxznnpDbzm)
                                        end)
                                        if NMMbNnw_MOOlU then
                                            if NMMbNnw_MOOlU["name"] == "tryActivate" then
                                                DIlIb_mM = wZbwxznnpDbzm
                                            elseif NMMbNnw_MOOlU["name"] == "playM2Animation" then
                                                quQxU = wZbwxznnpDbzm
                                            end
                                        end
                                    end
                                    if DIlIb_mM and quQxU then
                                        break
                                    end
                                end
                            end)
                        end
                        FindKillerAnimationFunctions()
                        local bZxU0_0Zm = os["clock"]()
                        while task["wait"](0.1) do
                            if not _1OUbnbM["KILLER_BypassLeap"] then
                                break
                            end
                            if not (DIlIb_mM and quQxU) then
                                local QZMzmX = os["clock"]()
                                if QZMzmX - bZxU0_0Zm >= 2 then
                                    bZxU0_0Zm = QZMzmX
                                    FindKillerAnimationFunctions()
                                end
                            end
                            if DIlIb_mM then
                                pcall(function()
                                    for lpxzwQWX1ovDuW, qQD1mD_zw_mNH1 in pairs(debug["getupvalues"](DIlIb_mM)) do
                                        if type(qQD1mD_zw_mNH1) == "boolean" and qQD1mD_zw_mNH1 == true then
                                            debug["setupvalue"](DIlIb_mM, lpxzwQWX1ovDuW, false)
                                        end
                                    end
                                end)
                            end
                            if quQxU then
                                pcall(function()
                                    for pvm_Z, I1UxpUbZvbb in pairs(debug["getupvalues"](quQxU)) do
                                        if type(I1UxpUbZvbb) == "boolean" and I1UxpUbZvbb == true then
                                            debug["setupvalue"](quQxU, pvm_Z, false)
                                        end
                                    end
                                end)
                            end
                        end
                        getgenv()["KYS_HiddenLeapBypassThread"] = nil
                    end)
                    QolwvD0XnWnzM:Notify("เปิดใช้สกิล Hidden แบบไม่จำกัดแล้ว", 3)
                else
                    if getgenv()["KYS_HiddenLeapBypassThread"] then
                        task["cancel"](getgenv()["KYS_HiddenLeapBypassThread"])
                        getgenv()["KYS_HiddenLeapBypassThread"] = nil
                    end
                    QolwvD0XnWnzM["Notify"](QolwvD0XnWnzM, "ปิดใช้งาน Infinite Skill (Hidden) แล้ว", 3)
                end
            end
        end
        MU_m1UmlXXDZ.v1wXnNQlzpNNI = MObUmONzqwx1["AddCheckbox"](MObUmONzqwx1, "crosshairEnabled", {
            ["Text"] = "เป้าเล็ง",
            ["Default"] = _1OUbnbM["crosshairEnabled"],
            ["Callback"] = function(MXWbzNUpI0nD)
                _1OUbnbM["crosshairEnabled"] = MXWbzNUpI0nD
                MU_m1UmlXXDZ.QXpZWDZl:SetEnabled(MXWbzNUpI0nD)
            end,
        })
        MU_m1UmlXXDZ.v1wXnNQlzpNNI:AddColorPicker("crosshairColor", {
            ["Title"] = "สีเป้าเล็ง",
            ["Default"] = _1OUbnbM["crosshairColor"],
            ["Callback"] = function(O0opMDbwpO)
                _1OUbnbM["crosshairColor"] = O0opMDbwpO
                MU_m1UmlXXDZ.QXpZWDZl:SetColor(O0opMDbwpO)
            end,
        })
        MObUmONzqwx1:AddDropdown("crosshairStyle", {
            ["Values"] = {
                "จุด",
                "วงกลม",
                "วงกลม + จุด",
                "บวก",
                "กากบาท (X)",
                "รูปตัว T",
                "สี่เหลี่ยม",
            },
            ["Default"] = ({ ["Dot"] = 1, ["Circle"] = 2, ["Circle + Dot"] = 3, ["Plus"] = 4, ["Cross (X)"] = 5, ["T-Shape"] = 6, ["Square"] = 7 })[_1OUbnbM["crosshairStyle"]]
                or 4,
            ["Multi"] = false,
            ["Text"] = "รูปแบบเป้าเล็ง",
            ["Callback"] = function(HMDHXpxN_pQU)
                _1OUbnbM["crosshairStyle"] = ({
                    ["จุด"] = "Dot",
                    ["วงกลม"] = "Circle",
                    ["วงกลม + จุด"] = "Circle + Dot",
                    ["บวก"] = "Plus",
                    ["กากบาท (X)"] = "Cross (X)",
                    ["รูปตัว T"] = "T-Shape",
                    ["สี่เหลี่ยม"] = "Square",
                })[HMDHXpxN_pQU] or "Plus"
                MU_m1UmlXXDZ.QXpZWDZl:SetStyle(_1OUbnbM["crosshairStyle"])
            end,
        })
        MObUmONzqwx1:AddSlider("crosshairSize", {
            ["Text"] = "ขนาดเป้าเล็ง",
            ["Default"] = _1OUbnbM["crosshairSize"],
            ["Min"] = 1,
            ["Max"] = 10,
            ["Rounding"] = 0,
            ["Callback"] = function(lmHUlZb1U)
                _1OUbnbM["crosshairSize"] = lmHUlZb1U
                MU_m1UmlXXDZ.QXpZWDZl:SetSize(lmHUlZb1U)
            end,
        })
        MObUmONzqwx1:AddSlider("crosshairOpacity", {
            ["Text"] = "ความโปร่งใสเป้าเล็ง",
            ["Default"] = _1OUbnbM["crosshairOpacity"],
            ["Min"] = 0.1,
            ["Max"] = 1,
            ["Rounding"] = 2,
            ["Callback"] = function(NpWH1lII1I)
                _1OUbnbM["crosshairOpacity"] = NpWH1lII1I
                MU_m1UmlXXDZ.QXpZWDZl:SetOpacity(NpWH1lII1I)
            end,
        })
        qpbZM:AddCheckbox("lockFovEnabled", {
            ["Text"] = "ล็อกมุมมอง",
            ["Default"] = _1OUbnbM["lockFovEnabled"],
            ["Callback"] = function(MuOmWUIMv1n)
                _1OUbnbM["lockFovEnabled"] = MuOmWUIMv1n
            end,
        })
        qpbZM:AddSlider("customFovValue", {
            ["Text"] = "ค่ามุมมอง",
            ["Default"] = _1OUbnbM["customFovValue"],
            ["Min"] = 40,
            ["Max"] = 120,
            ["Rounding"] = 0,
            ["Callback"] = function(blWUZIz10n_MIW)
                _1OUbnbM["customFovValue"] = blWUZIz10n_MIW
            end,
        })
        vNvNwM_1w:AddCheckbox("moonwalkEnabled", {
            ["Text"] = "เปิดใช้การเดินมูนวอล์ก",
            ["Default"] = _1OUbnbM["moonwalkEnabled"],
            ["Callback"] = function(uvWWOIN)
                _1OUbnbM["moonwalkEnabled"] = uvWWOIN
            end,
        })
        vNvNwM_1w:AddDropdown("moonwalkMode", {
            ["Values"] = { "คลาสสิก", "แกว่ง" },
            ["Default"] = ({ ["Classic"] = 1, ["Sway"] = 2 })[_1OUbnbM["moonwalkMode"]] or 1,
            ["Multi"] = false,
            ["Text"] = "โหมดการเดินมูนวอล์ก",
            ["Callback"] = function(ln0__XZWbmZDzN)
                _1OUbnbM["moonwalkMode"] = ({ ["คลาสสิก"] = "Classic", ["แกว่ง"] = "Sway" })[ln0__XZWbmZDzN] or "Classic"
            end,
        })
        vNvNwM_1w:AddSlider("moonwalkSwayAmp", {
            ["Text"] = "ความกว้างการแกว่ง",
            ["Default"] = _1OUbnbM["moonwalkSwayAmp"],
            ["Min"] = 0.1,
            ["Max"] = 1.5,
            ["Rounding"] = 2,
            ["Callback"] = function(b_vNppMO)
                _1OUbnbM["moonwalkSwayAmp"] = b_vNppMO
            end,
        })
        vNvNwM_1w:AddSlider("moonwalkSwaySpeed", {
            ["Text"] = "ความเร็วการแกว่ง",
            ["Default"] = _1OUbnbM["moonwalkSwaySpeed"],
            ["Min"] = 1,
            ["Max"] = 12,
            ["Rounding"] = 1,
            ["Callback"] = function(_NXzuN_)
                _1OUbnbM["moonwalkSwaySpeed"] = _NXzuN_
            end,
        })
        OqonUMnOp:AddCheckbox("autoCrouchEnabled", {
            ["Text"] = "ย่อตัวอัตโนมัติ",
            ["Default"] = _1OUbnbM["autoCrouchEnabled"],
            ["Callback"] = function(WN_mUpMHHob)
                _1OUbnbM["autoCrouchEnabled"] = WN_mUpMHHob
            end,
        })
        OqonUMnOp:AddSlider("autoCrouchRadius", {
            ["Text"] = "รัศมีการย่อตัว",
            ["Default"] = _1OUbnbM["autoCrouchRadius"],
            ["Min"] = 5,
            ["Max"] = 40,
            ["Rounding"] = 0,
            ["Callback"] = function(B1IZvm0Mbxo)
                _1OUbnbM["autoCrouchRadius"] = B1IZvm0Mbxo
            end,
        })
        Qo0HDbZmXD_wp:AddCheckbox("aimlockFlashlightEnabled", {
            ["Text"] = "ล็อกเป้าด้วยไฟฉาย",
            ["Default"] = _1OUbnbM["aimlockFlashlightEnabled"],
            ["Callback"] = function(lQIbZuQ1uXWWbZ)
                _1OUbnbM["aimlockFlashlightEnabled"] = lQIbZuQ1uXWWbZ
            end,
        })
        Qo0HDbZmXD_wp:AddSlider("aimlockFlashlightSmooth", {
            ["Text"] = "ความนุ่มนวล",
            ["Default"] = _1OUbnbM["aimlockFlashlightSmooth"],
            ["Min"] = 0.1,
            ["Max"] = 1,
            ["Rounding"] = 2,
            ["Callback"] = function(NOvWD1X)
                _1OUbnbM["aimlockFlashlightSmooth"] = NOvWD1X
            end,
        })
        function MU_m1UmlXXDZ.DropAllPallets()
            local bZpZpDu = oZzw1oZIXX_["FindFirstChild"](oZzw1oZIXX_, "Remotes")
                and oZzw1oZIXX_["Remotes"]:FindFirstChild("Pallet")
                and oZzw1oZIXX_["Remotes"]["Pallet"]:FindFirstChild("PalletDropEvent")
            if not bZpZpDu then
                warn("ไม่พบ Remote Event สำหรับทิ้งไม้ (PalletDropEvent)")
                QolwvD0XnWnzM:Notify("ไม่พบ Remote Event สำหรับทิ้งไม้!", 3)
                return
            end
            local Bq01Zoz = 0
            for MUp_WOml, wxwDMuOWMIWnq in ipairs(wxl1Uo1UbDnnb["GetDescendants"](wxl1Uo1UbDnnb)) do
                local qznpDzZNpIxn_ = string["lower"](wxwDMuOWMIWnq["Name"])
                if string.find(qznpDzZNpIxn_, "pallet") then
                    local p0WMx1Ox = nil
                    if wxwDMuOWMIWnq["IsA"](wxwDMuOWMIWnq, "BasePart") then
                        p0WMx1Ox = wxwDMuOWMIWnq
                    elseif wxwDMuOWMIWnq["IsA"](wxwDMuOWMIWnq, "Model") then
                        p0WMx1Ox = wxwDMuOWMIWnq["PrimaryPart"] or wxwDMuOWMIWnq["FindFirstChildWhichIsA"](wxwDMuOWMIWnq, "BasePart")
                    end
                    if p0WMx1Ox then
                        local H_nm1IWb = pcall(function()
                            bZpZpDu:FireServer(p0WMx1Ox)
                        end)
                        if H_nm1IWb then
                            Bq01Zoz = Bq01Zoz + 1
                        end
                    end
                end
            end
            print("สั่งพับไม้สำเร็จทั้งหมด: " .. Bq01Zoz .. " จุด")
            QolwvD0XnWnzM:Notify("สั่งพับไม้สำเร็จทั้งหมด: " .. Bq01Zoz .. " จุด", 4)
        end
        MU_m1UmlXXDZ.bw_WzOobw = OnOquOxzu["Killer"]:AddRightGroupbox("Killer", "skull")
        MU_m1UmlXXDZ.bw_WzOobw:AddButton("พับไม้ทั้งหมดในแมพ", function()
            MU_m1UmlXXDZ.DropAllPallets()
        end)
        function MU_m1UmlXXDZ.FindVaultPoints()
            local pZqpxUnow1MvHu = {}
            local u_11D0z = wxl1Uo1UbDnnb["FindFirstChild"](wxl1Uo1UbDnnb, "Map")
            if not u_11D0z then
                return pZqpxUnow1MvHu
            end
            for pWONHmW_plD, _IMIWHbQopqOU in ipairs(u_11D0z["GetDescendants"](u_11D0z)) do
                if _IMIWHbQopqOU["IsA"](_IMIWHbQopqOU, "BasePart") then
                    if _IMIWHbQopqOU["Name"] == "VaultTrigger" or _IMIWHbQopqOU["Name"] == "VaultPoint" then
                        table.insert(pZqpxUnow1MvHu, _IMIWHbQopqOU)
                    end
                end
            end
            return pZqpxUnow1MvHu
        end
        task["spawn"](function()
            local lpubn_ZWpQUvMl = 0
            while not _1OUbnbM["Destroyed"] do
                if _1OUbnbM["KILLER_BlockVaults"] then
                    local DDuUmWzDD = Q_qlzpNO1["Team"] and Q_qlzpNO1["Team"]["Name"] or "Unknown"
                    if DDuUmWzDD == "Killer" then
                        local NIUZnNQloMU_ = tick()
                        if NIUZnNQloMU_ - lpubn_ZWpQUvMl >= 1.5 then
                            lpubn_ZWpQUvMl = NIUZnNQloMU_
                            pcall(function()
                                local oHDnu1oqouIMu = oZzw1oZIXX_["FindFirstChild"](oZzw1oZIXX_, "Remotes")
                                local vvDoMNIw1bl = oHDnu1oqouIMu
                                    and oHDnu1oqouIMu["FindFirstChild"](oHDnu1oqouIMu, "Window")
                                    and oHDnu1oqouIMu["Window"]:FindFirstChild("VaultEvent")
                                if vvDoMNIw1bl then
                                    local vXlxZ0ZvUll = wxl1Uo1UbDnnb["FindFirstChild"](wxl1Uo1UbDnnb, "Map")
                                    local MUwmHxI = vXlxZ0ZvUll and vXlxZ0ZvUll["FindFirstChild"](vXlxZ0ZvUll, "Vaults")
                                    if MUwmHxI then
                                        for lUzXb_, QxxUM in ipairs(MUwmHxI["GetChildren"](MUwmHxI)) do
                                            for bqunWMMO, quHOupOzXHUI in ipairs(QxxUM["GetChildren"](QxxUM)) do
                                                if quHOupOzXHUI["IsA"](quHOupOzXHUI, "BasePart") then
                                                    pcall(function()
                                                        vvDoMNIw1bl:FireServer(quHOupOzXHUI, true)
                                                    end)
                                                end
                                            end
                                        end
                                    else
                                        for bxUww0QwwpIuo, OwUHxDWz0Xvq in ipairs(MU_m1UmlXXDZ.FindVaultPoints()) do
                                            pcall(function()
                                                vvDoMNIw1bl:FireServer(OwUHxDWz0Xvq, true)
                                            end)
                                        end
                                    end
                                end
                            end)
                        end
                    end
                end
                task["wait"](0.5)
            end
        end)
        MU_m1UmlXXDZ.bw_WzOobw:AddButton("บล็อกหน้าต่างทั้งหมด", function()
            local MxDvoZ = Q_qlzpNO1["Team"] and Q_qlzpNO1["Team"]["Name"] or "Unknown"
            if MxDvoZ ~= "Killer" then
                QolwvD0XnWnzM["Notify"](QolwvD0XnWnzM, "คุณไม่ได้อยู่ในทีม Killer!", 3)
                return
            end
            local NoDQqonpHzv = 0
            pcall(function()
                local wUqnOuum = oZzw1oZIXX_["FindFirstChild"](oZzw1oZIXX_, "Remotes")
                local DbZn_Hxvx = wUqnOuum and wUqnOuum["FindFirstChild"](wUqnOuum, "Window") and wUqnOuum["Window"]:FindFirstChild("VaultEvent")
                if DbZn_Hxvx then
                    local QOXlDl = wxl1Uo1UbDnnb["FindFirstChild"](wxl1Uo1UbDnnb, "Map")
                    local QqQUmo_OnQ = QOXlDl and QOXlDl["FindFirstChild"](QOXlDl, "Vaults")
                    if QqQUmo_OnQ then
                        for ONIlNIz1, DDnqpmXQQ in ipairs(QqQUmo_OnQ["GetChildren"](QqQUmo_OnQ)) do
                            for wqMovpwq1Xqm, lMvX_lpp in ipairs(DDnqpmXQQ["GetChildren"](DDnqpmXQQ)) do
                                if lMvX_lpp["IsA"](lMvX_lpp, "BasePart") then
                                    pcall(function()
                                        DbZn_Hxvx:FireServer(lMvX_lpp, true)
                                        NoDQqonpHzv = NoDQqonpHzv + 1
                                    end)
                                end
                            end
                        end
                    else
                        for WZlvpIbUpIoOQ, MpqHHobO0W in ipairs(MU_m1UmlXXDZ.FindVaultPoints()) do
                            pcall(function()
                                DbZn_Hxvx:FireServer(MpqHHobO0W, true)
                                NoDQqonpHzv = NoDQqonpHzv + 1
                            end)
                        end
                    end
                end
            end)
            QolwvD0XnWnzM:Notify("สั่งบล็อกหน้าต่างสำเร็จ: " .. NoDQqonpHzv .. " จุด", 4)
        end)
        MU_m1UmlXXDZ.bw_WzOobw:AddCheckbox("KILLER_AntiBlind", {
            ["Text"] = "ป้องกันตาพร่ามัว (ไฟสาย)",
            ["Default"] = _1OUbnbM["KILLER_AntiBlind"],
            ["Callback"] = function(ObXzxbW)
                _1OUbnbM["KILLER_AntiBlind"] = ObXzxbW
                if ObXzxbW then
                    QolwvD0XnWnzM["Notify"](QolwvD0XnWnzM, "เปิดใช้งานระบบกันตาบอดจากไฟฉายแล้ว", 3)
                else
                    QolwvD0XnWnzM["Notify"](QolwvD0XnWnzM, "ปิดใช้งานระบบกันตาบอดจากไฟฉายแล้ว", 3)
                end
            end,
        })
        qmoNOXxnbpqI:AddCheckbox("spearEnabled", {
            ["Text"] = "หอกเงียบ",
            ["Default"] = _1OUbnbM["spearEnabled"],
            ["Callback"] = function(IMW_loZlbOQx)
                _1OUbnbM["spearEnabled"] = IMW_loZlbOQx
                if not IMW_loZlbOQx then
                    MU_m1UmlXXDZ.INDqmHQUQXolN = 142.5
                    MU_m1UmlXXDZ.oDXWbwIl0XQM = 0.5
                    MU_m1UmlXXDZ.IXHN1zUU = nil
                end
            end,
        })
        qmoNOXxnbpqI:AddCheckbox("spearFovCircleEnabled", {
            ["Text"] = "วงมุมมอง",
            ["Default"] = _1OUbnbM["spearFovCircleEnabled"],
            ["Callback"] = function(OXUwpMumoqmU)
                _1OUbnbM["spearFovCircleEnabled"] = OXUwpMumoqmU
            end,
        })
        qmoNOXxnbpqI:AddCheckbox("spearIndicatorEnabled", {
            ["Text"] = "ตัวชี้เป้าหมาย",
            ["Default"] = _1OUbnbM["spearIndicatorEnabled"],
            ["Callback"] = function(IMXmZ)
                _1OUbnbM["spearIndicatorEnabled"] = IMXmZ
            end,
        })
        qmoNOXxnbpqI:AddCheckbox("spearSnapLineEnabled", {
            ["Text"] = "เส้นชี้",
            ["Default"] = _1OUbnbM["spearSnapLineEnabled"],
            ["Callback"] = function(QIMDD)
                _1OUbnbM["spearSnapLineEnabled"] = QIMDD
            end,
        })
        qmoNOXxnbpqI:AddCheckbox("spearSnaplineShowText", {
            ["Text"] = "แสดงชื่อ/ระยะ",
            ["Default"] = _1OUbnbM["spearSnaplineShowText"],
            ["Callback"] = function(vINxXzo)
                _1OUbnbM["spearSnaplineShowText"] = vINxXzo
            end,
        })
        qmoNOXxnbpqI:AddSlider("spearFovRadius", {
            ["Text"] = "รัศมีมุมมองของหอก",
            ["Default"] = _1OUbnbM["spearFovRadius"],
            ["Min"] = 30,
            ["Max"] = 500,
            ["Rounding"] = 0,
            ["Callback"] = function(vNMlm)
                _1OUbnbM["spearFovRadius"] = vNMlm
            end,
        })
        qmoNOXxnbpqI:AddSlider("spearSnaplineMaxDistance", {
            ["Text"] = "ระยะเส้นชี้สูงสุด",
            ["Default"] = _1OUbnbM["spearSnaplineMaxDistance"],
            ["Min"] = 100,
            ["Max"] = 800,
            ["Rounding"] = 0,
            ["Callback"] = function(INquwMnM)
                _1OUbnbM["spearSnaplineMaxDistance"] = INquwMnM
            end,
        })
        qmoNOXxnbpqI:AddCheckbox("spearPrediction", {
            ["Text"] = "คาดการณ์เป้าหมายอัตโนมัติ",
            ["Default"] = _1OUbnbM["spearPrediction"],
            ["Callback"] = function(_NxulvMw)
                _1OUbnbM["spearPrediction"] = _NxulvMw
            end,
        })
        qmoNOXxnbpqI:AddSlider("spearVelocityLead", {
            ["Text"] = "ตัวคูณนำหน้าเป้าหมาย",
            ["Default"] = math.floor((_1OUbnbM["spearVelocityLead"] or 1.0) * 100),
            ["Min"] = 50,
            ["Max"] = 150,
            ["Rounding"] = 0,
            ["Callback"] = function(value)
                _1OUbnbM["spearVelocityLead"] = math.clamp(value / 100, 0.5, 1.5)
            end,
        })
        qmoNOXxnbpqI:AddCheckbox("spearDamping", {
            ["Text"] = "ป้องกันการหลบซ้ายขวา",
            ["Default"] = _1OUbnbM["spearDamping"],
            ["Callback"] = function(Iv1HnU_o)
                _1OUbnbM["spearDamping"] = Iv1HnU_o
            end,
        })
        HqnzDX1:AddCheckbox("alwaysFastVault", {
            ["Text"] = "ข้ามหน้าต่างไว",
            ["Default"] = _1OUbnbM["alwaysFastVault"],
            ["Callback"] = function(OUpWoMvqOqb1)
                _1OUbnbM["alwaysFastVault"] = OUpWoMvqOqb1
            end,
        })
        HqnzDX1:AddCheckbox("flowstateEnabled", {
            ["Text"] = "ข้ามหน้าต่างไว รุ่น 2",
            ["Default"] = _1OUbnbM["flowstateEnabled"],
            ["Callback"] = function(bbll0qXu)
                _1OUbnbM["flowstateEnabled"] = bbll0qXu
                local _NpMzWpqDo = Q_qlzpNO1["Character"]
                if _NpMzWpqDo then
                    _NpMzWpqDo["SetAttribute"](_NpMzWpqDo, "Flowstate", bbll0qXu)
                end
            end,
        })
        u0pwbvmwo:AddCheckbox("AutoSkillcheck", {
            ["Text"] = "ปั่นไฟอัตโนมัติ",
            ["Default"] = true,
            ["Callback"] = function(wIQWmlM1U)
                _1OUbnbM["AutoSkillcheck"] = wIQWmlM1U
            end,
        })
        u0pwbvmwo:AddCheckbox("HideSkillUI", {
            ["Text"] = "ซ่อนหน้าต่างปั่นไฟ",
            ["Default"] = _1OUbnbM["HideSkillUI"],
            ["Callback"] = function(DQOQxlnXQQbvI)
                _1OUbnbM["HideSkillUI"] = DQOQxlnXQQbvI
            end,
        })
        u0pwbvmwo:AddCheckbox("BoostGenBypass", {
            ["Text"] = "ข้ามข้อจำกัดเครื่องปั่นไฟ (ซ่อมเร็ว)",
            ["Default"] = false,
            ["Callback"] = function(lIWZXMvMl1NQo)
                pDUoZmnN["Enabled"] = lIWZXMvMl1NQo
                N_HqxOQvoIUOZn["Enabled"] = lIWZXMvMl1NQo
            end,
        })
        u0pwbvmwo:AddDropdown("SkillcheckModeDropdown", {
            ["Values"] = { "ปกติ", "สมบูรณ์แบบ", "ทันที" },
            ["Default"] = 1,
            ["Multi"] = false,
            ["Text"] = "โหมดปั่นไฟ",
            ["Callback"] = function(_XxmH)
                _1OUbnbM["AutoSkillcheckMode"] = ({
                    ["ปกติ"] = "Normal",
                    ["สมบูรณ์แบบ"] = "Perfect",
                    ["ทันที"] = "Instant",
                })[_XxmH] or "Normal"
            end,
        })
        u0pwbvmwo:AddDivider()
        u0pwbvmwo:AddCheckbox("AutoParry", {
            ["Text"] = "ปัดป้องอัตโนมัติ",
            ["Default"] = _1OUbnbM["SURV_AutoParry"],
            ["Callback"] = function(DwmQz1HlwUNwv)
                _1OUbnbM["SURV_AutoParry"] = DwmQz1HlwUNwv
            end,
        })
        u0pwbvmwo:AddCheckbox("ShowParryCircle", {
            ["Text"] = "แสดงระยะปัดป้อง",
            ["Default"] = _1OUbnbM["SURV_ShowParryCircle"],
            ["Callback"] = function(oN1llvxMXO_0)
                _1OUbnbM["SURV_ShowParryCircle"] = oN1llvxMXO_0
            end,
        })
        u0pwbvmwo:AddDropdown("ParryModeDropdown", {
            ["Values"] = { "ปกติ", "ดุดัน" },
            ["Default"] = 1,
            ["Multi"] = false,
            ["Text"] = "โหมดปัดป้อง",
            ["Callback"] = function(IXZMpW)
                _1OUbnbM["SURV_ParryMode"] = ({ ["ปกติ"] = "Normal", ["ดุดัน"] = "Aggressive" })[IXZMpW] or "Normal"
            end,
        })
        u0pwbvmwo:AddSlider("ParryDistance", {
            ["Text"] = "ระยะปัดป้อง",
            ["Default"] = _1OUbnbM["SURV_ParryDistance"],
            ["Min"] = 4,
            ["Max"] = 20,
            ["Rounding"] = 0,
            ["Callback"] = function(oZunM_I_X)
                _1OUbnbM["SURV_ParryDistance"] = oZunM_I_X
            end,
        })
        vXmuDWUpu:AddCheckbox("SilentAimEnabled", {
            ["Text"] = "เล็งเงียบ",
            ["Default"] = uMvUXlzW["Enabled"],
            ["Callback"] = function(IHDMODHxvpM)
                uMvUXlzW["Enabled"] = IHDMODHxvpM
            end,
        })
        vXmuDWUpu:AddDropdown("SilentAimTargetType", {
            ["Values"] = { "ฆาตกร", "ผู้รอดชีวิต", "ซอมบี้" },
            ["Default"] = 1,
            ["Multi"] = false,
            ["Text"] = "เลือกเป้าหมาย",
            ["Callback"] = function(vu1QOup)
                uMvUXlzW["TargetType"] = ({
                    ["ฆาตกร"] = "Killer",
                    ["ผู้รอดชีวิต"] = "Survivor",
                    ["ซอมบี้"] = "Zombie",
                })[vu1QOup] or "Killer"
            end,
        })
        _W0nln:AddToggle("ShowCustomCursor", {
            ["Text"] = "เคอร์เซอร์กำหนดเอง",
            ["Default"] = true,
            ["Callback"] = function(QHNwq1UU)
                QolwvD0XnWnzM["ShowCustomCursor"] = QHNwq1UU
            end,
        })
        _W0nln:AddButton("ปิดสคริปต์", function()
            QolwvD0XnWnzM:Unload()
        end)
        lZ0owHZMOqIImb:AddSlider("fillTransparency", {
            ["Text"] = "ความโปร่งใสพื้น",
            ["Default"] = 0.5,
            ["Min"] = 0,
            ["Max"] = 1,
            ["Rounding"] = 2,
            ["Callback"] = function(OMbllZ1_nuNXw)
                _1OUbnbM["fillTransparency"] = OMbllZ1_nuNXw
                MU_m1UmlXXDZ.RefreshAllPlayerESP()
            end,
        })
        MU_m1UmlXXDZ.DbHppHlnNWnb = boqNXvwmX["AddCheckbox"](boqNXvwmX, "espGeneratorEnabled", {
            ["Text"] = "แสดงข้อมูลเครื่องปั่นไฟ",
            ["Default"] = _1OUbnbM["espGeneratorEnabled"],
            ["Callback"] = function(pIWwMZDm_)
                _1OUbnbM["espGeneratorEnabled"] = pIWwMZDm_
                ESPGeneratorFunction12()
            end,
        })
        MU_m1UmlXXDZ.DbHppHlnNWnb:AddColorPicker("espGeneratorColor", {
            ["Title"] = "สีเครื่องปั่นไฟ",
            ["Default"] = _1OUbnbM["espGeneratorColor"],
            ["Callback"] = function(uMDvu0Xxqmnb)
                _1OUbnbM["espGeneratorColor"] = uMDvu0Xxqmnb
                ESPGeneratorFunction12()
            end,
        })
        boqNXvwmX:AddCheckbox("espGeneratorProgressGen", {
            ["Text"] = "ความคืบหน้าเครื่องปั่นไฟ",
            ["Default"] = _1OUbnbM["espGeneratorProgressGen"],
            ["Callback"] = function(HwDopuX_MqUqp)
                _1OUbnbM["espGeneratorProgressGen"] = HwDopuX_MqUqp
                ESPGeneratorFunction12()
            end,
        })
        boqNXvwmX:AddCheckbox("espGenShowPK", {
            ["Text"] = "แสดงจำนวนผู้เล่น/ฆาตกร",
            ["Default"] = _1OUbnbM["espGenShowPK"],
            ["Callback"] = function(l01vo)
                _1OUbnbM["espGenShowPK"] = l01vo
                ESPGeneratorFunction12()
            end,
        })
        MU_m1UmlXXDZ.qpDquolz = boqNXvwmX["AddCheckbox"](boqNXvwmX, "espWindowEnabled", {
            ["Text"] = "แสดงข้อมูลหน้าต่าง",
            ["Default"] = _1OUbnbM["espWindowEnabled"],
            ["Callback"] = function(NbXwM)
                _1OUbnbM["espWindowEnabled"] = NbXwM
                ESPGeneratorFunction12()
            end,
        })
        MU_m1UmlXXDZ.qpDquolz:AddColorPicker("espWindowColor", {
            ["Title"] = "สีหน้าต่าง",
            ["Default"] = _1OUbnbM["espWindowColor"],
            ["Callback"] = function(WpMmZ1UMnUDl)
                _1OUbnbM["espWindowColor"] = WpMmZ1UMnUDl
                ESPGeneratorFunction12()
            end,
        })
        MU_m1UmlXXDZ.u0Mq_zZ = boqNXvwmX["AddCheckbox"](boqNXvwmX, "espPalletEnabled", {
            ["Text"] = "แสดงข้อมูลแผงไม้",
            ["Default"] = _1OUbnbM["espPalletEnabled"],
            ["Callback"] = function(WOmzDW)
                _1OUbnbM["espPalletEnabled"] = WOmzDW
                ESPGeneratorFunction12()
            end,
        })
        MU_m1UmlXXDZ.u0Mq_zZ:AddColorPicker("espPalletColor", {
            ["Title"] = "สีแผงไม้",
            ["Default"] = _1OUbnbM["espPalletColor"],
            ["Callback"] = function(omovW_mXbp1)
                _1OUbnbM["espPalletColor"] = omovW_mXbp1
                ESPGeneratorFunction12()
            end,
        })
        MU_m1UmlXXDZ._ZxuMnvZzHo_ = boqNXvwmX["AddCheckbox"](boqNXvwmX, "espHookEnabled", {
            ["Text"] = "แสดงข้อมูลตะขอ",
            ["Default"] = _1OUbnbM["espHookEnabled"],
            ["Callback"] = function(MNZIU)
                _1OUbnbM["espHookEnabled"] = MNZIU
                ESPGeneratorFunction12()
            end,
        })
        MU_m1UmlXXDZ._ZxuMnvZzHo_:AddColorPicker("espHookColor", {
            ["Title"] = "สีตะขอ",
            ["Default"] = _1OUbnbM["espHookColor"],
            ["Callback"] = function(BNpQ_UU)
                _1OUbnbM["espHookColor"] = BNpQ_UU
                ESPGeneratorFunction12()
            end,
        })
        MU_m1UmlXXDZ.DunoO = boqNXvwmX["AddCheckbox"](boqNXvwmX, "espGateEnabled", {
            ["Text"] = "แสดงข้อมูลประตูทางออก",
            ["Default"] = _1OUbnbM["espGateEnabled"],
            ["Callback"] = function(_vmlnuwXQQo)
                _1OUbnbM["espGateEnabled"] = _vmlnuwXQQo
                ESPGeneratorFunction12()
            end,
        })
        MU_m1UmlXXDZ.DunoO:AddColorPicker("espGateColor", {
            ["Title"] = "สีประตู",
            ["Default"] = _1OUbnbM["espGateColor"],
            ["Callback"] = function(WqZ0olwDM)
                _1OUbnbM["espGateColor"] = WqZ0olwDM
                ESPGeneratorFunction12()
            end,
        })
        -- Fake Parry: เล่นแอนิเมชันหลอกฝั่ง client เท่านั้น ไม่ได้ส่งคำขอ Parry จริง
        local ZeroFakeParryAnimations = {
            Enten = "rbxassetid://127096285501517",
            Stopwatch = "rbxassetid://81793464499285",
            Fih = "rbxassetid://123307242865945",
            BloodShield = "rbxassetid://75939529748815",
        }
        local ZeroFakeParry = {
            Gui = nil,
            Button = nil,
            Track = nil,
            Dragging = false,
            DragStart = nil,
            DragStartPos = nil,
            Connections = {},
        }
        local function ZeroFakeParryDisconnect()
            for _, connection in ipairs(ZeroFakeParry.Connections) do
                pcall(function()
                    connection:Disconnect()
                end)
            end
            table.clear(ZeroFakeParry.Connections)
        end
        local function ZeroFakeParryParent()
            if gethui then
                local ok, result = pcall(gethui)
                if ok and result then
                    return result
                end
            end
            local ok, result = pcall(function()
                return game:GetService("CoreGui")
            end)
            if ok and result then
                return result
            end
            return Q_qlzpNO1:FindFirstChild("PlayerGui")
        end
        local function ZeroPlayFakeParry()
            if not _1OUbnbM["SURV_FakeParry"] then
                return
            end
            local character = Q_qlzpNO1.Character
            local humanoid = character and character:FindFirstChildOfClass("Humanoid")
            if not humanoid then
                return
            end
            pcall(function()
                if ZeroFakeParry.Track then
                    ZeroFakeParry.Track:Stop()
                end
                local animator = humanoid:FindFirstChildOfClass("Animator") or Instance.new("Animator")
                animator.Parent = humanoid
                local animation = Instance.new("Animation")
                animation.AnimationId = ZeroFakeParryAnimations[_1OUbnbM["SURV_FakeParryAnim"]] or ZeroFakeParryAnimations.Enten
                local track = animator:LoadAnimation(animation)
                track.Priority = Enum.AnimationPriority.Action
                track:Play()
                ZeroFakeParry.Track = track
                track.Stopped:Connect(function()
                    if ZeroFakeParry.Track == track then
                        ZeroFakeParry.Track = nil
                    end
                    animation:Destroy()
                end)
            end)
        end
        local function ZeroFakeParryCreateButton()
            local parent = ZeroFakeParryParent()
            if not parent then
                return
            end
            ZeroFakeParryDisconnect()
            local old = parent:FindFirstChild("ZeroHubFakeParryUI")
            if old then
                old:Destroy()
            end
            ZeroFakeParry.Gui = Instance.new("ScreenGui")
            ZeroFakeParry.Gui.Name = "ZeroHubFakeParryUI"
            ZeroFakeParry.Gui.ResetOnSpawn = false
            ZeroFakeParry.Gui.IgnoreGuiInset = true
            ZeroFakeParry.Gui.DisplayOrder = 9997
            ZeroFakeParry.Gui.Parent = parent
            local button = Instance.new("TextButton")
            button.Name = "FakeParryButton"
            button.Size = UDim2.fromOffset(64, 64)
            button.Position = UDim2.new(0.30, 0, 0.75, 0)
            button.AnchorPoint = Vector2.new(0.5, 0.5)
            button.BackgroundColor3 = Color3.fromRGB(20, 0, 30)
            button.BackgroundTransparency = 0.15
            button.Text = "FAKE\nPARRY"
            button.TextColor3 = Color3.fromRGB(210, 160, 255)
            button.TextScaled = true
            button.Font = Enum.Font.GothamBlack
            button.Visible = _1OUbnbM["SURV_FakeParry"] == true
            button.ZIndex = 10
            button.Parent = ZeroFakeParry.Gui
            Instance.new("UICorner", button).CornerRadius = UDim.new(1, 0)
            local stroke = Instance.new("UIStroke", button)
            stroke.Color = Color3.fromRGB(150, 70, 255)
            stroke.Thickness = 2
            ZeroFakeParry.Button = button
            table.insert(ZeroFakeParry.Connections, button.Activated:Connect(ZeroPlayFakeParry))
            table.insert(
                ZeroFakeParry.Connections,
                button.InputBegan:Connect(function(input)
                    if _1OUbnbM["SURV_FakeParryLocked"] then
                        return
                    end
                    if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
                        ZeroFakeParry.Dragging = true
                        ZeroFakeParry.DragStart = input.Position
                        ZeroFakeParry.DragStartPos = button.Position
                    end
                end)
            )
            table.insert(
                ZeroFakeParry.Connections,
                button.InputEnded:Connect(function(input)
                    if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
                        ZeroFakeParry.Dragging = false
                    end
                end)
            )
            table.insert(
                ZeroFakeParry.Connections,
                game:GetService("UserInputService").InputChanged:Connect(function(input)
                    if
                        ZeroFakeParry.Dragging
                        and not _1OUbnbM["SURV_FakeParryLocked"]
                        and (input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch)
                    then
                        local delta = input.Position - ZeroFakeParry.DragStart
                        button.Position = UDim2.new(
                            ZeroFakeParry.DragStartPos.X.Scale,
                            ZeroFakeParry.DragStartPos.X.Offset + delta.X,
                            ZeroFakeParry.DragStartPos.Y.Scale,
                            ZeroFakeParry.DragStartPos.Y.Offset + delta.Y
                        )
                    end
                end)
            )
            table.insert(
                ZeroFakeParry.Connections,
                game:GetService("UserInputService").InputBegan:Connect(function(input, gameProcessed)
                    if not gameProcessed and input.KeyCode == Enum.KeyCode.V then
                        ZeroPlayFakeParry()
                    end
                end)
            )
        end
        local function ZeroFakeParrySetEnabled(enabled)
            _1OUbnbM["SURV_FakeParry"] = enabled == true
            if not ZeroFakeParry.Button or not ZeroFakeParry.Button.Parent then
                ZeroFakeParryCreateButton()
            end
            if ZeroFakeParry.Button then
                ZeroFakeParry.Button.Visible = _1OUbnbM["SURV_FakeParry"]
            end
        end
        ZeroFakeParryCreateButton()
        task.spawn(function()
            while not _1OUbnbM["Destroyed"] do
                task.wait(0.5)
                if _1OUbnbM["SURV_FakeParry"] and (not ZeroFakeParry.Gui or not ZeroFakeParry.Gui.Parent or not ZeroFakeParry.Button or not ZeroFakeParry.Button.Parent) then
                    pcall(ZeroFakeParryCreateButton)
                end
            end
        end)

        OwQuNnzv:AddCheckbox("FakeParryToggle", {
            ["Text"] = "แพรีปลอม (กด V / ปุ่มบนจอ)",
            ["Default"] = _1OUbnbM["SURV_FakeParry"] == true,
            ["Callback"] = function(enabled)
                ZeroFakeParrySetEnabled(enabled)
            end,
        })
        OwQuNnzv:AddDropdown("FakeParryAnimation", {
            ["Values"] = { "Enten", "Stopwatch", "Fih", "BloodShield" },
            ["Default"] = _1OUbnbM["SURV_FakeParryAnim"] or "Enten",
            ["Multi"] = false,
            ["Text"] = "แอนิเมชันแพรีปลอม",
            ["Callback"] = function(value)
                _1OUbnbM["SURV_FakeParryAnim"] = value
            end,
        })
        OwQuNnzv:AddCheckbox("FakeParryLock", {
            ["Text"] = "ล็อกตำแหน่งปุ่มแพรีปลอม",
            ["Default"] = _1OUbnbM["SURV_FakeParryLocked"] == true,
            ["Callback"] = function(locked)
                _1OUbnbM["SURV_FakeParryLocked"] = locked == true
            end,
        })
        OwQuNnzv:AddCheckbox("NoclipToggle", {
            ["Text"] = "เดินทะลุ",
            ["Default"] = _1OUbnbM["noclipEnabled"],
            ["Callback"] = function(WZlMI)
                _1OUbnbM["noclipEnabled"] = WZlMI
                if not WZlMI then
                    DisableNoclip()
                end
            end,
        })
        OwQuNnzv:AddCheckbox("godMode", {
            ["Text"] = "กันล้ม/น็อคดาวน์",
            ["Default"] = _1OUbnbM["godMode"],
            ["Callback"] = function(Oo10UZpmZXUq)
                _1OUbnbM["godMode"] = Oo10UZpmZXUq
                MU_m1UmlXXDZ.ApplyCombatModifiers()
            end,
        })
        OwQuNnzv:AddCheckbox("AntiFallDamageToggle", {
            ["Text"] = "ป้องกันความเสียหายจากการตก",
            ["Default"] = _1OUbnbM["antiFallDamage"],
            ["Callback"] = function(qQObHzX)
                _1OUbnbM["antiFallDamage"] = qQObHzX
            end,
        })
        OwQuNnzv:AddCheckbox("VaultSpeedToggle", {
            ["Text"] = "ข้ามสิ่งกีดขวางไว",
            ["Default"] = _1OUbnbM["vaultSpeedEnabled"],
            ["Callback"] = function(bqwmO_WzbIOn1u)
                _1OUbnbM["vaultSpeedEnabled"] = bqwmO_WzbIOn1u
            end,
        })
        OwQuNnzv:AddCheckbox("SpeedHackToggle", {
            ["Text"] = "วิ่งเร็ว",
            ["Default"] = _1OUbnbM["speedHackEnabled"],
            ["Callback"] = function(bOZx_oQ)
                _1OUbnbM["speedHackEnabled"] = bOZx_oQ
                if not bOZx_oQ then
                    local QUuZQ = Q_qlzpNO1["Character"]
                    local _QWb1DDnbD = QUuZQ and QUuZQ["FindFirstChildOfClass"](QUuZQ, "Humanoid")
                    if _QWb1DDnbD then
                        _QWb1DDnbD["WalkSpeed"] = 16
                    end
                end
            end,
        })
        OwQuNnzv:AddDivider()
        OwQuNnzv:AddSlider("VaultSpeedSlider", {
            ["Text"] = "ความเร็วการปีนข้าม",
            ["Default"] = _1OUbnbM["vaultSpeedValue"],
            ["Min"] = 1.0,
            ["Max"] = 3.0,
            ["Rounding"] = 1,
            ["Callback"] = function(D_ZODOXOpqDv)
                _1OUbnbM["vaultSpeedValue"] = D_ZODOXOpqDv
            end,
        })
        OwQuNnzv:AddSlider("SpeedValueSlider", {
            ["Text"] = "วิ่งเร็วระดับความเร็ว",
            ["Default"] = _1OUbnbM["speedValue"],
            ["Min"] = 16,
            ["Max"] = 60,
            ["Rounding"] = 0,
            ["Callback"] = function(uzmIMbom1MmnZM)
                _1OUbnbM["speedValue"] = uzmIMbom1MmnZM
            end,
        })
        MU_m1UmlXXDZ.Qnz0DQWnZ1 = OnOquOxzu["Combat"]:AddLeftGroupbox("แสงและสภาพอากาศ", "cloud-rain")
        MU_m1UmlXXDZ.Qnz0DQWnZ1:AddDropdown("WeatherThemeDropdown", {
            ["Values"] = {
                "ค่าเริ่มต้น",
                "คริสต์มาส (หิมะ)",
                "ฝนตกหนัก (พายุ)",
                "ซากุระ",
                "พระจันทร์สีเลือด (น่ากลัว)",
                "เที่ยงคืน (มืดสนิท)",
            },
            ["Default"] = 1,
            ["Multi"] = false,
            ["Text"] = "ธีมอากาศและท้องฟ้า",
            ["Callback"] = function(Hu0WOQnomwo)
                local _weatherMap = {
                    ["ค่าเริ่มต้น"] = "Default",
                    ["คริสต์มาส (หิมะ)"] = "Christmas (Snow)",
                    ["ฝนตกหนัก (พายุ)"] = "Heavy Rain (Storm)",
                    ["ซากุระ"] = "Cherry Blossom (Sakura)",
                    ["พระจันทร์สีเลือด (น่ากลัว)"] = "Blood Moon (Spooky)",
                    ["เที่ยงคืน (มืดสนิท)"] = "Midnight (Pitch Black)",
                }
                _1OUbnbM["VIS_WeatherTheme"] = _weatherMap[Hu0WOQnomwo] or "Default"
                VD_ApplyWeather(_1OUbnbM["VIS_WeatherTheme"])
            end,
        })
        MU_m1UmlXXDZ.Qnz0DQWnZ1:AddCheckbox("FullbrightToggle", {
            ["Text"] = "สว่างทั่วแมพ",
            ["Default"] = _1OUbnbM["Fullbright"],
            ["Callback"] = function(WuHp_ZDqunUIx)
                _1OUbnbM["Fullbright"] = WuHp_ZDqunUIx
            end,
        })
        MU_m1UmlXXDZ.Qnz0DQWnZ1:AddCheckbox("NoFogToggle", {
            ["Text"] = "ลบหมอก",
            ["Default"] = _1OUbnbM["NO_Fog"],
            ["Callback"] = function(DWnpvWXoNHllM)
                _1OUbnbM["NO_Fog"] = DWnpvWXoNHllM
                if DWnpvWXoNHllM then
                    Lighting["FogEnd"] = 100000
                    Lighting["FogStart"] = 0
                end
            end,
        })
        MU_m1UmlXXDZ.Qnz0DQWnZ1:AddDivider()
        MU_m1UmlXXDZ.Qnz0DQWnZ1:AddCheckbox("FPSBoosterToggle", {
            ["Text"] = "เพิ่ม FPS (โหมดลื่นขึ้น)",
            ["Default"] = _1OUbnbM["fpsBoosterEnabled"],
            ["Callback"] = function(vlv1z)
                _1OUbnbM["fpsBoosterEnabled"] = vlv1z
                if vlv1z then
                    ApplyFPSBooster()
                    QolwvD0XnWnzM:Notify("เปิดใช้โหมดเพิ่ม FPS แล้ว (ช่วยให้ลื่นขึ้น)", 3)
                else
                    RevertFPSBooster()
                    QolwvD0XnWnzM:Notify("ปิดโหมดเพิ่ม FPS แล้ว", 3)
                end
            end,
        })
        MU_m1UmlXXDZ.Qnz0DQWnZ1:AddCheckbox("ClayModeToggle", {
            ["Text"] = "โหมดภาพดินน้ำมัน",
            ["Default"] = _1OUbnbM["clayModeEnabled"],
            ["Callback"] = function(wDwwN_)
                _1OUbnbM["clayModeEnabled"] = wDwwN_
                if wDwwN_ then
                    ApplyClayMode()
                    QolwvD0XnWnzM:Notify("เปิดใช้โหมดดินน้ำมันแล้ว", 3)
                else
                    RevertClayMode()
                    QolwvD0XnWnzM:Notify("ปิดโหมดดินน้ำมัน", 3)
                end
            end,
        })
        QnuUXmzQ:AddCheckbox("aimbotEnabled", {
            ["Text"] = "ล็อคเป้า",
            ["Default"] = _1OUbnbM["aimbotEnabled"],
            ["Callback"] = function(HDnlIom0ZI)
                _1OUbnbM["aimbotEnabled"] = HDnlIom0ZI
            end,
        })
        QnuUXmzQ:AddCheckbox("aimbotThroughWall", {
            ["Text"] = "เช็คกำแพง",
            ["Default"] = _1OUbnbM["aimbotThroughWall"],
            ["Callback"] = function(_wbwDwxOmN)
                _1OUbnbM["aimbotThroughWall"] = _wbwDwxOmN
            end,
        })
        QnuUXmzQ:AddCheckbox("aimbotPredict", {
            ["Text"] = "การทำนาย/เคลื่อนที่",
            ["Default"] = _1OUbnbM["aimbotPredict"],
            ["Callback"] = function(MHlqmHQQl1)
                _1OUbnbM["aimbotPredict"] = MHlqmHQQl1
            end,
        })
        QnuUXmzQ:AddDropdown("aimbotTargetMode", {
            ["Values"] = { "ฆาตกร", "ผู้รอดชีวิต", "SCP" },
            ["Default"] = 1,
            ["Multi"] = false,
            ["Text"] = "เป้าหมายเล็งอัตโนมัติ",
            ["Callback"] = function(ponomOIuqH)
                _1OUbnbM["aimbotTargetMode"] = ({ ["ฆาตกร"] = "Killer", ["ผู้รอดชีวิต"] = "Survivor", ["SCP"] = "SCP" })[ponomOIuqH] or "Killer"
            end,
        })
        QnuUXmzQ:AddSlider("aimbotFOV", {
            ["Text"] = "ระยะวงมุมมอง",
            ["Default"] = _1OUbnbM["aimbotFOV"],
            ["Min"] = 50,
            ["Max"] = 600,
            ["Rounding"] = 0,
            ["Callback"] = function(oznmXX1xDZmU)
                _1OUbnbM["aimbotFOV"] = oznmXX1xDZmU
            end,
        })
        QnuUXmzQ:AddSlider("aimbotStrength", {
            ["Text"] = "ดูด ล็อค",
            ["Default"] = _1OUbnbM["aimbotStrength"],
            ["Min"] = 0.1,
            ["Max"] = 1,
            ["Rounding"] = 2,
            ["Callback"] = function(BZuH01uzW0Wn)
                _1OUbnbM["aimbotStrength"] = BZuH01uzW0Wn
            end,
        })
        -- Hook Counter: แสดงจำนวนครั้งที่ผู้เล่นถูกแขวนตะขอบนไอคอน Survivor
        local ZeroHookCounterState = { Enabled = false, Connection = nil }
        local function ZeroHookCounterFindPlayer(displayedName)
            for _, player in ipairs(game:GetService("Players"):GetPlayers()) do
                if player.Name == displayedName or player.DisplayName == displayedName then
                    return player
                end
            end
            return nil
        end
        local function ZeroHookCounterUpdate(enabled)
            local playerGui = Q_qlzpNO1:FindFirstChild("PlayerGui")
            if not playerGui then
                return
            end
            for _, gui in ipairs(playerGui:GetChildren()) do
                if gui:IsA("ScreenGui") and gui.Name:match("%-mob$") then
                    local frame = gui:FindFirstChild("Frame")
                    if frame then
                        for index = 1, 5 do
                            local survivorFrame = frame:FindFirstChild("Survivor" .. index)
                            local imageLabel = survivorFrame and survivorFrame:FindFirstChild("ImageLabel")
                            local textLabel = survivorFrame and survivorFrame:FindFirstChild("TextLabel")
                            if imageLabel and textLabel then
                                local customLabel = imageLabel:FindFirstChild("ZeroHookCounterLabel")
                                if enabled then
                                    local player = ZeroHookCounterFindPlayer(textLabel.Text)
                                    local hookCount = 0
                                    if player then
                                        hookCount = tonumber(player:GetAttribute("HookCount")) or tonumber(player.Character and player.Character:GetAttribute("HookCount")) or 0
                                    end
                                    if not customLabel then
                                        customLabel = Instance.new("TextLabel")
                                        customLabel.Name = "ZeroHookCounterLabel"
                                        customLabel.Size = UDim2.new(1, 0, 0.35, 0)
                                        customLabel.Position = UDim2.new(0, 0, 0.65, 0)
                                        customLabel.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
                                        customLabel.BackgroundTransparency = 0.5
                                        customLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
                                        customLabel.TextStrokeColor3 = Color3.fromRGB(0, 0, 0)
                                        customLabel.TextStrokeTransparency = 0
                                        customLabel.TextScaled = true
                                        customLabel.Font = Enum.Font.SourceSansBold
                                        customLabel.ZIndex = (imageLabel.ZIndex or 1) + 2
                                        customLabel.Parent = imageLabel
                                    end
                                    customLabel.Visible = true
                                    if hookCount >= 3 then
                                        customLabel.Text = "DEAD"
                                        customLabel.TextColor3 = Color3.fromRGB(255, 75, 75)
                                    else
                                        customLabel.Text = "Hooks: " .. tostring(hookCount)
                                        customLabel.TextColor3 = hookCount == 2 and Color3.fromRGB(255, 140, 0)
                                            or hookCount == 1 and Color3.fromRGB(255, 215, 0)
                                            or Color3.fromRGB(255, 255, 255)
                                    end
                                elseif customLabel then
                                    customLabel.Visible = false
                                end
                            end
                        end
                    end
                end
            end
        end
        local function ZeroHookCounterSetEnabled(enabled)
            ZeroHookCounterState.Enabled = enabled == true
            _1OUbnbM["VIS_ShowHookCounter"] = ZeroHookCounterState.Enabled
            if ZeroHookCounterState.Enabled then
                ZeroHookCounterUpdate(true)
                if not ZeroHookCounterState.Connection then
                    ZeroHookCounterState.Connection = WwNbnqHIQwppl.Heartbeat:Connect(function()
                        if ZeroHookCounterState.Enabled then
                            ZeroHookCounterUpdate(true)
                        end
                    end)
                end
            else
                if ZeroHookCounterState.Connection then
                    ZeroHookCounterState.Connection:Disconnect()
                    ZeroHookCounterState.Connection = nil
                end
                ZeroHookCounterUpdate(false)
            end
        end

        -- Radar: แผนที่ย่อแบบจุด แสดงตำแหน่งผู้เล่นและวัตถุรอบตัว
        local ZeroRadar = {
            Gui = nil,
            Frame = nil,
            PlayerDots = {},
            ObjectDots = {},
            Connection = nil,
            Colors = {
                Killer = Color3.fromRGB(255, 60, 60),
                Survivor = Color3.fromRGB(255, 170, 60),
                Generator = Color3.fromRGB(255, 140, 0),
                Pallet = Color3.fromRGB(53, 189, 166),
                Hook = Color3.fromRGB(252, 116, 116),
                Gate = Color3.fromRGB(100, 200, 255),
                Window = Color3.fromRGB(80, 160, 255),
                Zombie = Color3.fromRGB(150, 255, 50),
            },
        }
        local function ZeroRadarParent()
            if gethui then
                local ok, result = pcall(gethui)
                if ok and result then
                    return result
                end
            end
            local ok, result = pcall(function()
                return game:GetService("CoreGui")
            end)
            if ok and result then
                return result
            end
            return Q_qlzpNO1:FindFirstChild("PlayerGui")
        end
        local function ZeroRadarDestroy()
            if ZeroRadar.Connection then
                pcall(function()
                    ZeroRadar.Connection:Disconnect()
                end)
                ZeroRadar.Connection = nil
            end
            if ZeroRadar.Gui then
                pcall(function()
                    ZeroRadar.Gui:Destroy()
                end)
            end
            ZeroRadar.Gui = nil
            ZeroRadar.Frame = nil
            ZeroRadar.PlayerDots = {}
            ZeroRadar.ObjectDots = {}
        end
        local function ZeroRadarCreate()
            local parent = ZeroRadarParent()
            if not parent then
                return false
            end
            if ZeroRadar.Gui then
                pcall(function()
                    ZeroRadar.Gui:Destroy()
                end)
            end
            ZeroRadar.Gui = Instance.new("ScreenGui")
            ZeroRadar.Gui.Name = "ZeroHubRadarGUI"
            ZeroRadar.Gui.ResetOnSpawn = false
            ZeroRadar.Gui.IgnoreGuiInset = true
            ZeroRadar.Gui.DisplayOrder = 9998
            ZeroRadar.Gui.Parent = parent
            local frame = Instance.new("Frame")
            frame.Name = "RadarFrame"
            frame.Size = UDim2.fromOffset(_1OUbnbM["RADAR_Size"] or 170, _1OUbnbM["RADAR_Size"] or 170)
            frame.Position = UDim2.fromOffset(12, 120)
            frame.BackgroundColor3 = Color3.fromRGB(10, 10, 10)
            frame.BackgroundTransparency = 1 - (_1OUbnbM["RADAR_Transparency"] or 0.2)
            frame.Active = true
            frame.Draggable = true
            frame.Parent = ZeroRadar.Gui
            ZeroRadar.Frame = frame
            local corner = Instance.new("UICorner")
            corner.CornerRadius = UDim.new(1, 0)
            corner.Parent = frame
            local stroke = Instance.new("UIStroke")
            stroke.Color = Color3.fromRGB(255, 60, 60)
            stroke.Thickness = 2
            stroke.Parent = frame
            local title = Instance.new("TextLabel")
            title.Name = "Title"
            title.Size = UDim2.new(1, 0, 0, 18)
            title.BackgroundTransparency = 1
            title.Text = "ZeroHUB RADAR"
            title.TextColor3 = Color3.fromRGB(255, 255, 255)
            title.TextSize = 11
            title.Font = Enum.Font.SourceSansBold
            title.Parent = frame
            local horizontal = Instance.new("Frame")
            horizontal.Size = UDim2.new(1, -30, 0, 1)
            horizontal.Position = UDim2.new(0, 15, 0.5, 0)
            horizontal.BackgroundColor3 = Color3.fromRGB(75, 75, 75)
            horizontal.BorderSizePixel = 0
            horizontal.Parent = frame
            local vertical = Instance.new("Frame")
            vertical.Size = UDim2.new(0, 1, 1, -30)
            vertical.Position = UDim2.new(0.5, 0, 0, 15)
            vertical.BackgroundColor3 = Color3.fromRGB(75, 75, 75)
            vertical.BorderSizePixel = 0
            vertical.Parent = frame
            local center = Instance.new("Frame")
            center.Size = UDim2.fromOffset(7, 7)
            center.Position = UDim2.new(0.5, -3.5, 0.5, -3.5)
            center.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
            center.BorderSizePixel = 0
            center.Parent = frame
            local centerCorner = Instance.new("UICorner")
            centerCorner.CornerRadius = UDim.new(1, 0)
            centerCorner.Parent = center
            local rangeLabel = Instance.new("TextLabel")
            rangeLabel.Name = "Range"
            rangeLabel.Size = UDim2.new(1, 0, 0, 14)
            rangeLabel.Position = UDim2.new(0, 0, 1, -15)
            rangeLabel.BackgroundTransparency = 1
            rangeLabel.TextColor3 = Color3.fromRGB(210, 210, 210)
            rangeLabel.TextSize = 10
            rangeLabel.Text = "Range: " .. tostring(_1OUbnbM["RADAR_Range"] or 250)
            rangeLabel.Parent = frame
            for _ = 1, 30 do
                local dot = Instance.new("Frame")
                dot.Size = UDim2.fromOffset(6, 6)
                dot.BorderSizePixel = 0
                dot.Visible = false
                dot.Parent = frame
                local dotCorner = Instance.new("UICorner")
                dotCorner.CornerRadius = UDim.new(1, 0)
                dotCorner.Parent = dot
                table.insert(ZeroRadar.PlayerDots, dot)
            end
            for _ = 1, 100 do
                local dot = Instance.new("Frame")
                dot.Size = UDim2.fromOffset(5, 5)
                dot.BorderSizePixel = 0
                dot.Visible = false
                dot.Parent = frame
                local dotCorner = Instance.new("UICorner")
                dotCorner.CornerRadius = UDim.new(1, 0)
                dotCorner.Parent = dot
                table.insert(ZeroRadar.ObjectDots, dot)
            end
            return true
        end
        local function ZeroRadarUpdate()
            if not _1OUbnbM["RADAR_Enabled"] then
                if ZeroRadar.Gui then
                    ZeroRadar.Gui.Enabled = false
                end
                return
            end
            if not ZeroRadar.Gui or not ZeroRadar.Frame or not ZeroRadar.Gui.Parent then
                if not ZeroRadarCreate() then
                    return
                end
            end
            ZeroRadar.Gui.Enabled = true
            local root = Q_qlzpNO1.Character and Q_qlzpNO1.Character:FindFirstChild("HumanoidRootPart")
            local camera = workspace.CurrentCamera
            if not root or not camera then
                return
            end
            local size = _1OUbnbM["RADAR_Size"] or 170
            local range = math.max(25, _1OUbnbM["RADAR_Range"] or 250)
            ZeroRadar.Frame.Size = UDim2.fromOffset(size, size)
            ZeroRadar.Frame.BackgroundTransparency = 1 - (_1OUbnbM["RADAR_Transparency"] or 0.2)
            local rangeLabel = ZeroRadar.Frame:FindFirstChild("Range")
            if rangeLabel then
                rangeLabel.Text = "Range: " .. tostring(range)
            end
            for _, dot in ipairs(ZeroRadar.PlayerDots) do
                dot.Visible = false
            end
            for _, dot in ipairs(ZeroRadar.ObjectDots) do
                dot.Visible = false
            end
            local half = size / 2
            local usable = half - 8
            local look = camera.CFrame.LookVector
            local angle = math.atan2(-look.X, -look.Z)
            local cosAngle, sinAngle = math.cos(angle), math.sin(angle)
            local origin = root.Position
            local function toRadar(position)
                local dx, dz = position.X - origin.X, position.Z - origin.Z
                local distance = math.sqrt(dx * dx + dz * dz)
                if distance > range then
                    return nil
                end
                local x = (dx * cosAngle - dz * sinAngle) * usable / range
                local y = (dx * sinAngle + dz * cosAngle) * usable / range
                return Vector2.new(half + math.clamp(x, -usable, usable), half + math.clamp(y, -usable, usable))
            end
            local playerIndex = 1
            local objectIndex = 1
            local function addObject(position, color, dotSize)
                local point = toRadar(position)
                local dot = ZeroRadar.ObjectDots[objectIndex]
                if point and dot then
                    dot.Size = UDim2.fromOffset(dotSize, dotSize)
                    dot.Position = UDim2.fromOffset(point.X - dotSize / 2, point.Y - dotSize / 2)
                    dot.BackgroundColor3 = color
                    dot.Visible = true
                    objectIndex = objectIndex + 1
                end
            end
            for _, player in ipairs(game:GetService("Players"):GetPlayers()) do
                if player ~= Q_qlzpNO1 and player.Character then
                    local playerRoot = player.Character:FindFirstChild("HumanoidRootPart")
                    local isKiller = player.Team and player.Team.Name == "Killer"
                    local show = (isKiller and _1OUbnbM["RADAR_ShowKiller"]) or ((not isKiller) and _1OUbnbM["RADAR_ShowSurvivor"])
                    local point = playerRoot and show and toRadar(playerRoot.Position)
                    local dot = ZeroRadar.PlayerDots[playerIndex]
                    if point and dot then
                        dot.Size = UDim2.fromOffset(isKiller and 8 or 6, isKiller and 8 or 6)
                        dot.Position = UDim2.fromOffset(point.X - dot.Size.X.Offset / 2, point.Y - dot.Size.Y.Offset / 2)
                        dot.BackgroundColor3 = isKiller and ZeroRadar.Colors.Killer or ZeroRadar.Colors.Survivor
                        dot.Visible = true
                        playerIndex = playerIndex + 1
                    end
                end
            end
            local cache = lopX_WWOqz["cachedMapObjects"] or {}
            local function addCache(kind, enabled, color, dotSize)
                if not enabled then
                    return
                end
                for _, entry in ipairs(cache[kind] or {}) do
                    if entry.part and entry.part.Parent then
                        addObject(entry.part.Position, color, dotSize)
                    end
                end
            end
            addCache("Generators", _1OUbnbM["RADAR_ShowGenerator"], ZeroRadar.Colors.Generator, 6)
            addCache("Pallets", _1OUbnbM["RADAR_ShowPallet"], ZeroRadar.Colors.Pallet, 5)
            addCache("Hooks", _1OUbnbM["RADAR_ShowHook"], ZeroRadar.Colors.Hook, 6)
            addCache("Gates", _1OUbnbM["RADAR_ShowGate"], ZeroRadar.Colors.Gate, 6)
            if _1OUbnbM["RADAR_ShowWindow"] then
                for _, part in ipairs(lopX_WWOqz["_windowParts"] or {}) do
                    if part and part.Parent then
                        addObject(part.Position, ZeroRadar.Colors.Window, 5)
                    end
                end
            end
            if _1OUbnbM["RADAR_ShowZombie"] then
                for model in pairs(lopX_WWOqz["scpEspObjects"] or {}) do
                    local part = model and (model:FindFirstChild("HumanoidRootPart") or model.PrimaryPart or model:FindFirstChildWhichIsA("BasePart"))
                    if part then
                        addObject(part.Position, ZeroRadar.Colors.Zombie, 6)
                    end
                end
            end
        end
        local function ZeroRadarSetEnabled(enabled)
            _1OUbnbM["RADAR_Enabled"] = enabled == true
            if _1OUbnbM["RADAR_Enabled"] then
                ZeroRadarUpdate()
                if not ZeroRadar.Connection then
                    ZeroRadar.Connection = WwNbnqHIQwppl.Heartbeat:Connect(ZeroRadarUpdate)
                end
            else
                if ZeroRadar.Connection then
                    ZeroRadar.Connection:Disconnect()
                    ZeroRadar.Connection = nil
                end
                if ZeroRadar.Gui then
                    ZeroRadar.Gui.Enabled = false
                end
            end
        end

        Qu_DllDmwuuI:AddCheckbox("killerShowName", {
            ["Text"] = "ฆาตกร: แสดงชื่อ",
            ["Default"] = _1OUbnbM["killerShowName"],
            ["Callback"] = function(ovwmXZW0zwxIq)
                _1OUbnbM["killerShowName"] = ovwmXZW0zwxIq
                MU_m1UmlXXDZ.UpdateESPDistanceLabels()
            end,
        })
        MU_m1UmlXXDZ.pNHNzUpOoNnu = Qu_DllDmwuuI["AddCheckbox"](Qu_DllDmwuuI, "killerShowOutline", {
            ["Text"] = "ฆาตกร: แสดงเส้นขอบ",
            ["Default"] = _1OUbnbM["killerShowOutline"],
            ["Callback"] = function(Nb0ooqoQQoZxDl)
                _1OUbnbM["killerShowOutline"] = Nb0ooqoQQoZxDl
                HZMloNIWlXUUu()
                MU_m1UmlXXDZ.UpdateESPDistanceLabels()
            end,
        })
        MU_m1UmlXXDZ.pNHNzUpOoNnu:AddColorPicker("killerColor", {
            ["Title"] = "สีฆาตกร",
            ["Default"] = _1OUbnbM["killerColor"],
            ["Callback"] = function(vXxHuI)
                _1OUbnbM["killerColor"] = vXxHuI
                MU_m1UmlXXDZ.UpdateESPDistanceLabels()
            end,
        })
        Qu_DllDmwuuI:AddDivider()
        Qu_DllDmwuuI:AddCheckbox("survivorShowName", {
            ["Text"] = "ผู้รอดชีวิต: แสดงชื่อ",
            ["Default"] = _1OUbnbM["survivorShowName"],
            ["Callback"] = function(wUoWwuwoOIWD)
                _1OUbnbM["survivorShowName"] = wUoWwuwoOIWD
                MU_m1UmlXXDZ.UpdateESPDistanceLabels()
            end,
        })
        MU_m1UmlXXDZ.OlxIIzQ = Qu_DllDmwuuI["AddCheckbox"](Qu_DllDmwuuI, "survivorShowOutline", {
            ["Text"] = "ผู้รอดชีวิต: แสดงเส้นขอบ",
            ["Default"] = _1OUbnbM["survivorShowOutline"],
            ["Callback"] = function(DwluxHXN0Z)
                _1OUbnbM["survivorShowOutline"] = DwluxHXN0Z
                HZMloNIWlXUUu()
                MU_m1UmlXXDZ.UpdateESPDistanceLabels()
            end,
        })
        MU_m1UmlXXDZ.OlxIIzQ:AddColorPicker("survivorColor", {
            ["Title"] = "สีผู้รอดชีวิต",
            ["Default"] = _1OUbnbM["survivorColor"],
            ["Callback"] = function(bOQxHzlIUHoQ)
                _1OUbnbM["survivorColor"] = bOQxHzlIUHoQ
                MU_m1UmlXXDZ.UpdateESPDistanceLabels()
            end,
        })
        Qu_DllDmwuuI:AddDivider()
        MU_m1UmlXXDZ.B_x0NzO = Qu_DllDmwuuI["AddCheckbox"](Qu_DllDmwuuI, "espScpEnabled", {
            ["Text"] = "ซอมบี้: เปิดการแสดงข้อมูล",
            ["Default"] = _1OUbnbM["espScpEnabled"],
            ["Callback"] = function(IulZvluqnU)
                _1OUbnbM["espScpEnabled"] = IulZvluqnU
                if not IulZvluqnU then
                    for IoxWw0IbvnvHNH, pHWn1 in pairs(lopX_WWOqz["scpEspObjects"]) do
                        ESPPlayerFunction3(IoxWw0IbvnvHNH)
                    end
                end
            end,
        })
        MU_m1UmlXXDZ.B_x0NzO:AddColorPicker("espScpColor", {
            ["Title"] = "สีซอมบี้",
            ["Default"] = _1OUbnbM["espScpColor"],
            ["Callback"] = function(DNplo1HZW_U0p)
                _1OUbnbM["espScpColor"] = DNplo1HZW_U0p
                ESPPlayerFunction4()
            end,
        })
        Qu_DllDmwuuI:AddCheckbox("espScpShowName", {
            ["Text"] = "ซอมบี้: แสดงชื่อ",
            ["Default"] = _1OUbnbM["espScpShowName"],
            ["Callback"] = function(blvwIpqOHwlX)
                _1OUbnbM["espScpShowName"] = blvwIpqOHwlX
                ESPPlayerFunction4()
            end,
        })
        Qu_DllDmwuuI:AddCheckbox("ShowHookCounter", {
            ["Text"] = "แสดงจำนวนครั้งที่โดนแขวน",
            ["Default"] = _1OUbnbM["VIS_ShowHookCounter"] == true,
            ["Callback"] = function(enabled)
                ZeroHookCounterSetEnabled(enabled)
            end,
        })
        Qu_DllDmwuuI:AddDivider()
        Qu_DllDmwuuI:AddCheckbox("RadarEnabled", {
            ["Text"] = "เปิด Radar",
            ["Default"] = _1OUbnbM["RADAR_Enabled"] == true,
            ["Callback"] = function(enabled)
                ZeroRadarSetEnabled(enabled)
            end,
        })
        Qu_DllDmwuuI:AddSlider("RadarRange", {
            ["Text"] = "ระยะ Radar",
            ["Default"] = _1OUbnbM["RADAR_Range"] or 250,
            ["Min"] = 50,
            ["Max"] = 500,
            ["Rounding"] = 0,
            ["Callback"] = function(value)
                _1OUbnbM["RADAR_Range"] = value
            end,
        })
        Qu_DllDmwuuI:AddSlider("RadarSize", {
            ["Text"] = "ขนาด Radar",
            ["Default"] = _1OUbnbM["RADAR_Size"] or 170,
            ["Min"] = 120,
            ["Max"] = 300,
            ["Rounding"] = 0,
            ["Callback"] = function(value)
                _1OUbnbM["RADAR_Size"] = value
            end,
        })
        Qu_DllDmwuuI:AddSlider("RadarTransparency", {
            ["Text"] = "ความโปร่งใส Radar",
            ["Default"] = math.floor((_1OUbnbM["RADAR_Transparency"] or 0.2) * 100),
            ["Min"] = 0,
            ["Max"] = 100,
            ["Rounding"] = 0,
            ["Callback"] = function(value)
                _1OUbnbM["RADAR_Transparency"] = value / 100
            end,
        })
        Qu_DllDmwuuI:AddCheckbox("RadarShowKiller", {
            ["Text"] = "Radar: แสดง Killer",
            ["Default"] = _1OUbnbM["RADAR_ShowKiller"] == true,
            ["Callback"] = function(v)
                _1OUbnbM["RADAR_ShowKiller"] = v
            end,
        })
        Qu_DllDmwuuI:AddCheckbox("RadarShowSurvivor", {
            ["Text"] = "Radar: แสดง Survivor",
            ["Default"] = _1OUbnbM["RADAR_ShowSurvivor"] == true,
            ["Callback"] = function(v)
                _1OUbnbM["RADAR_ShowSurvivor"] = v
            end,
        })
        Qu_DllDmwuuI:AddCheckbox("RadarShowGenerator", {
            ["Text"] = "Radar: แสดง Generator",
            ["Default"] = _1OUbnbM["RADAR_ShowGenerator"] == true,
            ["Callback"] = function(v)
                _1OUbnbM["RADAR_ShowGenerator"] = v
            end,
        })
        Qu_DllDmwuuI:AddCheckbox("RadarShowPallet", {
            ["Text"] = "Radar: แสดง Pallet",
            ["Default"] = _1OUbnbM["RADAR_ShowPallet"] == true,
            ["Callback"] = function(v)
                _1OUbnbM["RADAR_ShowPallet"] = v
            end,
        })
        Qu_DllDmwuuI:AddCheckbox("RadarShowHook", {
            ["Text"] = "Radar: แสดง Hook",
            ["Default"] = _1OUbnbM["RADAR_ShowHook"] == true,
            ["Callback"] = function(v)
                _1OUbnbM["RADAR_ShowHook"] = v
            end,
        })
        Qu_DllDmwuuI:AddCheckbox("RadarShowGate", {
            ["Text"] = "Radar: แสดง Gate",
            ["Default"] = _1OUbnbM["RADAR_ShowGate"] == true,
            ["Callback"] = function(v)
                _1OUbnbM["RADAR_ShowGate"] = v
            end,
        })
        Qu_DllDmwuuI:AddCheckbox("RadarShowWindow", {
            ["Text"] = "Radar: แสดง Window",
            ["Default"] = _1OUbnbM["RADAR_ShowWindow"] == true,
            ["Callback"] = function(v)
                _1OUbnbM["RADAR_ShowWindow"] = v
            end,
        })
        Qu_DllDmwuuI:AddCheckbox("RadarShowZombie", {
            ["Text"] = "Radar: แสดง Zombie",
            ["Default"] = _1OUbnbM["RADAR_ShowZombie"] == true,
            ["Callback"] = function(v)
                _1OUbnbM["RADAR_ShowZombie"] = v
            end,
        })
        Qu_DllDmwuuI:AddDivider()
        Qu_DllDmwuuI:AddSlider("killerMaxDistance", {
            ["Text"] = "ระยะสูงสุดของฆาตกร",
            ["Default"] = _1OUbnbM["killerMaxDistance"],
            ["Min"] = 100,
            ["Max"] = 500,
            ["Rounding"] = 0,
            ["Callback"] = function(vZubMoNpzD)
                _1OUbnbM["killerMaxDistance"] = vZubMoNpzD
                HZMloNIWlXUUu()
            end,
        })
        Qu_DllDmwuuI:AddSlider("survivorMaxDistance", {
            ["Text"] = "ระยะสูงสุดของผู้รอดชีวิต",
            ["Default"] = _1OUbnbM["survivorMaxDistance"],
            ["Min"] = 100,
            ["Max"] = 500,
            ["Rounding"] = 0,
            ["Callback"] = function(bMZ_vNpND0x)
                _1OUbnbM["survivorMaxDistance"] = bMZ_vNpND0x
                HZMloNIWlXUUu()
            end,
        })
        Qu_DllDmwuuI:AddSlider("espScpDistance", {
            ["Text"] = "ระยะสูงสุดของซอมบี้",
            ["Default"] = _1OUbnbM["espScpDistance"],
            ["Min"] = 100,
            ["Max"] = 500,
            ["Rounding"] = 0,
            ["Callback"] = function(uZXUOD0IQ)
                _1OUbnbM["espScpDistance"] = uZXUOD0IQ
                ESPPlayerFunction4()
            end,
        })
        MU_m1UmlXXDZ.OxM00WzuDmDpIZ = OnOquOxzu["Combat"]:AddLeftGroupbox("ฮีลทันที", "heart")
        MU_m1UmlXXDZ.OxM00WzuDmDpIZ:AddCheckbox("InstantHealToggle", {
            ["Text"] = "ฮีลตัวเอง (ไม่เต็ม) (G)",
            ["Default"] = _1OUbnbM["instantHealEnabled"],
            ["Callback"] = function(WIQlWmNlnxD)
                _1OUbnbM["instantHealEnabled"] = WIQlWmNlnxD
                if HealGuiInstance then
                    HealGuiInstance["Enabled"] = WIQlWmNlnxD
                end
                if not WIQlWmNlnxD then
                    _1OUbnbM["instantHealActive"] = false
                    doSelfHealFalse()
                    if HealButtonInstance then
                        HealButtonInstance["Text"] = "ฮีล: ปิด"
                        HealButtonInstance["TextColor3"] = Color3["fromRGB"](205, 230, 205)
                    end
                end
            end,
        })
        MU_m1UmlXXDZ.OxM00WzuDmDpIZ:AddCheckbox("InstantHealPositionLock", {
            ["Text"] = "ล็อกตำแหน่งปุ่มฮีล",
            ["Default"] = MU_m1UmlXXDZ.HealPositionLocked == true,
            ["Callback"] = function(locked)
                MU_m1UmlXXDZ.HealPositionLocked = locked == true
                QolwvD0XnWnzM:Notify(
                    locked and "ล็อกตำแหน่งปุ่มฮีลแล้ว" or "ปลดล็อกตำแหน่งปุ่มฮีลแล้ว",
                    3
                )
            end,
        })
        MU_m1UmlXXDZ._NZv_QIQxHOUQ = OnOquOxzu["UISettings"]:AddLeftGroupbox("ตกแต่ง", "smile")
        MU_m1UmlXXDZ._NZv_QIQxHOUQ:AddCheckbox("JerkToolToggle", {
            ["Text"] = "ไอเทม ช.ว",
            ["Default"] = _1OUbnbM["jerkToolEnabled"],
            ["Callback"] = function(Dz0mbQnHnWxqU)
                _1OUbnbM["jerkToolEnabled"] = Dz0mbQnHnWxqU
                if Dz0mbQnHnWxqU then
                    CreateInvisibleTool()
                    QolwvD0XnWnzM:Notify("เปิดใช้ไอเทมพิเศษแล้ว ตรวจสอบในกระเป๋าของคุณ", 3)
                else
                    if BQbNzUO_0uDlv then
                        BQbNzUO_0uDlv["Destroy"](BQbNzUO_0uDlv)
                        BQbNzUO_0uDlv = nil
                    end
                    QolwvD0XnWnzM["Notify"](QolwvD0XnWnzM, "ปิดใช้งาน Jerk Tool แล้ว", 3)
                end
            end,
        })
        MU_m1UmlXXDZ._NZv_QIQxHOUQ:AddCheckbox("KorbloxLegToggle", {
            ["Text"] = "สกินขาหาย",
            ["Default"] = _1OUbnbM["korbloxLegEnabled"],
            ["Callback"] = function(pMIpvl)
                _1OUbnbM["korbloxLegEnabled"] = pMIpvl
                if pMIpvl then
                    NoclipFunction()
                    QolwvD0XnWnzM:Notify("เปิดใช้ขา Korblox แล้ว", 3)
                else
                    CharacterFunction()
                    QolwvD0XnWnzM:Notify("ปิดใช้ขา Korblox แล้ว", 3)
                end
            end,
        })
        MU_m1UmlXXDZ._NZv_QIQxHOUQ:AddCheckbox("HeadlessToggle", {
            ["Text"] = "สกินไร้หัว",
            ["Default"] = _1OUbnbM["headlessEnabled"],
            ["Callback"] = function(pu0QxMmmOZ)
                _1OUbnbM["headlessEnabled"] = pu0QxMmmOZ
                if pu0QxMmmOZ then
                    CharacterFunction2()
                    QolwvD0XnWnzM:Notify("เปิดใช้งานหัวไร้หัวแล้ว", 3)
                else
                    CharacterFunction3()
                    QolwvD0XnWnzM:Notify("ปิดใช้งานหัวไร้หัวแล้ว", 3)
                end
            end,
        })
        MU_m1UmlXXDZ.NOUXm = OnOquOxzu["Killer"]:AddLeftGroupbox("ควบคุมพลัง (หน้ากาก)", "zap")
        function MU_m1UmlXXDZ.SetKillerPower(WHzxpum_l, vNbuunlQlWpU)
            pcall(function()
                local ppOuqDl1Xm = oZzw1oZIXX_["FindFirstChild"](oZzw1oZIXX_, "Remotes")
                local wOU11Zq_ = ppOuqDl1Xm and ppOuqDl1Xm["FindFirstChild"](ppOuqDl1Xm, "Killers")
                local HWOo0u = wOU11Zq_ and wOU11Zq_["FindFirstChild"](wOU11Zq_, "Masked")
                if HWOo0u then
                    if vNbuunlQlWpU then
                        local IvZNbomW = HWOo0u["FindFirstChild"](HWOo0u, "Activatepower")
                        if IvZNbomW then
                            IvZNbomW["FireServer"](IvZNbomW, WHzxpum_l)
                            QolwvD0XnWnzM:Notify("เปิดใช้งานพลัง: " .. WHzxpum_l, 3)
                        end
                    else
                        local qQxwD_1 = HWOo0u["FindFirstChild"](HWOo0u, "Deactivatepower")
                        if qQxwD_1 then
                            qQxwD_1["FireServer"](qQxwD_1)
                            QolwvD0XnWnzM:Notify("ปิดใช้งานพลังแล้ว", 3)
                        end
                    end
                else
                    QolwvD0XnWnzM["Notify"](QolwvD0XnWnzM, "ไม่พบรีโมทพลังในแมพนี้!", 3)
                end
            end)
        end
        MU_m1UmlXXDZ.NOUXm["AddButton"](MU_m1UmlXXDZ.NOUXm, "หน้ากากงู", function()
            local MZ1H1DX1vl0IH = Q_qlzpNO1["Team"] and Q_qlzpNO1["Team"]["Name"] or "Unknown"
            if MZ1H1DX1vl0IH ~= "Killer" then
                QolwvD0XnWnzM["Notify"](QolwvD0XnWnzM, "คุณไม่ได้อยู่ในทีม Killer!", 3)
                return
            end
            MU_m1UmlXXDZ.SetKillerPower("Cobra", true)
        end)
        MU_m1UmlXXDZ.NOUXm:AddButton("หน้ากากหมีม่วง", function()
            local W1xl1HHI = Q_qlzpNO1["Team"] and Q_qlzpNO1["Team"]["Name"] or "Unknown"
            if W1xl1HHI ~= "Killer" then
                QolwvD0XnWnzM["Notify"](QolwvD0XnWnzM, "คุณไม่ได้อยู่ในทีม Killer!", 3)
                return
            end
            MU_m1UmlXXDZ.SetKillerPower("Brandon", true)
        end)
        MU_m1UmlXXDZ.NOUXm:AddButton("หน้ากากเป็ด", function()
            local pmoOoWZU1O = Q_qlzpNO1["Team"] and Q_qlzpNO1["Team"]["Name"] or "Unknown"
            if pmoOoWZU1O ~= "Killer" then
                QolwvD0XnWnzM["Notify"](QolwvD0XnWnzM, "คุณไม่ได้อยู่ในทีม Killer!", 3)
                return
            end
            MU_m1UmlXXDZ.SetKillerPower("Alex", true)
        end)
        MU_m1UmlXXDZ.NOUXm:AddButton("หน้ากากกระต่าย", function()
            local NIQ0w = Q_qlzpNO1["Team"] and Q_qlzpNO1["Team"]["Name"] or "Unknown"
            if NIQ0w ~= "Killer" then
                QolwvD0XnWnzM["Notify"](QolwvD0XnWnzM, "คุณไม่ได้อยู่ในทีม Killer!", 3)
                return
            end
            MU_m1UmlXXDZ.SetKillerPower("Rabbit", true)
        end)
        MU_m1UmlXXDZ.NOUXm:AddButton("หน้ากากเสือ", function()
            local wumpo1nUMvl_ = Q_qlzpNO1["Team"] and Q_qlzpNO1["Team"]["Name"] or "Unknown"
            if wumpo1nUMvl_ ~= "Killer" then
                QolwvD0XnWnzM["Notify"](QolwvD0XnWnzM, "คุณไม่ได้อยู่ในทีม Killer!", 3)
                return
            end
            MU_m1UmlXXDZ.SetKillerPower("Tony", true)
        end)
        MU_m1UmlXXDZ.NOUXm:AddDivider()
        MU_m1UmlXXDZ.NOUXm:AddButton("ปิดหน้ากาก (ปกติ)", function()
            local oN_Muz0HbpozbZ = Q_qlzpNO1["Team"] and Q_qlzpNO1["Team"]["Name"] or "Unknown"
            if oN_Muz0HbpozbZ ~= "Killer" then
                QolwvD0XnWnzM["Notify"](QolwvD0XnWnzM, "คุณไม่ได้อยู่ในทีม Killer!", 3)
                return
            end
            MU_m1UmlXXDZ.SetKillerPower("", false)
        end)
        QQbUUQHnOWN1bD:AddCheckbox("InvisibleToggle", {
            ["Text"] = "ระบบล่องหน",
            ["Default"] = _1OUbnbM["invisibleEnabled"],
            ["Callback"] = function(u0vzUzQzHIZ)
                SetInvisibleEnabled(u0vzUzQzHIZ)
            end,
        })
        Mm1I0Dw_1xZZm:AddCheckbox("fakePerksEnabled", {
            ["Text"] = "เปิดใช้งาน (สวิตช์หลัก)",
            ["Default"] = _1OUbnbM["fakePerksEnabled"],
            ["Callback"] = function(HZOvbbxZ0)
                _1OUbnbM["fakePerksEnabled"] = HZOvbbxZ0
                if not HZOvbbxZ0 then
                    FP["ActiveBuffs"] = {}
                    FP_ApplySpeedToCharacter()
                end
            end,
        })
        Mm1I0Dw_1xZZm:AddDivider()
        Mm1I0Dw_1xZZm:AddCheckbox("flowstateBoostEnabled", {
            ["Text"] = "บูทความเร็ว: ปีนข้าม เปิดคู่กับ ตกจากที่สูง",
            ["Default"] = _1OUbnbM["flowstateBoostEnabled"],
            ["Callback"] = function(WqMlnQ)
                _1OUbnbM["flowstateBoostEnabled"] = WqMlnQ
            end,
        })
        Mm1I0Dw_1xZZm:AddCheckbox("quickRecoveryEnabled", {
            ["Text"] = "บูทความเร็ว: ถูกรักษาเสร็จ",
            ["Default"] = _1OUbnbM["quickRecoveryEnabled"],
            ["Callback"] = function(uNuDZb)
                _1OUbnbM["quickRecoveryEnabled"] = uNuDZb
            end,
        })
        Mm1I0Dw_1xZZm:AddCheckbox("perfectLandingEnabled", {
            ["Text"] = "บูทความเร็ว: ตกจากที่สูง",
            ["Default"] = _1OUbnbM["perfectLandingEnabled"],
            ["Callback"] = function(NplWM)
                _1OUbnbM["perfectLandingEnabled"] = NplWM
            end,
        })
        Mm1I0Dw_1xZZm:AddCheckbox("killerHitEnabled", {
            ["Text"] = "บูทความเร็ว: เมื่อดิ้นออกจากฆาตกร",
            ["Default"] = _1OUbnbM["killerHitEnabled"] or false,
            ["Callback"] = function(luwquZD)
                _1OUbnbM["killerHitEnabled"] = luwquZD
            end,
        })
        Mm1I0Dw_1xZZm:AddCheckbox("adrenalineRushEnabled", {
            ["Text"] = "อะดรีนาลีนพลุ่งพล่าน เพิ่มความเร็ว",
            ["Default"] = _1OUbnbM["adrenalineRushEnabled"],
            ["Callback"] = function(MQmzxW)
                _1OUbnbM["adrenalineRushEnabled"] = MQmzxW
            end,
        })
        MU_m1UmlXXDZ.owXHxWbmZx = OnOquOxzu["info"]:AddLeftGroupbox("ข้อมูล", "info")
        MU_m1UmlXXDZ.owXHxWbmZx:AddLabel("เวอร์ชัน : 3.1.1 Beta")
        MU_m1UmlXXDZ.owXHxWbmZx:AddLabel("สคริปต์ : Zero HUB")
        MU_m1UmlXXDZ.owXHxWbmZx:AddLabel("เกม : Violence District")
        MU_m1UmlXXDZ.owXHxWbmZx:AddLabel("เข้า Discord ของเราได้นะ")
        MU_m1UmlXXDZ.owXHxWbmZx:AddButton("ดิสคอร์ด", function()
            local Nlx1_bNwMI = "https://discord.gg/frmyWDcvdR"
            pcall(function()
                setclipboard(Nlx1_bNwMI)
            end)
            QolwvD0XnWnzM:Notify("คัดลอกลิงก์ Discord แล้ว!", 3)
        end)
        MU_m1UmlXXDZ.b1UxbMzQD = OnOquOxzu["info"]:AddRightGroupbox("ผู้พัฒนา", "user")
        MU_m1UmlXXDZ.b1UxbMzQD:AddLabel("ข้อความจากผู้พัฒนา HI")
        MU_m1UmlXXDZ.b1UxbMzQD:AddLabel("ผู้พัฒนา : Kaia")
        MU_m1UmlXXDZ.b1UxbMzQD:AddLabel(
            ""
        )
        MU_m1UmlXXDZ.b1UxbMzQD:AddLabel("")
        MU_m1UmlXXDZ.b1UxbMzQD:AddButton("ขอให้สนุก", function()
            local HzbuWbqXH1X10 = ""
            pcall(function()
                setclipboard(HzbuWbqXH1X10)
            end)
            QolwvD0XnWnzM:Notify("", 3)
        end)
        QOZpNNvbmDH:SetLibrary(QolwvD0XnWnzM)
        ppIHNN:SetLibrary(QolwvD0XnWnzM)
        ppIHNN:IgnoreThemeSettings()
        ppIHNN:SetIgnoreIndexes({})
        QOZpNNvbmDH:SetFolder("Fallens")
        ppIHNN:SetFolder("Fallens/configs")
        ppIHNN:BuildConfigSection(OnOquOxzu["UISettings"])
        print("Script Executed Successfully!")
    end)
    if not ok then
        env.__ZERO_HUB_RUNNING = nil
        warn("[Zero_HUB] โหลดไม่สำเร็จ: " .. tostring(err))
    end
end
-- Auto-start: no VIP/FREE launcher UI.
RunMainScript()
