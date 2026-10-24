local plrs = game:GetService("Players")
local as = game:GetService("AssetService")
local aes = game:GetService("AvatarEditorService")
local rs = game:GetService("RunService")
local hs = game:GetService("HttpService")
local cp = game:GetService("ContentProvider")
local ts = game:GetService("TweenService")
local UIS = game:GetService("UserInputService")
local lp = plrs.LocalPlayer

local m = {
	["runanimation"]      = "run",
	["climbanimation"]    = "climb",
	["jumpanimation"]     = "jump",
	["fallanimation"]     = "fall",
	["idleanimation"]     = "idle",
	["swimidleanimation"] = "swimidle",
	["swimanimation"]     = "swim",
	["walkanimation"]     = "walk"
}

local shortNames = {
	["idleanimation"]     = "Idle",
	["walkanimation"]     = "Walk",
	["runanimation"]      = "Run",
	["jumpanimation"]     = "Jump",
	["fallanimation"]     = "Fall",
	["climbanimation"]    = "Climb",
	["swimidleanimation"] = "S.Idle",
	["swimanimation"]     = "Swim"
}

local buttonOrder = {
	"idleanimation",
	"walkanimation",
	"runanimation",
	"jumpanimation",
	"fallanimation",
	"climbanimation",
	"swimidleanimation",
	"swimanimation"
}

local CACHE_FILE_NAME = "animation_bundle_data_cache.json"
local ANIM_CACHE_URL = "https://raw.githubusercontent.com/TribalFootball/TuffTeto/main/animation_bundle_data_cache.json"
local SEEN_BUNDLES_FILE = "seen_anim_bundles_cache.json"
local EQUIPPED_FILE = "FeUgcAnim.json"
local SAVED_BUNDLES_FILE = "FeUgcAnim_Bookmarks.json"

local assetCache, fileCache, seenBundles, equippedAnims = {}, {}, {}, {}
local savedBookmarks = {}

local function loadJSON(file)
	local ok, content = pcall(function()
		if isfile and not isfile(file) then return nil end
		return readfile(file)
	end)
	if ok and content then
		local suc, decoded = pcall(function() return hs:JSONDecode(content) end)
		return suc and decoded or {}
	end
	return {}
end

local function saveJSON(file, data)
	pcall(function() writefile(file, hs:JSONEncode(data)) end)
end

fileCache = loadJSON(CACHE_FILE_NAME)
seenBundles = loadJSON(SEEN_BUNDLES_FILE)
equippedAnims = loadJSON(EQUIPPED_FILE)
savedBookmarks = loadJSON(SAVED_BUNDLES_FILE)

task.spawn(function()
	local ok, onlineContent = pcall(function() return game:HttpGet(ANIM_CACHE_URL) end)
	if ok and onlineContent then
		pcall(function()
			local onlineData = hs:JSONDecode(onlineContent)
			for k, v in pairs(onlineData) do if not fileCache[k] then fileCache[k] = v end end
			saveJSON(CACHE_FILE_NAME, fileCache)
		end)
	end
end)

local function applySavedAnimations(char)
	if not char then return end
	local animate = char:WaitForChild("Animate", 5)
	local human = char:WaitForChild("Humanoid", 5)
	if not animate or not human then return end
	
	for _, tr in ipairs(human:GetPlayingAnimationTracks()) do 
		pcall(function() tr:AdjustWeight(0,0); tr:Stop(0) end) 
	end
	
	animate.Disabled = true
	
	for slotType, animList in pairs(equippedAnims) do
		local fId = m[string.lower(slotType)]
		if fId then
			local folder = animate:FindFirstChild(fId)
			if folder then
				for _, o in ipairs(folder:GetChildren()) do 
					if o:IsA("Animation") then o:Destroy() end 
				end
				for _, animData in ipairs(animList) do
					local newAnim = Instance.new("Animation", folder)
					newAnim.Name = animData.Name
					newAnim.AnimationId = animData.AnimationId
				end
			end
		end
	end
	
	task.wait(0.05)
	animate.Disabled = false
end

local function initAutoEquip(char)
	if not char then return end
	task.spawn(function()
		local animate = char:WaitForChild("Animate", 5)
		local human = char:WaitForChild("Humanoid", 5)
		
		if animate and human then
			local idleFolder = animate:WaitForChild("idle", 5)
			if idleFolder then
				idleFolder:WaitForChild("Animation1", 3) 
			end
			
			task.wait(0.1)
			applySavedAnimations(char)
		end
	end)
end

if lp.Character then
	initAutoEquip(lp.Character)
end

lp.CharacterAdded:Connect(initAutoEquip)

local function get(id, bundleId, assetType)
	local stringId = tostring(id)
	if assetCache[stringId] then return assetCache[stringId] end
	if fileCache[stringId] then
		local reconstructed = {}
		for _, data in ipairs(fileCache[stringId]) do
			local anim = Instance.new("Animation")
			anim.Name, anim.AnimationId = data.Name, data.AnimationId
			table.insert(reconstructed, anim)
		end
		assetCache[stringId] = reconstructed
		return reconstructed
	end

	local t, serializableData = {}, {}
	local descProp = "IdleAnimation"
	local lowerType = assetType and string.lower(assetType) or ""

	if lowerType:find("idle") and not lowerType:find("swim") then descProp = "IdleAnimation"
	elseif lowerType:find("walk") then descProp = "WalkAnimation"
	elseif lowerType:find("run") then descProp = "RunAnimation"
	elseif lowerType:find("jump") then descProp = "JumpAnimation"
	elseif lowerType:find("fall") then descProp = "FallAnimation"
	elseif lowerType:find("climb") then descProp = "ClimbAnimation"
	elseif lowerType:find("swim") then descProp = "SwimAnimation"
	end

	pcall(function()
		local desc = Instance.new("HumanoidDescription")
		desc[descProp] = tonumber(id)
		local dummy = plrs:CreateHumanoidModelFromDescription(desc, Enum.HumanoidRigType.R15)
		local animate = dummy:FindFirstChild("Animate")
		if animate then
			local targetFolders = (descProp == "SwimAnimation") and {"swim", "swimidle"} or {string.lower(string.gsub(descProp, "Animation", ""))}
			for _, folderName in ipairs(targetFolders) do
				local folder = animate:FindFirstChild(folderName)
				if folder then
					for _, child in ipairs(folder:GetChildren()) do
						if child:IsA("Animation") and child.AnimationId ~= "" then
							local clone = child:Clone()
							table.insert(t, clone)
							table.insert(serializableData, { Name = clone.Name, AnimationId = clone.AnimationId, BundleId = tostring(bundleId) })
						end
					end
				end
			end
		end
		dummy:Destroy()
	end)

	if #t == 0 then
		pcall(function() 
			local objs = game:GetObjects("rbxassetid://" .. stringId) 
			if objs and #objs > 0 then
				local function processItem(item)
					if item:IsA("Animation") then
						table.insert(t, item:Clone())
						table.insert(serializableData, { Name = item.Name, AnimationId = item.AnimationId, BundleId = tostring(bundleId) })
					end
				end
				processItem(objs[1])
				for _, c in ipairs(objs[1]:GetDescendants()) do processItem(c) end
			end
		end)
	end

	assetCache[stringId] = t
	fileCache[stringId] = serializableData
	saveJSON(CACHE_FILE_NAME, fileCache)
	return t
end

local function clearAssetCache(id)
	local stringId = tostring(id)
	assetCache[stringId], fileCache[stringId] = nil, nil
	saveJSON(CACHE_FILE_NAME, fileCache)
end

local vp = workspace.CurrentCamera.ViewportSize
local scale = math.clamp(math.min(vp.X / 1920, vp.Y / 1080), 0.55, 3.0) * 1.45
local function s(n) return math.round(n * scale) end

local C = {
	bg = Color3.fromRGB(10, 10, 10), panel = Color3.fromRGB(20, 20, 20),
	surface = Color3.fromRGB(28, 28, 28), surfaceHi = Color3.fromRGB(46, 46, 46),
	accent = Color3.fromRGB(255, 255, 255), green = Color3.fromRGB(235, 235, 235),
	purple = Color3.fromRGB(58, 58, 58), text = Color3.fromRGB(245, 245, 245),
	textDim = Color3.fromRGB(170, 170, 170), textMuted = Color3.fromRGB(115, 115, 115),
	overlay = Color3.fromRGB(0, 0, 0), fav = Color3.fromRGB(255, 215, 0),
	onLight = Color3.fromRGB(10, 10, 10)
}

