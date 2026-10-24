-- สคริปต์สร้าง GUI ปิดแกลไอ (LocalScript)
-- วางสคริปต์นี้ใน StarterPlayer -> StarterPlayerScripts

local Players = game:GetService("Players")
local player = Players.LocalPlayer
local playerGui = player:WaitForChild("PlayerGui")

-- สร้าง ScreenGui หลัก
local screenGui = Instance.new("ScreenGui")
screenGui.Name = "CloseExploitGui"
screenGui.ResetOnSpawn = false
screenGui.IgnoreGuiInset = true
screenGui.DisplayOrder = 99
screenGui.Parent = playerGui

-- สร้าง Frame พื้นหลังสีดำ (หน้าต่างหลัก)
local mainFrame = Instance.new("Frame")
mainFrame.Name = "MainPanel"
mainFrame.Size = UDim2.new(0, 450, 0, 250) -- ขนาดกล่อง
mainFrame.Position = UDim2.new(0.5, 0, 0.5, 0) -- จัดให้อยู่กลางจอ
mainFrame.AnchorPoint = Vector2.new(0.5, 0.5)
mainFrame.BackgroundColor3 = Color3.fromRGB(0, 0, 0) -- สีดำ
mainFrame.BorderSizePixel = 0
mainFrame.Parent = screenGui

-- สร้างข้อความ "ปิดแกลไอ"
local titleText = Instance.new("TextLabel")
titleText.Name = "TitleText"
titleText.Size = UDim2.new(1, 0, 0.75, 0)
titleText.Position = UDim2.new(0, 0, 0, 0)
titleText.BackgroundTransparency = 1 -- พื้นหลังโปร่งใส
titleText.Text = "ปิดแก้ไข"
titleText.TextColor3 = Color3.fromRGB(255, 255, 255) -- สีขาว
titleText.TextScaled = true -- ปรับขนาดข้อความอัตโนมัติ
titleText.Font = Enum.Font.SourceSansBold -- ฟอนต์ตัวหนา
titleText.Parent = mainFrame

-- สร้างแถบสีเทาด้านล่าง (ปุ่ม "ปิด gui")
local closeButton = Instance.new("TextButton")
closeButton.Name = "CloseButton"
closeButton.Size = UDim2.new(1, 0, 0.25, 0)
closeButton.Position = UDim2.new(0, 0, 0.75, 0)
closeButton.BackgroundColor3 = Color3.fromRGB(100, 100, 100) -- สีเทา
closeButton.BorderSizePixel = 0
closeButton.Text = "ปิด gui"
closeButton.TextColor3 = Color3.fromRGB(255, 255, 255)
closeButton.TextScaled = true
closeButton.Font = Enum.Font.SourceSans
closeButton.Parent = mainFrame

-- ฟังก์ชันเมื่อกดปุ่ม "ปิด gui"
closeButton.MouseButton1Click:Connect(function()
    -- ซ่อน GUI ทั้งหมด
    screenGui.Enabled = false 
    
    -- (ทางเลือก) หากต้องการให้เปิดกลับมาได้ ให้ใส่คีย์ลัด หรือโค้ดเปิดตรงนี้
    -- print("ปิด GUI เรียบร้อยแล้ว")
end)