local PAD = s(10)
local W, H = s(580), s(372)
local TOP_H = s(36)
local LEFT_W = s(300)
local RIGHT_W = W - LEFT_W - PAD * 2 - s(10)
local scrollW = s(4)
local FOOT_H = s(28)
local VP_H = s(150)
local MIN_BTN_SIZE = s(60)
local UI_BUSY = false
local TOGGLE_COOLDOWN = 0.15

local function stroke(parent, color, thickness)
	local st = Instance.new("UIStroke", parent)
	st.Color = color or Color3.fromRGB(65, 70, 75)
	st.Thickness = thickness or 1
	return st
end

local function corner(parent, radius)
	local cr = Instance.new("UICorner", parent)
	cr.CornerRadius = UDim.new(0, radius or s(6))
	return cr
end

local function applyCoolGradient(parent)
	local grad = Instance.new("UIGradient", parent)
	grad.Color = ColorSequence.new({
		ColorSequenceKeypoint.new(0, Color3.fromRGB(160, 170, 180)),
		ColorSequenceKeypoint.new(0.5, Color3.fromRGB(100, 110, 120)),
		ColorSequenceKeypoint.new(1, Color3.fromRGB(50, 55, 60))
	})
	grad.Rotation = 45
end

local function applyShimmer(obj, colorStart, colorMid)
	if obj:FindFirstChild("ShimmerGrad") then return end
	local grad = Instance.new("UIGradient", obj)
	grad.Name = "ShimmerGrad"
	grad.Color = ColorSequence.new({
		ColorSequenceKeypoint.new(0, colorStart),
		ColorSequenceKeypoint.new(0.5, colorMid),
		ColorSequenceKeypoint.new(1, colorStart)
	})
	grad.Rotation = 35
	grad.Offset = Vector2.new(-1, 0)
	
	local tw = ts:Create(grad, TweenInfo.new(1.2, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut, -1), {Offset = Vector2.new(1, 0)})
	tw:Play()
end

local function removeShimmer(obj)
	local g = obj:FindFirstChild("ShimmerGrad")
	if g then g:Destroy() end
end

local gp = (typeof(gethui) == "function" and gethui()) or game:GetService("CoreGui")
if gp:FindFirstChild("StudioAnimStudio") then gp.StudioAnimStudio:Destroy() end

local g = Instance.new("ScreenGui", gp)
g.Name = "StudioAnimStudio"
g.ResetOnSpawn = false
if not g.Parent then g.Parent = lp:WaitForChild("PlayerGui") end


-- สไตล์ปุ่มช่องท่า (off = ไม่มีท่านี้ / available = มีในชุด / selected = กำลังดู)
local function styleSlot(btn, state)
	btn.BackgroundTransparency = 0
	if state == "selected" then
		btn.BackgroundColor3, btn.TextColor3 = C.accent, C.onLight
	elseif state == "available" then
		btn.BackgroundColor3, btn.TextColor3 = C.surfaceHi, C.text
	else
		btn.BackgroundColor3, btn.TextColor3 = C.surface, C.textMuted
	end
end

local function styleTab(btn, active)
	btn.BackgroundColor3 = active and C.accent or C.surface
	btn.TextColor3 = active and C.onLight or C.textMuted
end

local mf = Instance.new("CanvasGroup", g)
mf.Size, mf.Position, mf.AnchorPoint = UDim2.new(0, 0, 0, 0), UDim2.new(0.5, 0, 0.5, 0), Vector2.new(0.5, 0.5)
mf.BackgroundColor3, mf.BackgroundTransparency = C.bg, 0.05
mf.GroupTransparency = 1
mf.Active = true
corner(mf, s(14)); stroke(mf, C.surfaceHi, 1)

task.delay(0.1, function()
	ts:Create(mf, TweenInfo.new(0.5, Enum.EasingStyle.Back, Enum.EasingDirection.Out), {Size = UDim2.new(0, W, 0, H), GroupTransparency = 0}):Play()
end)

local minBtn = Instance.new("CanvasGroup", g)
minBtn.Size, minBtn.Position, minBtn.AnchorPoint = UDim2.new(0, 0, 0, 0), UDim2.new(1, -s(40), 0, s(30)), Vector2.new(0.5, 0.5)
minBtn.BackgroundTransparency = 1
minBtn.GroupTransparency = 1
minBtn.Visible = false
minBtn.Active, minBtn.Draggable, minBtn.ClipsDescendants = true, true, true

local minBtnBg = Instance.new("Frame", minBtn)
minBtnBg.Size, minBtnBg.BackgroundColor3, minBtnBg.BorderSizePixel = UDim2.new(1, 0, 1, 0), C.panel, 0
local minBtnCorner = Instance.new("UICorner", minBtnBg)
minBtnCorner.CornerRadius = UDim.new(0.5, 0)
local minBtnStroke = stroke(minBtnBg, C.accent, 1)

local minBtnLabel = Instance.new("TextLabel", minBtn)
minBtnLabel.Size, minBtnLabel.BackgroundTransparency = UDim2.new(1, 0, 1, 0), 1
minBtnLabel.Text, minBtnLabel.TextColor3, minBtnLabel.Font, minBtnLabel.TextSize = "เปิด", C.text, Enum.Font.GothamBlack, s(14)
minBtnLabel.ClipsDescendants = true

local minBtnHit = Instance.new("TextButton", minBtn)
minBtnHit.Size, minBtnHit.BackgroundTransparency, minBtnHit.Text, minBtnHit.ClipsDescendants = UDim2.new(1, 0, 1, 0), 1, "", true

-- Drag the open/close UGC button with mouse or touch.
-- A short tap still opens the main UI; moving the button does not trigger the toggle.
local minBtnDragging = false
local minBtnDragInput = nil
local minBtnDragStart = nil
local minBtnStartPos = nil
local minBtnDidDrag = false
local MIN_BTN_DRAG_THRESHOLD = 8

minBtnHit.InputBegan:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseButton1
		or input.UserInputType == Enum.UserInputType.Touch then

		minBtnDragging = true
		minBtnDidDrag = false
		minBtnDragInput = input
		minBtnDragStart = input.Position
		minBtnStartPos = minBtn.Position

		input.Changed:Connect(function()
			if input.UserInputState == Enum.UserInputState.End then
				minBtnDragging = false
				minBtnDragInput = nil
			end
		end)
	end
end)

minBtnHit.InputChanged:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseMovement
		or input.UserInputType == Enum.UserInputType.Touch then
		minBtnDragInput = input
	end
end)

UIS.InputChanged:Connect(function(input)
	if not minBtnDragging or input ~= minBtnDragInput then return end

	local delta = input.Position - minBtnDragStart

	if math.abs(delta.X) >= MIN_BTN_DRAG_THRESHOLD
		or math.abs(delta.Y) >= MIN_BTN_DRAG_THRESHOLD then
		minBtnDidDrag = true
	end

	minBtn.Position = UDim2.new(
		minBtnStartPos.X.Scale,
		minBtnStartPos.X.Offset + delta.X,
		minBtnStartPos.Y.Scale,
		minBtnStartPos.Y.Offset + delta.Y
	)
end)

minBtnHit.MouseButton1Click:Connect(function()
	if minBtnDidDrag then
		minBtnDidDrag = false
		return
	end
	if UI_BUSY then return end
	UI_BUSY = true

	minBtn.Visible = false
	minBtn.GroupTransparency = 1
	minBtn.Size = UDim2.new(0, 0, 0, 0)

	mf.Size = UDim2.new(0, W, 0, H)
	mf.GroupTransparency = 0
	mf.Visible = true

	task.wait(TOGGLE_COOLDOWN)
	UI_BUSY = false
end)


-- ===== แถบหัว (ลากย้ายหน้าต่างได้ / ย่อ / ปิด) =====
local topBar = Instance.new("Frame", mf)
topBar.Size, topBar.BackgroundColor3, topBar.BorderSizePixel = UDim2.new(1, 0, 0, TOP_H), C.panel, 0
topBar.Active = true
corner(topBar, s(14))

-- ตัวเติมครึ่งล่างของแถบหัว ให้เหลือเฉพาะมุมบนที่โค้ง
local topFill = Instance.new("Frame", topBar)
topFill.Size, topFill.Position, topFill.AnchorPoint = UDim2.new(1, 0, 0, s(14)), UDim2.new(0, 0, 1, 0), Vector2.new(0, 1)
topFill.BackgroundColor3, topFill.BorderSizePixel = C.panel, 0

local titleLbl = Instance.new("TextLabel", topBar)
titleLbl.Size, titleLbl.Position, titleLbl.BackgroundTransparency = UDim2.new(1, -s(90), 1, 0), UDim2.new(0, PAD, 0, 0), 1
titleLbl.Text, titleLbl.TextColor3, titleLbl.Font, titleLbl.TextSize = "FE Animations (BATA)", C.text, Enum.Font.GothamBlack, s(14)
titleLbl.TextXAlignment, titleLbl.TextTruncate = Enum.TextXAlignment.Left, Enum.TextTruncate.AtEnd

local closeBtn = Instance.new("TextButton", topBar)
closeBtn.Size, closeBtn.AnchorPoint, closeBtn.Position = UDim2.new(0, s(26), 0, s(26)), Vector2.new(1, 0.5), UDim2.new(1, -PAD, 0.5, 0)
closeBtn.BackgroundColor3, closeBtn.Text, closeBtn.TextColor3 = C.surfaceHi, "X", C.text
closeBtn.Font, closeBtn.TextSize, closeBtn.AutoButtonColor = Enum.Font.GothamBold, s(12), true
corner(closeBtn, s(7))

local minWindowBtn = Instance.new("TextButton", topBar)
minWindowBtn.Size, minWindowBtn.AnchorPoint, minWindowBtn.Position = UDim2.new(0, s(26), 0, s(26)), Vector2.new(1, 0.5), UDim2.new(1, -(PAD + s(32)), 0.5, 0)
minWindowBtn.BackgroundColor3, minWindowBtn.Text, minWindowBtn.TextColor3 = C.surfaceHi, "-", C.text
minWindowBtn.Font, minWindowBtn.TextSize, minWindowBtn.AutoButtonColor = Enum.Font.GothamBold, s(16), true
corner(minWindowBtn, s(7))

closeBtn.MouseButton1Click:Connect(function()
	g:Destroy()
end)

do
	local dragging, dragStart, startPos = false, nil, nil
	topBar.InputBegan:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
			dragging, dragStart, startPos = true, input.Position, mf.Position
			input.Changed:Connect(function()
				if input.UserInputState == Enum.UserInputState.End then dragging = false end
			end)
		end
	end)
	UIS.InputChanged:Connect(function(input)
		if dragging and g.Parent and (input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch) then
			local d = input.Position - dragStart
			mf.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + d.X, startPos.Y.Scale, startPos.Y.Offset + d.Y)
		end
	end)
end


-- ===== เนื้อหา =====
local body = Instance.new("Frame", mf)
body.Size, body.Position, body.BackgroundTransparency = UDim2.new(1, 0, 1, -TOP_H), UDim2.new(0, 0, 0, TOP_H), 1

-- ฝั่งซ้าย: แท็บ + ค้นหา + รายการ
local lp_frame = Instance.new("Frame", body)
lp_frame.Size, lp_frame.Position, lp_frame.BackgroundTransparency = UDim2.new(0, LEFT_W, 1, -PAD * 2), UDim2.new(0, PAD, 0, PAD), 1

local header = Instance.new("Frame", lp_frame)
header.Size, header.BackgroundTransparency = UDim2.new(1, 0, 0, s(28)), 1

local tabDiscoverBtn = Instance.new("TextButton", header)
tabDiscoverBtn.Size, tabDiscoverBtn.Position = UDim2.new(1/3, -s(4), 1, 0), UDim2.new(0, 0, 0, 0)
tabDiscoverBtn.Text, tabDiscoverBtn.Font, tabDiscoverBtn.TextSize = "Discover", Enum.Font.GothamBold, s(11)
tabDiscoverBtn.AutoButtonColor = false
corner(tabDiscoverBtn, s(14)); styleTab(tabDiscoverBtn, true)

local tabSavedBtn = Instance.new("TextButton", header)
tabSavedBtn.Size, tabSavedBtn.Position = UDim2.new(1/3, -s(4), 1, 0), UDim2.new(1/3, s(2), 0, 0)
tabSavedBtn.Text, tabSavedBtn.Font, tabSavedBtn.TextSize = "Saved", Enum.Font.GothamBold, s(11)
tabSavedBtn.AutoButtonColor = false
corner(tabSavedBtn, s(14)); styleTab(tabSavedBtn, false)

local tabDevBtn = Instance.new("TextButton", header)
tabDevBtn.Size, tabDevBtn.Position = UDim2.new(1/3, -s(4), 1, 0), UDim2.new(2/3, s(4), 0, 0)
tabDevBtn.Text, tabDevBtn.Font, tabDevBtn.TextSize = "Dev", Enum.Font.GothamBold, s(11)
tabDevBtn.AutoButtonColor = false
corner(tabDevBtn, s(14)); styleTab(tabDevBtn, false)

minWindowBtn.MouseButton1Click:Connect(function() 
	if UI_BUSY then return end
	UI_BUSY = true

	mf.Visible = false
	mf.GroupTransparency = 1
	mf.Size = UDim2.new(0, 0, 0, 0)

	minBtn.Size = UDim2.new(0, MIN_BTN_SIZE, 0, MIN_BTN_SIZE)
	minBtn.GroupTransparency = 0
	minBtn.Visible = true

	task.wait(TOGGLE_COOLDOWN)
	UI_BUSY = false
end)

local searchRow = Instance.new("Frame", lp_frame)
searchRow.Size, searchRow.Position, searchRow.BackgroundTransparency = UDim2.new(1, 0, 0, s(28)), UDim2.new(0, 0, 0, s(34)), 1

local sb = Instance.new("TextBox", searchRow)
sb.Size, sb.PlaceholderText, sb.Text = UDim2.new(1, -s(64), 1, 0), "Search...", ""
sb.BackgroundColor3, sb.TextColor3, sb.PlaceholderColor3 = C.surface, C.text, C.textMuted
sb.Font, sb.TextSize, sb.ClearTextOnFocus, sb.TextXAlignment = Enum.Font.Gotham, s(12), false, Enum.TextXAlignment.Left
corner(sb, s(8)); stroke(sb, C.surfaceHi, 1)
local sbPad = Instance.new("UIPadding", sb) sbPad.PaddingLeft = UDim.new(0, s(10))

local searchBtn = Instance.new("TextButton", searchRow)
searchBtn.Size, searchBtn.Position = UDim2.new(0, s(58), 1, 0), UDim2.new(1, -s(58), 0, 0)
searchBtn.Text, searchBtn.BackgroundColor3, searchBtn.TextColor3 = "Search", C.accent, C.onLight
searchBtn.Font, searchBtn.TextSize = Enum.Font.GothamBold, s(11)
corner(searchBtn, s(8))

local gridScroller = Instance.new("ScrollingFrame", lp_frame)
gridScroller.Size, gridScroller.Position = UDim2.new(1, 0, 1, -(s(68) + FOOT_H + s(4))), UDim2.new(0, 0, 0, s(68))
gridScroller.BackgroundColor3, gridScroller.BackgroundTransparency, gridScroller.BorderSizePixel = C.surface, 0.5, 0
gridScroller.ScrollBarThickness, gridScroller.ScrollBarImageColor3 = scrollW, C.surfaceHi
corner(gridScroller, s(10))

local loadingOverlay = Instance.new("TextLabel", lp_frame)
loadingOverlay.Size, loadingOverlay.Position = gridScroller.Size, gridScroller.Position
loadingOverlay.BackgroundColor3, loadingOverlay.BackgroundTransparency, loadingOverlay.ZIndex = C.bg, 0.25, 10
loadingOverlay.Text, loadingOverlay.TextColor3, loadingOverlay.Font, loadingOverlay.TextSize = "Loading...", C.text, Enum.Font.GothamBold, s(13)
loadingOverlay.Visible = false; corner(loadingOverlay, s(10))
applyShimmer(loadingOverlay, C.surface, C.surfaceHi)

local footer = Instance.new("Frame", lp_frame)
footer.Size, footer.Position, footer.BackgroundTransparency = UDim2.new(1, 0, 0, FOOT_H), UDim2.new(0, 0, 1, -FOOT_H), 1

local prevBtn = Instance.new("TextButton", footer)
prevBtn.Size, prevBtn.Text, prevBtn.BackgroundColor3 = UDim2.new(0, s(64), 1, 0), "< Back", C.surfaceHi
prevBtn.Font, prevBtn.TextSize, prevBtn.TextColor3 = Enum.Font.GothamBold, s(11), C.textDim
corner(prevBtn, s(8))

local pageLbl = Instance.new("TextLabel", footer)
pageLbl.Size, pageLbl.Position, pageLbl.Text = UDim2.new(1, -s(136), 1, 0), UDim2.new(0, s(68), 0, 0), "Page 1"
pageLbl.BackgroundTransparency, pageLbl.TextColor3, pageLbl.Font, pageLbl.TextSize = 1, C.textDim, Enum.Font.Gotham, s(11)

local nextBtn = Instance.new("TextButton", footer)
nextBtn.Size, nextBtn.Position, nextBtn.Text = UDim2.new(0, s(64), 1, 0), UDim2.new(1, -s(64), 0, 0), "Next >"
nextBtn.BackgroundColor3, nextBtn.TextColor3, nextBtn.Font, nextBtn.TextSize = C.surfaceHi, C.text, Enum.Font.GothamBold, s(11)
corner(nextBtn, s(8))

local divider = Instance.new("Frame", body)
divider.Size, divider.Position, divider.BackgroundColor3 = UDim2.new(0, 1, 1, -PAD * 2), UDim2.new(0, PAD + LEFT_W + s(5), 0, PAD), C.surfaceHi
divider.BorderSizePixel = 0

-- ฝั่งขวา: ตัวอย่างท่า + ปุ่มเลือกท่า + ปุ่มสวม
local rp = Instance.new("Frame", body)
rp.Size, rp.Position, rp.BackgroundTransparency = UDim2.new(0, RIGHT_W, 1, -PAD * 2), UDim2.new(0, PAD + LEFT_W + s(10), 0, PAD), 1

local masterViewport = Instance.new("ViewportFrame", rp)
masterViewport.Size, masterViewport.Position = UDim2.new(1, 0, 0, VP_H), UDim2.new(0, 0, 0, 0)
masterViewport.BackgroundColor3, masterViewport.BackgroundTransparency = C.overlay, 0.2
corner(masterViewport, s(10)); stroke(masterViewport, C.surfaceHi, 1)

local statusFrame = Instance.new("Frame", rp)
statusFrame.Size, statusFrame.Position = UDim2.new(1, 0, 0, s(28)), UDim2.new(0, 0, 0, VP_H + s(8))
statusFrame.BackgroundColor3, statusFrame.BackgroundTransparency = C.surface, 0.2
corner(statusFrame, s(8))

local statusLabel = Instance.new("TextLabel", statusFrame)
statusLabel.Size, statusLabel.Position, statusLabel.BackgroundTransparency = UDim2.new(1, -s(16), 1, 0), UDim2.new(0, s(8), 0, 0), 1
statusLabel.Text, statusLabel.TextColor3, statusLabel.TextTruncate = "No bundle selected", C.textDim, Enum.TextTruncate.AtEnd
statusLabel.Font, statusLabel.TextSize, statusLabel.TextXAlignment = Enum.Font.GothamSemibold, s(11), Enum.TextXAlignment.Left

local buttonContainer = Instance.new("Frame", rp)
buttonContainer.Size, buttonContainer.Position = UDim2.new(1, 0, 0, s(50)), UDim2.new(0, 0, 0, VP_H + s(42))
buttonContainer.BackgroundTransparency = 1
local gridBtnLayout = Instance.new("UIGridLayout", buttonContainer)
local btnW = math.floor((RIGHT_W - s(13)) / 4)
gridBtnLayout.CellSize, gridBtnLayout.CellPadding = UDim2.new(0, btnW, 0, s(23)), UDim2.new(0, s(4), 0, s(4))

local actRow = Instance.new("Frame", rp)
actRow.Size, actRow.Position, actRow.BackgroundTransparency = UDim2.new(1, 0, 0, s(62)), UDim2.new(0, 0, 1, -s(62)), 1

local bookmarkBtn = Instance.new("TextButton", actRow)
bookmarkBtn.Size, bookmarkBtn.Position = UDim2.new(1, 0, 0, s(28)), UDim2.new(0, 0, 0, 0)
bookmarkBtn.BackgroundColor3, bookmarkBtn.Text = C.surface, "Save to Saved Tab"
bookmarkBtn.Font, bookmarkBtn.TextSize, bookmarkBtn.TextColor3 = Enum.Font.GothamBold, s(11), C.textMuted
bookmarkBtn.Visible = false
corner(bookmarkBtn, s(8)); stroke(bookmarkBtn, C.surfaceHi, 1)

local wearSelectedBtn = Instance.new("TextButton", actRow)
wearSelectedBtn.Size, wearSelectedBtn.Position, wearSelectedBtn.Text = UDim2.new(0.5, -s(3), 0, s(30)), UDim2.new(0, 0, 1, -s(30)), "Wear Selected"
wearSelectedBtn.BackgroundColor3, wearSelectedBtn.TextColor3 = C.green, C.onLight
wearSelectedBtn.Font, wearSelectedBtn.TextSize, wearSelectedBtn.Visible = Enum.Font.GothamBold, s(11), false
corner(wearSelectedBtn, s(8))

local wearAllBtn = Instance.new("TextButton", actRow)
wearAllBtn.Size, wearAllBtn.Position, wearAllBtn.Text = UDim2.new(0.5, -s(3), 0, s(30)), UDim2.new(0.5, s(3), 1, -s(30)), "Wear All"
wearAllBtn.BackgroundColor3, wearAllBtn.TextColor3 = C.purple, C.text
wearAllBtn.Font, wearAllBtn.TextSize, wearAllBtn.Visible = Enum.Font.GothamBold, s(11), false
corner(wearAllBtn, s(8)); stroke(wearAllBtn, C.surfaceHi, 1)


-- ===== หน้า Dev (ข้อมูลผู้พัฒนา) : แก้ข้อมูลที่ตาราง DEV_INFO =====
local DEV_INFO = {
	Name = "Kaia",
	Role = "Developer",
	Version = "V1.0.0",
	Discord = "https://discord.gg/frmyWDcvdR",                                  -- ใส่ลิงก์เชิญ Discord ถ้าเว้นว่าง ปุ่มจะไม่แสดง
	Website = "",
	Image = "https://raw.githubusercontent.com/Kaia-Zero/Owjs/refs/heads/main/dev.png",                                    -- รูปโปรไฟล์: rbxassetid://เลข, ตัวเลข asset id หรือลิงก์รูปตรง (png/jpg) ถ้าเว้นว่างจะแสดงตัวอักษรแรกของชื่อ
	About = "สคริปต์เลือกและสวมชุดท่าทางจากแค็ตตาล็อก Roblox ให้ตัวละครของคุณ",
	Notes = {
		"เดี๋ยวว่างๆ จะเปลี่ยน UI ใหม่",
		"ข้อมูลท่าทางดึงผ่าน Roblox AvatarEditorService",
		"ท่าที่สวมไว้ถูกบันทึกและสวมซ้ำให้เมื่อเกิดใหม่",
	},
}

local devPage = Instance.new("ScrollingFrame", body)
devPage.Size, devPage.Position = UDim2.new(1, -PAD * 2, 1, -(PAD * 2 + s(34))), UDim2.new(0, PAD, 0, PAD + s(34))
devPage.BackgroundColor3, devPage.BackgroundTransparency, devPage.BorderSizePixel = C.surface, 0.5, 0
devPage.ScrollBarThickness, devPage.ScrollBarImageColor3 = scrollW, C.surfaceHi
devPage.CanvasSize, devPage.AutomaticCanvasSize = UDim2.new(), Enum.AutomaticSize.Y
devPage.ScrollingDirection = Enum.ScrollingDirection.Y
devPage.Visible = false
corner(devPage, s(10))

local devPad = Instance.new("UIPadding", devPage)
devPad.PaddingTop, devPad.PaddingBottom = UDim.new(0, s(12)), UDim.new(0, s(12))
devPad.PaddingLeft, devPad.PaddingRight = UDim.new(0, s(12)), UDim.new(0, s(12))

local devList = Instance.new("UIListLayout", devPage)
devList.Padding, devList.SortOrder = UDim.new(0, s(8)), Enum.SortOrder.LayoutOrder

local function devLabel(order, text, size, color, font)
	local l = Instance.new("TextLabel", devPage)
	l.LayoutOrder, l.BackgroundTransparency = order, 1
	l.Size, l.AutomaticSize = UDim2.new(1, -s(8), 0, 0), Enum.AutomaticSize.Y
	l.Text, l.TextWrapped = text, true
	l.TextColor3, l.Font, l.TextSize = color or C.text, font or Enum.Font.Gotham, size or s(12)
	l.TextXAlignment, l.TextYAlignment = Enum.TextXAlignment.Left, Enum.TextYAlignment.Top
	return l
end

-- แถวโปรไฟล์: วงกลมตัวอักษรแรก + ชื่อ + ตำแหน่ง
local profileRow = Instance.new("Frame", devPage)
profileRow.LayoutOrder, profileRow.Size, profileRow.BackgroundTransparency = 1, UDim2.new(1, -s(8), 0, s(52)), 1

local avatar = Instance.new("TextLabel", profileRow)
avatar.Size, avatar.BackgroundColor3 = UDim2.new(0, s(48), 0, s(48)), C.accent
avatar.Text, avatar.TextColor3, avatar.Font, avatar.TextSize = string.upper(string.sub(DEV_INFO.Name, 1, 1)), C.onLight, Enum.Font.GothamBlack, s(22)
corner(avatar, s(24))
avatar.ClipsDescendants = true

local avatarImg = Instance.new("ImageLabel", avatar)
avatarImg.Size, avatarImg.BackgroundTransparency, avatarImg.ScaleType = UDim2.new(1, 0, 1, 0), 1, Enum.ScaleType.Crop
avatarImg.Visible = false
corner(avatarImg, s(24))

-- แปลงค่า DEV_INFO.Image เป็น asset ที่ใช้แสดงได้
-- คืนค่า: asset, ชนิด ("roblox" = id ของ Roblox / "file" = ไฟล์ที่ดาวน์โหลดมา)
local function devWarn(msg)
	warn("[Fe Animations][Dev Image] " .. msg)
end

local function resolveDevImage(source)
	if type(source) ~= "string" or source == "" then return nil end

	-- asset id ของ Roblox (รับทั้งเลขล้วนและ rbxassetid://เลข)
	local id = tonumber(source) or tonumber(source:match("^rbxassetid://(%d+)$"))
	if id then
		local ok, objs = pcall(function() return game:GetObjects("rbxassetid://" .. id) end)
		if ok and objs and objs[1] then
			local o = objs[1]
			if (o:IsA("Decal") or o:IsA("Texture")) and o.Texture ~= "" then return o.Texture, "roblox" end
			if (o:IsA("ImageLabel") or o:IsA("ImageButton")) and o.Image ~= "" then return o.Image, "roblox" end
		end
		return "rbxassetid://" .. id, "roblox"
	end

	if source:find("^rbxasset://") then return source, "roblox" end

	-- ลิงก์รูปตรง: ดาวน์โหลดเก็บเป็นไฟล์ แล้วแปลงเป็น asset (แจ้งสาเหตุทุกขั้นตอนที่พลาด)
	if source:find("^https?://") then
		if type(writefile) ~= "function" then devWarn("executor ไม่รองรับ writefile") return nil end
		if type(getcustomasset) ~= "function" and type(getsynasset) ~= "function" then
			devWarn("executor ไม่รองรับ getcustomasset") return nil
		end

		local okGet, data = pcall(function() return game:HttpGet(source) end)
		if not okGet or type(data) ~= "string" or #data == 0 then
			devWarn("ดาวน์โหลดลิงก์ไม่ได้: " .. tostring(data)) return nil
		end

		-- ตรวจว่าเป็นไฟล์รูปจริงจากส่วนหัวไฟล์ (ถ้าลิงก์ผิด GitHub จะส่งข้อความ 404 มาแทน)
		local ext
		if data:sub(1, 4) == "\137PNG" then ext = ".png"
		elseif data:sub(1, 2) == "\255\216" then ext = ".jpg"
		end
		if not ext then
			devWarn("ไฟล์ที่ได้ไม่ใช่ PNG/JPG (ขนาด " .. #data .. " ไบต์) ขึ้นต้นด้วย: " .. data:sub(1, 40):gsub("%c", " "))
			return nil
		end

		local fileName = "dev_avatar" .. ext
		local okWrite, errWrite = pcall(function() writefile(fileName, data) end)
		if not okWrite then devWarn("เขียนไฟล์ไม่ได้: " .. tostring(errWrite)) return nil end

		local okAsset, asset = pcall(function()
			return (getcustomasset or getsynasset)(fileName)
		end)
		if not okAsset or not asset then
			devWarn("getcustomasset ล้มเหลว: " .. tostring(asset)) return nil
		end
		return asset, "file"
	end

	devWarn("รูปแบบค่า Image ไม่ถูกต้อง")
	return nil
end

-- แสดงรูปเมื่อพร้อม ถ้าไม่สำเร็จจะคงตัวอักษรแรกของชื่อไว้ (ไม่ให้เป็นวงกลมว่าง)
task.spawn(function()
	local asset, kind = resolveDevImage(DEV_INFO.Image)
	if not asset then return end
	avatarImg.Image = asset

	-- รูปจาก Roblox ต้องรอให้โหลดเสร็จ ส่วนไฟล์ในเครื่องบาง executor รายงาน IsLoaded ไม่ตรง จึงรอสั้น ๆ แล้วแสดงเลย
	local startTime = os.clock()
	local limit = (kind == "file") and 1 or 8
	while avatarImg.Parent and not avatarImg.IsLoaded and (os.clock() - startTime) < limit do
		task.wait(0.2)
	end

	if not avatarImg.Parent then return end
	if avatarImg.IsLoaded or kind == "file" then
		avatarImg.Visible = true
		avatar.Text = ""
		avatar.BackgroundColor3 = C.surface
	else
		devWarn("โหลดรูปไม่ติด (asset นี้อาจไม่ใช่รูปภาพ หรือยังไม่ผ่านการตรวจของ Roblox) ลองใช้ลิงก์รูปตรงแทน")
	end
end)

local nameLbl = Instance.new("TextLabel", profileRow)
nameLbl.Size, nameLbl.Position, nameLbl.BackgroundTransparency = UDim2.new(1, -s(60), 0, s(26)), UDim2.new(0, s(58), 0, s(2)), 1
nameLbl.Text, nameLbl.TextColor3, nameLbl.Font, nameLbl.TextSize = DEV_INFO.Name, C.text, Enum.Font.GothamBlack, s(17)
nameLbl.TextXAlignment = Enum.TextXAlignment.Left

local roleLbl = Instance.new("TextLabel", profileRow)
roleLbl.Size, roleLbl.Position, roleLbl.BackgroundTransparency = UDim2.new(1, -s(60), 0, s(18)), UDim2.new(0, s(58), 0, s(28)), 1
roleLbl.Text, roleLbl.TextColor3, roleLbl.Font, roleLbl.TextSize = DEV_INFO.Role .. "  •  " .. DEV_INFO.Version, C.textDim, Enum.Font.GothamSemibold, s(12)
roleLbl.TextXAlignment = Enum.TextXAlignment.Left

devLabel(2, DEV_INFO.About, s(12), C.textDim)

-- ปุ่มคัดลอก (แสดงเฉพาะอันที่มีข้อมูล)
local function copyButton(order, caption, value)
	if not value or value == "" then return end
	local b = Instance.new("TextButton", devPage)
	b.LayoutOrder, b.Size = order, UDim2.new(1, -s(8), 0, s(32))
	b.BackgroundColor3, b.TextColor3 = C.accent, C.onLight
	b.Text, b.Font, b.TextSize = "Copy " .. caption, Enum.Font.GothamBold, s(12)
	corner(b, s(8))
	b.MouseButton1Click:Connect(function()
		local ok = pcall(function() setclipboard(value) end)
		b.Text = ok and "Copied ✓" or "Copy ไม่ได้ (executor ไม่รองรับ)"
		task.delay(1.6, function()
			if b and b.Parent then b.Text = "Copy " .. caption end
		end)
	end)
end
copyButton(3, "Discord", DEV_INFO.Discord)
copyButton(4, "Website", DEV_INFO.Website)

devLabel(5, "ข้อมูลเพิ่มเติม", s(13), C.text, Enum.Font.GothamBold)
for i, note in ipairs(DEV_INFO.Notes) do
	devLabel(5 + i, "•  " .. note, s(12), C.textDim)
end

-- สลับการแสดงผลระหว่างหน้าหลัก (Discover/Saved) กับหน้า Dev
local function setMainVisible(vis)
	searchRow.Visible, gridScroller.Visible, footer.Visible = vis, vis, vis
	rp.Visible, divider.Visible = vis, vis
	if not vis then loadingOverlay.Visible = false end
	devPage.Visible = not vis
end

local activeGridThreads, currentBundleItems, animationButtons = {}, {}, {}
local targetBundleItems, activeMasterTrack, activeMasterType = nil, nil, nil
local activeBundleName, activeBundleId = "None", nil
local searchResults, savedTabList = {}, {}
local catalogCursor, currentPageIndex, itemsPerPage = nil, 1, 6 
local currentTab = "Discover"
local userSelectedAnimSlot = "idleanimation"

local function preloadAnimations(tracks)
	local i = {}
	for _, t in ipairs(tracks) do table.insert(i, t) end
	if #i > 0 then pcall(function() cp:PreloadAsync(i) end) end
end

local function buildViewportSkeleton(vpFrame)
	local wm = vpFrame:FindFirstChildOfClass("WorldModel")
	if not wm then wm = Instance.new("WorldModel", vpFrame) else for _,c in ipairs(wm:GetChildren()) do c:Destroy() end end
	local char = lp.Character or lp.CharacterAdded:Wait()
	char.Archivable = true
	local clone = char:Clone(); clone.Parent = wm
	local root, human = clone:WaitForChild("HumanoidRootPart"), clone:FindFirstChildOfClass("Humanoid")
	local anim = human:FindFirstChildOfClass("Animator") or Instance.new("Animator", human)
	if clone:FindFirstChild("Animate") then clone.Animate.Disabled = true end
	local cam = vpFrame:FindFirstChildOfClass("Camera") or Instance.new("Camera", vpFrame)
	vpFrame.CurrentCamera = cam
	cam.CFrame = CFrame.new(Vector3.new(0, 1.5, 6), Vector3.new(0, 0, 0))
	local angle = 0
	local conn = rs.RenderStepped:Connect(function(dt)
		if clone and root then angle = angle + math.rad(25*dt); clone:PivotTo(CFrame.new(0,0,0) * CFrame.Angles(0, angle, 0)) end
	end)
	return clone, anim, conn
end

local function applyAnimationToCharacter(character, targetAnimations, slotType)
	local animate = character:WaitForChild("Animate", 5)
	local human = character:FindFirstChildOfClass("Humanoid")
	if not animate or not human then return end
	for _, tr in ipairs(human:GetPlayingAnimationTracks()) do pcall(function() tr:AdjustWeight(0,0); tr:Stop(0) end) end
	animate.Disabled = true
	local cleanSlot = string.lower(slotType or "")
	local fId = m[cleanSlot]
	if fId then
		local folder = animate:FindFirstChild(fId)
		if folder then
			for _, o in ipairs(folder:GetChildren()) do if o:IsA("Animation") then o:Destroy() end end
			equippedAnims[cleanSlot] = {}
			for _, animAsset in ipairs(targetAnimations) do
				local newAnim = Instance.new("Animation", folder)
				newAnim.Name, newAnim.AnimationId = animAsset.Name, animAsset.AnimationId
				table.insert(equippedAnims[cleanSlot], {Name=newAnim.Name, AnimationId=newAnim.AnimationId})
			end
			saveJSON(EQUIPPED_FILE, equippedAnims)
		end
	end
	task.wait(0.05); animate.Disabled = false
end

local function getSpecificTrack(fetchedTracks, targetType)
	if #fetchedTracks == 0 then return nil end
	if targetType == "swimidleanimation" then
		for _, tr in ipairs(fetchedTracks) do if string.lower(tr.Name):find("idle") then return tr end end
		return fetchedTracks[2] or fetchedTracks[1]
	elseif targetType == "swimanimation" then
		for _, tr in ipairs(fetchedTracks) do if string.lower(tr.Name) == "swim" then return tr end end
	end
	return fetchedTracks[1]
end

local function truncate(str, maxLen) return #str > maxLen and str:sub(1, maxLen-1).."…" or str end

local function tryPlayTrack(animator, track, looped)
	local ok, pt = pcall(function() local tr = animator:LoadAnimation(track); tr.Looped=looped; tr:Play(); return tr end)
	if not ok or not pt then return false, nil end
	task.wait(0.15)
	if not pt.IsPlaying then pcall(function() pt:Stop() end); return false, nil end
	return true, pt
end

local function applyBundleItemsToCharacter(items)
	if not lp.Character then return end
	local tLoad, tApply = {}, {}
	for _, lt in ipairs(buttonOrder) do
		local pay = items[lt]
		if pay then
			local t = get(pay.Id, nil, pay.AssetType)
			if lt == "idleanimation" then
				tApply[lt] = t; for _,x in ipairs(t) do table.insert(tLoad, x) end
			else
				local spec = getSpecificTrack(t, lt)
				if spec then tApply[lt] = {spec}; table.insert(tLoad, spec) end
			end
		end
	end
	preloadAnimations(tLoad)
	for slot, tracks in pairs(tApply) do applyAnimationToCharacter(lp.Character, tracks, slot) end
end

local function wearBundleQuickly(bundleId, onDone)
	task.spawn(function()
		local ok, res = pcall(function() return as:GetBundleDetailsAsync(bundleId) end)
		if ok and res and res.Items and lp.Character then
			local items = {}
			for _, item in ipairs(res.Items) do
				local lt = string.lower(item.AssetType or "")
				if lt == "swimanimation" then
					items["swimanimation"] = item; items["swimidleanimation"] = item
				elseif shortNames[lt] then
					items[lt] = item
				end
			end
			applyBundleItemsToCharacter(items)
		end
		if onDone then onDone() end
	end)
end

local function toggleBookmark(bundleId, bundleName)
	local sId = tostring(bundleId)
	local nowSaved
	if savedBookmarks[sId] then
		savedBookmarks[sId] = nil
		nowSaved = false
	else
		savedBookmarks[sId] = {Id = bundleId, Name = bundleName, Fav = false, Time = tick()}
		nowSaved = true
	end
	saveJSON(SAVED_BUNDLES_FILE, savedBookmarks)
	return nowSaved
end

local masterRenderGen = 0 
local function renderMasterTrack(itemPayload, assetTypeName)
	if activeMasterTrack then activeMasterTrack:Stop() activeMasterTrack = nil end
	masterRenderGen = masterRenderGen + 1
	local myGen = masterRenderGen
	local dummy, animator = buildViewportSkeleton(masterViewport)
	local lowerType = string.lower(assetTypeName or "")
	local displayType = shortNames[lowerType] or "Track"

	statusLabel.Text = truncate(activeBundleName, 22) .. " • " .. displayType .. " (loading...)"
	applyShimmer(statusLabel, C.textDim, Color3.new(1,1,1))
	
	local vpShimmer = masterViewport:FindFirstChild("LoadingShimmer")
	if not vpShimmer then
		vpShimmer = Instance.new("Frame", masterViewport)
		vpShimmer.Name = "LoadingShimmer"
		vpShimmer.Size, vpShimmer.BackgroundColor3, vpShimmer.BorderSizePixel = UDim2.new(1,0,1,0), C.overlay, 0
		corner(vpShimmer, s(6))
		applyShimmer(vpShimmer, C.overlay, C.surfaceHi)
	end
	
	task.spawn(function()
		local attempt, fetchedTracks, trackToPlay = 0, nil, nil
		while myGen == masterRenderGen do
			fetchedTracks = get(itemPayload.Id, nil, itemPayload.AssetType)
			trackToPlay = (#fetchedTracks>0) and getSpecificTrack(fetchedTracks, lowerType) or nil
			if trackToPlay then break end
			attempt = attempt + 1
			statusLabel.Text = truncate(activeBundleName, 22) .. " • " .. displayType .. " (reloading..." .. attempt .. ")"
			clearAssetCache(itemPayload.Id)
			task.wait(math.min(0.5 + attempt * 0.3, 3))
		end
		
		if myGen ~= masterRenderGen then return end
		
		if trackToPlay then
			removeShimmer(statusLabel)
			if masterViewport:FindFirstChild("LoadingShimmer") then masterViewport.LoadingShimmer:Destroy() end
		end

		activeMasterType = assetTypeName
		statusLabel.Text = truncate(activeBundleName, 22) .. " • " .. displayType
		local isIdle = (lowerType == "idleanimation")
		if isIdle and fetchedTracks and #fetchedTracks > 1 then
			local pointer = 1
			while myGen == masterRenderGen and dummy and dummy.Parent do
				if activeMasterTrack then activeMasterTrack:Stop() end
				local ok, playedTrack = tryPlayTrack(animator, fetchedTracks[pointer], false)
				while not ok and myGen == masterRenderGen do
					clearAssetCache(itemPayload.Id)
					fetchedTracks = get(itemPayload.Id, nil, itemPayload.AssetType)
					pointer = pointer > #fetchedTracks and 1 or pointer
					task.wait(0.4); ok, playedTrack = tryPlayTrack(animator, fetchedTracks[pointer], false)
				end
				if myGen ~= masterRenderGen then return end
				activeMasterTrack = playedTrack; activeMasterTrack.Stopped:Wait()
				pointer = (pointer % #fetchedTracks) + 1
			end
		elseif trackToPlay then
			local ok, playedTrack = tryPlayTrack(animator, trackToPlay, true)
			while not ok and myGen == masterRenderGen do
				clearAssetCache(itemPayload.Id)
				task.wait(0.4)
				local reloaded = get(itemPayload.Id, nil, itemPayload.AssetType)
				trackToPlay = (#reloaded>0) and getSpecificTrack(reloaded, lowerType) or nil
				if trackToPlay then ok, playedTrack = tryPlayTrack(animator, trackToPlay, true) end
			end
			if myGen ~= masterRenderGen then return end
			activeMasterTrack = playedTrack
		end
	end)
end

for _, lowerType in ipairs(buttonOrder) do
	local btn = Instance.new("TextButton", buttonContainer)
	styleSlot(btn, "off")
	btn.Text, btn.Font, btn.TextSize, btn.AutoButtonColor = shortNames[lowerType], Enum.Font.GothamBold, s(11), false
	corner(btn, s(8))
	
	btn.MouseButton1Click:Connect(function()
		userSelectedAnimSlot = lowerType
		local payload = currentBundleItems[lowerType]
		if payload then
			wearSelectedBtn.Visible = true
			renderMasterTrack(payload, lowerType)
			for slot, b in pairs(animationButtons) do
				styleSlot(b, (slot == lowerType) and "selected" or (currentBundleItems[slot] and "available" or "off"))
			end
		end
	end)
	animationButtons[lowerType] = btn
end

local function refreshBookmarkBtn()
	if not activeBundleId then bookmarkBtn.Visible = false return end
	bookmarkBtn.Visible = true
	if savedBookmarks[tostring(activeBundleId)] then
		bookmarkBtn.Text, bookmarkBtn.TextColor3 = "Saved to Saved Tab", C.fav
	else
		bookmarkBtn.Text, bookmarkBtn.TextColor3 = "Save to Saved Tab", C.textMuted
	end
end

bookmarkBtn.MouseButton1Click:Connect(function()
	toggleBookmark(activeBundleId, activeBundleName)
	refreshBookmarkBtn()
	if currentTab == "Saved" then searchBtn.MouseButton1Click:Fire() end
end)

local function inspectBundleDetails(bundleId, bundleName)
	table.clear(currentBundleItems)
	wearSelectedBtn.Visible, wearAllBtn.Visible = false, false
	activeBundleName, activeBundleId = bundleName or "Unknown", bundleId
	statusLabel.Text = truncate(activeBundleName, 22) .. " • Loading..."
	applyShimmer(statusLabel, C.textDim, Color3.new(1,1,1))
	refreshBookmarkBtn()
	for _, btn in pairs(animationButtons) do styleSlot(btn, "off") end

	task.spawn(function()
		local ok, res = pcall(function() return as:GetBundleDetailsAsync(bundleId) end)
		if not ok or not res or not res.Items then 
			statusLabel.Text = truncate(activeBundleName, 22) .. " • Error" 
			removeShimmer(statusLabel)
			return 
		end
		targetBundleItems = res.Items
		wearAllBtn.Visible = true

		for _, item in ipairs(res.Items) do
			local lt = string.lower(item.AssetType or "")
			if lt == "swimanimation" then
				currentBundleItems["swimanimation"] = item; currentBundleItems["swimidleanimation"] = item
			elseif shortNames[lt] then
				currentBundleItems[lt] = item
			end
		end
		
		local slotToPlay = currentBundleItems[userSelectedAnimSlot] and userSelectedAnimSlot or "idleanimation"
		
		for slot, b in pairs(animationButtons) do
			if currentBundleItems[slot] then styleSlot(b, "available") end
		end
		
		if currentBundleItems[slotToPlay] then
			styleSlot(animationButtons[slotToPlay], "selected")
			wearSelectedBtn.Visible = true
			renderMasterTrack(currentBundleItems[slotToPlay], slotToPlay)
		else
			statusLabel.Text = truncate(activeBundleName, 22) .. " • Missing Anim"
			removeShimmer(statusLabel)
		end
	end)
end

local function clearActiveGridContext()
	for _, t in ipairs(activeGridThreads) do task.cancel(t) end
	activeGridThreads = {}
	for _, c in ipairs(gridScroller:GetChildren()) do if c:IsA("ViewportFrame") then c:Destroy() end end
end

local function drawGridPage(dataList)
	clearActiveGridContext()
	loadingOverlay.Visible = false
	local start = (currentPageIndex - 1) * itemsPerPage + 1
	local ending = math.min(currentPageIndex * itemsPerPage, #dataList)

	local COLS, GAP = 3, s(8)
	local usableWidth = LEFT_W - scrollW
	local boxWidth = math.floor((usableWidth - GAP * (COLS + 1)) / COLS)
	local boxHeight = s(96)
	local actionRowH = s(22)
	local nameRowH = s(16)

	local idx = 1
	for i = start, ending do
		local bundle = dataList[i]
		if not bundle then break end

		local col = (idx - 1) % COLS
		local row = math.floor((idx - 1) / COLS)
		local posX = GAP + col * (boxWidth + GAP)
		local posY = GAP + row * (boxHeight + GAP)

		local box = Instance.new("ViewportFrame", gridScroller)
		box.BackgroundColor3, box.BackgroundTransparency = C.panel, 0
		corner(box, s(10)); stroke(box, C.surfaceHi, 1)
		box.AnchorPoint = Vector2.new(0.5, 0.5)
		box.Position = UDim2.new(0, posX + boxWidth / 2, 0, posY + boxHeight / 2)
		box.Size = UDim2.new(0, 0, 0, 0)

		ts:Create(box, TweenInfo.new(0.3 + (idx * 0.05), Enum.EasingStyle.Back, Enum.EasingDirection.Out), {Size = UDim2.new(0, boxWidth, 0, boxHeight)}):Play()

		local skeleton = Instance.new("Frame", box)
		skeleton.Size, skeleton.BackgroundColor3, skeleton.BorderSizePixel, skeleton.ZIndex = UDim2.new(1, 0, 1, 0), C.panel, 0, 2
		corner(skeleton, s(10))
		applyShimmer(skeleton, C.panel, C.surfaceHi)

		local label = Instance.new("TextLabel", box)
		label.Size, label.Position, label.BackgroundColor3, label.BackgroundTransparency = UDim2.new(1, 0, 0, nameRowH), UDim2.new(0, 0, 1, -(nameRowH + actionRowH)), C.overlay, 0.35
		label.Text, label.TextColor3, label.Font, label.TextSize, label.ZIndex = truncate(bundle.Name, 12), C.text, Enum.Font.GothamBold, s(9), 3

		local hitBtn = Instance.new("TextButton", box)
		hitBtn.Size, hitBtn.Position, hitBtn.BackgroundTransparency, hitBtn.Text, hitBtn.ZIndex = UDim2.new(1, 0, 1, -actionRowH), UDim2.new(0, 0, 0, 0), 1, "", 4
		hitBtn.MouseEnter:Connect(function() box.BackgroundColor3 = C.surfaceHi end)
		hitBtn.MouseLeave:Connect(function() box.BackgroundColor3 = C.panel end)
		hitBtn.MouseButton1Click:Connect(function() inspectBundleDetails(bundle.Id, bundle.Name) end)

		if currentTab == "Saved" then
			local favBtn = Instance.new("TextButton", box)
			favBtn.Size, favBtn.Position, favBtn.BackgroundTransparency = UDim2.new(0, s(22), 0, s(22)), UDim2.new(1, -s(24), 0, s(2)), 1
			favBtn.Text, favBtn.Font, favBtn.TextSize, favBtn.ZIndex = (bundle.Fav and "★" or "☆"), Enum.Font.GothamBold, s(15), 5
			favBtn.TextColor3 = bundle.Fav and C.fav or C.textMuted

			favBtn.MouseButton1Click:Connect(function()
				local sId = tostring(bundle.Id)
				if savedBookmarks[sId] then
					savedBookmarks[sId].Fav = not savedBookmarks[sId].Fav
					saveJSON(SAVED_BUNDLES_FILE, savedBookmarks)

					bundle.Fav = savedBookmarks[sId].Fav
					favBtn.Text = bundle.Fav and "★" or "☆"
					favBtn.TextColor3 = bundle.Fav and C.fav or C.textMuted
				end
			end)
		end

		local cardActions = Instance.new("Frame", box)
		cardActions.Size, cardActions.Position, cardActions.BackgroundTransparency = UDim2.new(1, -s(6), 0, actionRowH - s(3)), UDim2.new(0, s(3), 1, -actionRowH), 1
		cardActions.ZIndex = 6

		local alreadySaved = savedBookmarks[tostring(bundle.Id)] ~= nil

		local saveCardBtn = Instance.new("TextButton", cardActions)
		saveCardBtn.Size, saveCardBtn.Position = UDim2.new(0.5, -s(2), 1, 0), UDim2.new(0, 0, 0, 0)
		saveCardBtn.BackgroundColor3, saveCardBtn.BackgroundTransparency = C.surfaceHi, 0
		saveCardBtn.Text = alreadySaved and "✓ Saved" or "+ Save"
		saveCardBtn.TextColor3 = alreadySaved and C.fav or C.textDim
		saveCardBtn.Font, saveCardBtn.TextSize, saveCardBtn.ZIndex = Enum.Font.GothamBold, s(9), 6
		corner(saveCardBtn, s(6))

		local wearCardBtn = Instance.new("TextButton", cardActions)
		wearCardBtn.Size, wearCardBtn.Position = UDim2.new(0.5, -s(2), 1, 0), UDim2.new(0.5, s(2), 0, 0)
		wearCardBtn.BackgroundColor3, wearCardBtn.BackgroundTransparency = C.accent, 0
		wearCardBtn.Text, wearCardBtn.TextColor3 = "▶ Wear", C.onLight
		wearCardBtn.Font, wearCardBtn.TextSize, wearCardBtn.ZIndex = Enum.Font.GothamBold, s(9), 6
		corner(wearCardBtn, s(6))

		saveCardBtn.MouseButton1Click:Connect(function()
			local nowSaved = toggleBookmark(bundle.Id, bundle.Name)
			saveCardBtn.Text = nowSaved and "✓ Saved" or "+ Save"
			saveCardBtn.TextColor3 = nowSaved and C.fav or C.textDim
			if activeBundleId == bundle.Id then refreshBookmarkBtn() end
			if currentTab == "Saved" and not nowSaved then
				searchBtn.MouseButton1Click:Fire()
			end
		end)

		wearCardBtn.MouseButton1Click:Connect(function()
			wearCardBtn.Text = "…"
			wearBundleQuickly(bundle.Id, function()
				if wearCardBtn and wearCardBtn.Parent then wearCardBtn.Text = "▶ Wear" end
			end)
		end)

		local dummy, animator, conn = buildViewportSkeleton(box)
		local loopThread = task.spawn(function()
			local ok, details = pcall(function() return as:GetBundleDetailsAsync(bundle.Id) end)
			if not ok or not details or not details.Items then return end
			local usableTracks = {}
			for _, subItem in ipairs(details.Items) do if m[string.lower(subItem.AssetType or "")] then table.insert(usableTracks, subItem) end end
			if #usableTracks == 0 then return end
			local tIdx, cellTrack = 1, nil
			while box and box.Parent do
				local subItem = usableTracks[tIdx]
				local assets = get(subItem.Id, bundle.Id, subItem.AssetType)
				if #assets > 0 then
					if cellTrack then cellTrack:Stop() end
					cellTrack = animator:LoadAnimation(assets[1]); cellTrack.Looped = true
					if skeleton.Parent then skeleton:Destroy() end
					cellTrack:Play()
				end
				task.wait(3.0); tIdx = (tIdx % #usableTracks) + 1
			end
		end)
		table.insert(activeGridThreads, loopThread)
		box.Destroying:Connect(function() task.cancel(loopThread); conn:Disconnect() end)

		idx = idx + 1
	end

	local rows = math.ceil(math.max(ending - start + 1, 0) / COLS)
	gridScroller.CanvasSize = UDim2.new(0, 0, 0, GAP + rows * (boxHeight + GAP))
	pageLbl.Text = "Page " .. tostring(currentPageIndex)
	prevBtn.BackgroundTransparency, prevBtn.TextColor3 = (currentPageIndex > 1) and 0 or 0.5, (currentPageIndex > 1) and C.text or C.textMuted
end

local function executeSearch(query)
	currentPageIndex = 1
	loadingOverlay.Visible, pageLbl.Text = true, "Loading..."
	
	if currentTab == "Saved" then
		savedTabList = {}
		local q = string.lower(query or "")
		for _, v in pairs(savedBookmarks) do
			if q == "" or string.lower(v.Name):find(q) then table.insert(savedTabList, v) end
		end
		table.sort(savedTabList, function(a, b)
			if a.Fav == b.Fav then return (a.Time or 0) > (b.Time or 0) end
			return a.Fav and not b.Fav
		end)
		drawGridPage(savedTabList)
	else
		searchResults, catalogCursor = {}, nil
		local p = CatalogSearchParams.new()
		p.SearchKeyword, p.BundleTypes, p.IncludeOffSale, p.Limit = query or "", {Enum.BundleType.Animations}, true, 120
		pcall(function() p.CreatorType = Enum.CreatorType.User end)
		pcall(function() p.SalesTypeFilter = Enum.SalesTypeFilter.All end)
		pcall(function() p.SortType = Enum.CatalogSortType.RecentlyCreated end)
		task.spawn(function()
			local ok, pages = pcall(function() return aes:SearchCatalog(p) end)
			if ok and pages then
				catalogCursor = pages
				searchResults = pages:GetCurrentPage()
				drawGridPage(searchResults)
			else
				pageLbl.Text, loadingOverlay.Text = "Error", "Search Error"
			end
		end)
	end
end

tabDiscoverBtn.MouseButton1Click:Connect(function()
	if currentTab == "Discover" then return end
	currentTab = "Discover"
	styleTab(tabDiscoverBtn, true); styleTab(tabSavedBtn, false); styleTab(tabDevBtn, false)
	setMainVisible(true)
	executeSearch(sb.Text)
end)

tabSavedBtn.MouseButton1Click:Connect(function()
	if currentTab == "Saved" then return end
	currentTab = "Saved"
	styleTab(tabSavedBtn, true); styleTab(tabDiscoverBtn, false); styleTab(tabDevBtn, false)
	setMainVisible(true)
	executeSearch(sb.Text)
end)

nextBtn.MouseButton1Click:Connect(function()
	local activeList = (currentTab == "Saved") and savedTabList or searchResults
	if (currentPageIndex * itemsPerPage < #activeList) then
		currentPageIndex = currentPageIndex + 1
		loadingOverlay.Visible = true; drawGridPage(activeList)
	elseif currentTab == "Discover" and catalogCursor and not catalogCursor.IsFinished then
		loadingOverlay.Visible, pageLbl.Text = true, "Loading..."
		task.spawn(function()
			local ok = pcall(function() catalogCursor:AdvanceToNextPageAsync() end)
			if ok then
				local nc = catalogCursor:GetCurrentPage()
				for _, v in ipairs(nc) do table.insert(searchResults, v) end
				currentPageIndex = currentPageIndex + 1; drawGridPage(searchResults)
			end
		end)
	end
end)

prevBtn.MouseButton1Click:Connect(function()
	if currentPageIndex > 1 then
		currentPageIndex = currentPageIndex - 1
		loadingOverlay.Visible = true; drawGridPage((currentTab == "Saved") and savedTabList or searchResults)
	end
end)

wearSelectedBtn.MouseButton1Click:Connect(function()
	if not activeMasterType or not lp.Character then return end
	wearSelectedBtn.Text = "Loading..."
	applyShimmer(wearSelectedBtn, C.green, Color3.new(1,1,1))
	local payload = currentBundleItems[string.lower(activeMasterType)]
	if payload then
		local tracks = get(payload.Id, nil, payload.AssetType)
		local tPlay = getSpecificTrack(tracks, string.lower(activeMasterType))
		if tPlay then preloadAnimations({tPlay}); applyAnimationToCharacter(lp.Character, {tPlay}, activeMasterType) end
	end
	wearSelectedBtn.Text = "Wear Selected"
	removeShimmer(wearSelectedBtn)
end)

wearAllBtn.MouseButton1Click:Connect(function()
	if not lp.Character then return end
	wearAllBtn.Text = "Loading..."
	applyShimmer(wearAllBtn, C.purple, Color3.new(1,1,1))
	applyBundleItemsToCharacter(currentBundleItems)
	wearAllBtn.Text = "Wear All"
	removeShimmer(wearAllBtn)
end)

tabDevBtn.MouseButton1Click:Connect(function()
	if currentTab == "Dev" then return end
	currentTab = "Dev"
	styleTab(tabDevBtn, true); styleTab(tabDiscoverBtn, false); styleTab(tabSavedBtn, false)
	setMainVisible(false)
end)

searchBtn.MouseButton1Click:Connect(function() executeSearch(sb.Text) end)
sb.FocusLost:Connect(function(enterPressed) if enterPressed then executeSearch(sb.Text) end end)

executeSearch("")
