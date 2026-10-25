-- ==========================================
-- [1] CanCollide Bypass สำหรับ Noclip
-- ป้องกันโค้ดฝั่งเกมที่พยายามเปิด CanCollide กลับ
-- ถ้า executor ไม่รองรับ hookmetamethod/checkcaller จะข้ามส่วนนี้
-- ==========================================
local CanCollideBypassInstalled = false
local OldIndex

pcall(function()
    if type(hookmetamethod) ~= "function" or type(checkcaller) ~= "function" then
        return
    end

    OldIndex = hookmetamethod(game, "__newindex", function(self, property, value)
        local objectName = tostring(self)
        local protectedPart = objectName == "Head"
            or objectName == "Torso"
            or objectName == "UpperTorso"
            or objectName == "LowerTorso"

        if protectedPart and property == "CanCollide" and not checkcaller() then
            return
        end

        return OldIndex(self, property, value)
    end)
    CanCollideBypassInstalled = true
end)

-- ==========================================
-- [2] ส่วนสคริปต์หลัก
-- ==========================================
local char=string.char;
local byte=string.byte;
local sub=string.sub;
local bitlib=bit32 or bit;
local bxor=bitlib.bxor;
local concat=table.concat;
local insert=table.insert;
local function xorDecode(encodedText, decodeKey) local decodedBytes={};
for v383=1, #v142 do insert(decodedBytes,char(bxor(byte(sub(v142,v383,v383 + 1 )),byte(sub(v143,1 + (v383% #v143) ,1 + (v383% #v143) + 1 )))%256 ))
end return concat(decodedBytes)
end local Players=game:GetService("Players")
repeat task.wait()
until game:IsLoaded() local LocalPlayer=Players.LocalPlayer or Players.PlayerAdded:Wait();
task.wait(1 )
print("--------------------------------------------------------")
print("Zero HUB • ชีวิตในคุก")
print("--------------------------------------------------------")
local SplashGui=Instance.new("ScreenGui")
SplashGui.Parent=game.CoreGui;
SplashGui.IgnoreGuiInset=true;
local SplashFrame=Instance.new("Frame")
SplashFrame.Parent=SplashGui;
SplashFrame.Size=UDim2.new(1 ,0,1 ,0)
SplashFrame.BackgroundColor3=Color3.fromRGB(0,0 ,186 -(186) )
local SplashText=Instance.new("TextLabel")
SplashText.Parent=SplashFrame;
SplashText.Size=UDim2.new(1,0,0 ,50)
SplashText.Position=UDim2.new(1397 -(1397) ,1402 -(1402) ,0.82,743 -(743) )
SplashText.BackgroundTransparency=1283 -(1282);
SplashText.Text="Zero HUB";
SplashText.TextColor3=Color3.new(1938 -(1937) ,1 ,1)
SplashText.TextScaled=true;
local TweenService=game:GetService("TweenService")
task.wait(2.5)
TweenService:Create(SplashFrame,TweenInfo.new(0.5 ),{["BackgroundTransparency"]=1 }):Play()
TweenService:Create(SplashText,TweenInfo.new(0.5),{["TextTransparency"]=1 }):Play()
task.wait(0.6 )
SplashGui:Destroy()
print("[INFO] Loading Obsidian...")
local ObsidianBaseURL="https://raw.githubusercontent.com/deividcomsono/Obsidian/main/";
local Library=loadstring(game:HttpGet(ObsidianBaseURL   .. "Library.lua" ))()
local ThemeManager=loadstring(game:HttpGet(ObsidianBaseURL   .. "addons/ThemeManager.lua" ))()
local SaveManager=loadstring(game:HttpGet(ObsidianBaseURL   .. "addons/SaveManager.lua" ))()
print("[OK] Obsidian loaded!")
local Window=Library:CreateWindow({
    ["Title"]="Zero HUB",
    ["Footer"]="ชีวิตในคุก",
    ["Icon"]=119174844327238,
    ["IconSize"]=UDim2.fromOffset(40,40),
    ["CornerRadius"]=20,
    ["NotifySide"]="Right",
    ["ShowCustomCursor"]=false,
    ["ShowMobileButtons"]=false,
    ["ToggleKeybind"]=Enum.KeyCode.LeftControl,
    ["Size"]=UDim2.fromOffset(520,390),
    ["EnableSidebarResize"]=false,
    ["EnableCompacting"]=true,
    ["SidebarCompacted"]=true
})
pcall(function()
    Window:SetBackgroundImage("rbxassetid://94391249583867")
end)

-- Floating Z toggle button adapted from CreateToggleButton in Zero HUB Thai.lua
local function CreateToggleButton(iconId)
    local toggleGui = Instance.new("ScreenGui")
    toggleGui.Name = "FallensToggle"
    toggleGui.ResetOnSpawn = false
    toggleGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
    local parent = game:GetService("CoreGui")
    pcall(function()
        if gethui then parent = gethui() end
    end)
    toggleGui.Parent = parent

    local button = Instance.new("TextButton")
    button.Name = "ToggleButton"
    button.Text = ""
    button.AutoButtonColor = false
    button.Size = UDim2.fromOffset(46, 46)
    button.Position = UDim2.fromOffset(15, 120)
    button.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
    button.BackgroundTransparency = 0.05
    button.ClipsDescendants = true
    button.Parent = toggleGui

    local corner = Instance.new("UICorner")
    corner.CornerRadius = UDim.new(0, 10)
    corner.Parent = button

    local stroke = Instance.new("UIStroke")
    stroke.Color = Color3.fromRGB(255, 255, 255)
    stroke.Thickness = 1.2
    stroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
    stroke.Parent = button

    local glow = Instance.new("UIStroke")
    glow.Color = Color3.fromRGB(255, 255, 255)
    glow.Thickness = 4
    glow.Transparency = 0.6
    glow.Parent = button

    local iconFrame = Instance.new("Frame")
    iconFrame.Size = UDim2.fromScale(0.75, 0.75)
    iconFrame.Position = UDim2.fromScale(0.125, 0.125)
    iconFrame.BackgroundTransparency = 1
    iconFrame.ClipsDescendants = true
    iconFrame.Parent = button

    local iconInfo
    pcall(function() iconInfo = Library:GetCustomIcon(iconId) end)
    if iconInfo and iconInfo.Url then
        local icon = Instance.new("ImageLabel")
        icon.BackgroundTransparency = 1
        icon.Image = iconInfo.Url
        icon.ImageRectOffset = iconInfo.ImageRectOffset
        icon.ImageRectSize = iconInfo.ImageRectSize
        icon.Size = UDim2.fromScale(1, 1)
        icon.Position = UDim2.fromScale(0, 0)
        icon.ScaleType = Enum.ScaleType.Fit
        icon.Parent = iconFrame
    else
        button.Text = "Z"
        button.TextColor3 = Color3.new(1, 1, 1)
        button.TextSize = 20
        button.Font = Enum.Font.GothamBold
    end

    local TweenService = game:GetService("TweenService")
    button.MouseEnter:Connect(function()
        TweenService:Create(button, TweenInfo.new(0.15), {
            BackgroundColor3 = Color3.fromRGB(40, 40, 40)
        }):Play()
    end)
    button.MouseLeave:Connect(function()
        TweenService:Create(button, TweenInfo.new(0.15), {
            BackgroundColor3 = Color3.fromRGB(0, 0, 0)
        }):Play()
    end)
    button.MouseButton1Click:Connect(function()
        TweenService:Create(button, TweenInfo.new(0.08), {Size = UDim2.fromOffset(40, 40)}):Play()
        task.wait(0.08)
        TweenService:Create(button, TweenInfo.new(0.08), {Size = UDim2.fromOffset(46, 46)}):Play()
        Library:Toggle()
    end)
    pcall(function() Library:MakeDraggable(button, button, true) end)
    return button, toggleGui
end

CreateToggleButton(101603563351741)
pcall(function()
    Library.Scheme.AccentColor=Color3.fromRGB(255,255,255)
    Library.Scheme.BackgroundColor=Color3.fromRGB(0,0,0)
    Library.Scheme.MainColor=Color3.fromRGB(0,0,0)
    Library.Scheme.OutlineColor=Color3.fromRGB(255,255,255)
    Library.Scheme.FontColor=Color3.fromRGB(255,255,255)
end)
local RunService=game:GetService("RunService")
local UserInputService=game:GetService("UserInputService")
local ReplicatedStorage=game:GetService("ReplicatedStorage")
local Workspace=game:GetService("Workspace")
local Debris=game:GetService("Debris")
local Camera=Workspace.CurrentCamera;

-- ===== Unlimited Camera Zoom =====
-- ทำงานอัตโนมัติเมื่อสคริปต์เริ่ม และคืนค่ากล้องเดิมตอน unload
local UnlimitedZoomEnabled = true
local OriginalCameraMaxZoomDistance
local UnlimitedZoomConnection

pcall(function()
    OriginalCameraMaxZoomDistance = LocalPlayer.CameraMaxZoomDistance
    LocalPlayer.CameraMaxZoomDistance = 1000000
end)

UnlimitedZoomConnection = RunService.Heartbeat:Connect(function()
    if not UnlimitedZoomEnabled then return end
    pcall(function()
        if LocalPlayer.CameraMaxZoomDistance < 1000000 then
            LocalPlayer.CameraMaxZoomDistance = 1000000
        end
    end)
end)

local function disableUnlimitedZoom()
    UnlimitedZoomEnabled = false
    if UnlimitedZoomConnection then
        UnlimitedZoomConnection:Disconnect()
        UnlimitedZoomConnection = nil
    end
    if OriginalCameraMaxZoomDistance then
        pcall(function()
            LocalPlayer.CameraMaxZoomDistance = OriginalCameraMaxZoomDistance
        end)
    end
end
local Player=Players.LocalPlayer;
local Teams=game:GetService("Teams")
local GuardsTeam=Teams:FindFirstChild("Guards")
local InmatesTeam=Teams:FindFirstChild("Inmates")
local CriminalsTeam=Teams:FindFirstChild("Criminals")
local Settings={["enabled"]=true,["teamcheck"]=true,["wallcheck"]=true,["deathcheck"]=true,["ffcheck"]=true,["vehiclecheck"]=true,["criminalsnoinnmates"]=true,["inmatesnocriminals"]=true,["shieldbreaker"]=true,["hitchance"]=341 -(241) ,["fov"]=150,["showfov"]=true,["aimpart"]="Head",["randomparts"]=false,["partslist"]={"Head","Torso","Left Arm","Right Arm"},["missspread"]=5,["autoshoot"]=true,["autoshootdelay"]=0.12 ,["autoshootstartdelay"]=0.2 ,["prioritizeclosest"]=true,["targetstickiness"]=true,["targetstickinessduration"]=0.6 ,["Aimbot"]={["Enabled"]=false,["FOV"]=100 ,["Smoothness"]=0.5 ,["TargetPart"]="Head",["TeamCheck"]=true,["VisibleCheck"]=true,["IgnoreIfSilentAim"]=true},["esp"]=true,["espShowBox"]=true,["espShowName"]=true,["espShowHealth"]=true,["espShowDistance"]=true,["espMaxDistance"]=500 ,["espBoxThickness"]=2 ,["espTextSize"]=13 ,["fireRateMultiplier"]=1 ,["infiniteAmmo"]=false,["autoReload"]=false,["autoReloadThreshold"]=5,["vehicleSpeedEnabled"]=false,["vehicleSpeed"]=150};
local CurrentTarget=nil;
-- ===== Vehicle Speed v2 =====
-- Applies to VehicleSeat plus the vehicle's network-owned root assembly.
local VehicleOriginalValues = setmetatable({}, { __mode = "k" })
local VehicleSpeedLastUpdate = 0

local function restoreVehicleSpeeds()
    for seat, values in pairs(VehicleOriginalValues) do
        if seat and seat.Parent then
            pcall(function()
                seat.MaxSpeed = values.maxSpeed
                seat.Torque = values.torque
                seat.TurnSpeed = values.turnSpeed
            end)
        end
        VehicleOriginalValues[seat] = nil
    end
end

local function getVehicleRoot(seat)
    local root = seat.AssemblyRootPart
    if root and root:IsA("BasePart") then
        return root
    end
    local model = seat:FindFirstAncestorOfClass("Model")
    if model and model.PrimaryPart then
        return model.PrimaryPart
    end
    return seat
end

local function updateVehicleSpeed()
    if not Settings.vehicleSpeedEnabled then
        restoreVehicleSpeeds()
        return
    end
    local now = os.clock()
    if now - VehicleSpeedLastUpdate < 0.05 then
        return
    end
    VehicleSpeedLastUpdate = now

    local character = Player.Character
    local humanoid = character and character:FindFirstChildOfClass("Humanoid")
    local seat = humanoid and humanoid.SeatPart
    if not seat or not seat:IsA("VehicleSeat") then
        return
    end

    if not VehicleOriginalValues[seat] then
        VehicleOriginalValues[seat] = {
            maxSpeed = seat.MaxSpeed,
            torque = seat.Torque,
            turnSpeed = seat.TurnSpeed,
        }
    end

    local wanted = math.clamp(tonumber(Settings.vehicleSpeed) or 150, 20, 500)
    pcall(function()
        seat.MaxSpeed = wanted
        seat.Torque = math.max(seat.Torque, wanted * 2)
        seat.TurnSpeed = math.max(seat.TurnSpeed, wanted * 0.5)
        seat:SetAttribute("MaxSpeed", wanted)
        seat:SetAttribute("VehicleSpeed", wanted)
    end)

    local throttle = seat.ThrottleFloat
    if math.abs(throttle) > 0.01 then
        local root = getVehicleRoot(seat)
        if root and root:IsA("BasePart") then
            local current = root.AssemblyLinearVelocity
            local direction = seat.CFrame.LookVector * throttle
            local horizontal = Vector3.new(direction.X, 0, direction.Z)
            if horizontal.Magnitude > 0.01 then
                horizontal = horizontal.Unit * wanted
                pcall(function()
                    root.AssemblyLinearVelocity = Vector3.new(horizontal.X, current.Y, horizontal.Z)
                end)
            end
        end
    end
end

RunService.Heartbeat:Connect(function()
    pcall(updateVehicleSpeed)
end)

local RandomGenerator=Random.new()
local LastShotTime=0;
local AutoShootLoopActive=false;
local AutoShootDelay=0.15;
local TargetPartOverride=nil;
local TargetIndex=0;
local TargetPlayer=nil;
local SilentAimActive=false;
local ShotsFired=1234 -(1234);
local LastTargetDistance=0;
local SilentAimConnection=nil;
local InputConnection=nil;
local ESPObjects={};
local FOVCircle;
local DrawingSupported=pcall(function() local v147=0;
local v148;
while true do if (v147==0) then v148=Drawing.new("Circle")
v148:Remove()
break;
end end end)
if DrawingSupported then local v384=0;
local v385;
while true do if (0==v384) then v385=0;
while true do if (v385==(0)) then FOVCircle=Drawing.new("Circle")
FOVCircle.Color=Color3.fromRGB(255 ,1223 -(968) ,255)
v385=1;
end if (v385==3) then FOVCircle.Thickness=803 -(801);
FOVCircle.Visible=false;
v385=4;
end if (2==v385) then FOVCircle.Filled=false;
FOVCircle.NumSides=64;
v385=331 -(328);
end if (4==v385) then print("[OK] FOV Circle created!")
break;
end if (v385==1) then FOVCircle.Radius=Settings.fov;
FOVCircle.Transparency=0.8;
v385=849 -(847);
end end break;
end end end local AimbotConnection=nil;
-- ===== Aimbot / Targeting =====
local function isAlive(v149) if ( not v149 or  not v149.Character) then return false;
end local v150=v149.Character:FindFirstChildOfClass("Humanoid")
return v150 and (v150.Health>(0));
end local function isVisible(v151) if  not Settings.Aimbot.VisibleCheck then return true;
end if  not isAlive(v151) then return false;
end local v152=v151.Character:FindFirstChild(Settings.Aimbot.TargetPart)
if  not v152 then return false;
end local v153=Camera.CFrame.Position;
local v154=v152.Position-v153;
local v155=RaycastParams.new()
v155.FilterDescendantsInstances={Player.Character};
v155.FilterType=Enum.RaycastFilterType.Blacklist;
local v159=workspace:Raycast(v153,v154,v155)
return v159 and v159.Instance and v159.Instance:IsDescendantOf(v151.Character);
end local function getAimbotTarget() local v160=1672 -(1672);
local v161;
local v162;
local v163;
while true do if (2==v160) then return v161;
end if (1==v160) then local v435=0;
while true do if (v435==1) then v160=2;
break;
end if (v435==0) then v163=Vector2.new(Camera.ViewportSize.X/(2) ,Camera.ViewportSize.Y/(2) )
for v606,v607 in ipairs(Players:GetPlayers()) do if ((v607~=Player) and isAlive(v607)) then if (Settings.Aimbot.TeamCheck and (v607.Team==Player.Team)) then else local v677=v607.Character:FindFirstChild(Settings.Aimbot.TargetPart)
if v677 then local v705=0;
local v706;
local v707;
while true do if (v705==0) then v706,v707=Camera:WorldToViewportPoint(v677.Position)
if (v707 and (v706.Z>0)) then local v736=(Vector2.new(v706.X,v706.Y) -v163).Magnitude;
if ((v736<v162) and isVisible(v607)) then v162=v736;
v161=v607;
end end break;
end end end end end end v435=1;
end end end if (v160==(0)) then v161=nil;
v162=Settings.Aimbot.FOV;
v160=1;
end end end local function updateAimbot() local v164=0;
local v165;
local v166;
local v167;
local v168;
local v169;
while true do if (v164==1) then local v437=0;
while true do if (v437==(0)) then v167=nil;
v168=nil;
v437=1;
end if ((1)==v437) then v164=2;
break;
end end end if (v164==(494 -(494))) then v165=0;
v166=nil;
v164=364 -(363);
end if (v164==(2)) then v169=nil;
while true do if (v165==(721 -(721))) then local v573=0;
while true do if (v573==1) then v165=1;
break;
end if (0==v573) then v166=getAimbotTarget()
if  not v166 then return;
end v573=1;
end end end if (v165==(1661 -(1658))) then Camera.CFrame=Camera.CFrame:Lerp(v169,Settings.Aimbot.Smoothness)
break;
end if (v165==(1900 -(1899))) then v167=v166.Character and v166.Character:FindFirstChild(Settings.Aimbot.TargetPart);
if  not v167 then return;
end v165=1371 -(1369);
end if (v165==(190 -(188))) then v168=Camera.CFrame.Position;
v169=CFrame.new(v168,v167.Position)
v165=3;
end end break;
end end end local function enableAimbot() if AimbotConnection then return;
end AimbotConnection=RunService.RenderStepped:Connect(function() if  not Settings.Aimbot.Enabled then return;
end if (Settings.Aimbot.IgnoreIfSilentAim and Settings.enabled) then return;
end pcall(updateAimbot)
end)
print("[OK] Aimbot enabled")
end local function disableAimbot() if AimbotConnection then AimbotConnection:Disconnect()
AimbotConnection=nil;
end print("[INFO] Aimbot disabled")
end print("[OK] Aimbot system loaded!")
local AimRaycastParams=RaycastParams.new()
AimRaycastParams.FilterType=Enum.RaycastFilterType.Exclude;
AimRaycastParams.IgnoreWater=true;
local BodyPartAliases={["Torso"]={"Torso","UpperTorso","LowerTorso"},["Left Arm"]={"Left Arm","LeftUpperArm","LeftLowerArm"},["Right Arm"]={"Right Arm","RightUpperArm","RightLowerArm"},["Left Leg"]={"Left Leg","LeftUpperLeg","LeftLowerLeg"},["Right Leg"]={"Right Leg","RightUpperLeg","RightLowerLeg"}};
-- ===== Silent Aim / Hit Validation =====
-- Readability pass 16: obvious parameter names only; control-flow preserved.
local function findBodyPart(character,partName) if  not character then return nil;
end local v172=character:FindFirstChild(partName)
if v172 then return v172;
end local v173=BodyPartAliases[partName];
if v173 then for v438,v439 in ipairs(v173) do local v440=1709 -(1709);
local v441;
while true do if (v440==(1597 -(1597))) then v441=character:FindFirstChild(v439)
if v441 then return v441;
end break;
end end end end return character:FindFirstChild("HumanoidRootPart") or character:FindFirstChild("Head");
end local function getAimPart(character) if  not character then return nil;
end if Settings.shieldbreaker then local v410=character:FindFirstChild("RiotShieldPart")
if (v410 and v410:IsA("BasePart")) then local v506=838 -(838);
local v507;
while true do if (0==v506) then v507=v410:GetAttribute("Health")
if (v507 and (v507>0)) then return v410;
end break;
end end end end local v175;
if Settings.randomparts then local v411=0;
local v412;
while true do if (v411==(0)) then v412=Settings.partslist;
v175=(v412 and ( #v412>(0)) and v412[RandomGenerator:NextInteger(1 , #v412)]) or "Head";
break;
end end else v175=Settings.aimpart;
end return findBodyPart(character,v175)
end local function isDead(player) local v177=765 -(765);
local v178;
while true do local v386=0;
while true do if (v386==0) then if (v177==0) then if ( not player or  not player.Character) then return true;
end v178=player.Character:FindFirstChildOfClass("Humanoid")
v177=1396 -(1395);
end if (v177==(1)) then return  not v178 or (v178.Health<=0);
end break;
end end end end local function hasForceField(player) if ( not player or  not player.Character) then return false;
end return player.Character:FindFirstChildOfClass("ForceField")~=nil;
end local function isInVehicle(player) local v181=0;
local v182;
while true do if ((0)==v181) then if ( not player or  not player.Character) then return false;
end v182=player.Character:FindFirstChildOfClass("Humanoid")
v181=1351 -(1350);
end if (v181==(1)) then if  not v182 then return false;
end return v182.SeatPart~=nil;
end end end local function hasLineOfSight(v183,v184,v185) local v186=0;
local v187;
local v188;
local v189;
local v190;
local v191;
while true do if (v186==(1)) then v188={v187};
if v185 then table.insert(v188,v185)
end v186=1883 -(1881);
end if (v186==3) then v190=Workspace:Raycast(v183,v189,AimRaycastParams)
if  not v190 then return false;
end v186=1776 -(1772);
end if (v186==(266 -(262))) then local v442=0;
while true do if (v442==0) then v191=v190.Instance;
return  not (v191 and v191:IsDescendantOf(v185))
end end end if (v186==2) then AimRaycastParams.FilterDescendantsInstances=v188;
v189=v184-v183;
v186=780 -(777);
end if ((0)==v186) then v187=Player.Character;
if  not v187 then return true;
end v186=1;
end end end local function isValidTarget(v192) if ( not v192 or (v192==Player) or  not v192.Character) then return false;
end if  not getAimPart(v192.Character) then return false;
end if (Settings.deathcheck and isDead(v192)) then return false;
end if (Settings.ffcheck and hasForceField(v192)) then return false;
end if (Settings.vehiclecheck and isInVehicle(v192)) then return false;
end if (Settings.teamcheck and (v192.Team==Player.Team)) then return false;
end if Settings.criminalsnoinnmates then if ((Player.Team==CriminalsTeam) and (v192.Team==InmatesTeam)) then return false;
end end if Settings.inmatesnocriminals then if ((Player.Team==InmatesTeam) and (v192.Team==CriminalsTeam)) then return false;
end end return true;
end local function isTargetValid(v193) if  not isValidTarget(v193) then return false;
end if Settings.wallcheck then local v414=0;
local v415;
local v416;
local v417;
while true do if (v414==1) then v417=getAimPart(v193.Character)
if (v416 and v417) then if hasLineOfSight(v416.Position,v417.Position,v193.Character) then return false;
end end break;
end if (v414==(1675 -(1675))) then v415=Player.Character;
v416=v415 and v415:FindFirstChild("Head");
v414=1;
end end end return true;
end local function rollHitChance() local v194=0;
local v195;
while true do local v387=0;
while true do if (v387==(549 -(549))) then if (v194==1) then return AutoShootLoopActive;
end if ((0)==v194) then v195=os.clock()
if ((v195-LastShotTime)>AutoShootDelay) then local v635=105 -(105);
local v636;
while true do if (v635==(1)) then if (v636>=(100)) then AutoShootLoopActive=true;
elseif (v636<=(0)) then AutoShootLoopActive=false;
else AutoShootLoopActive=RandomGenerator:NextInteger(763 -(762) ,100 )<=v636;
end break;
end if (v635==(0)) then LastShotTime=v195;
v636=Settings.hitchance;
v635=1;
end end end v194=1;
end break;
end end end end local function applyMissSpread(v196) local v197=0;
local v198;
local v199;
local v200;
local v201;
while true do if (v197==0) then v198=Settings.missspread;
v199=RandomGenerator:NextNumber() * math.pi * (2);
v197=1;
end if (v197==(2)) then return v196 + Vector3.new(math.cos(v199) * v200 ,v201,math.sin(v199) * v200 );
end if ((508 -(507))==v197) then v200=RandomGenerator:NextNumber() * v198;
v201=(RandomGenerator:NextNumber() -(0.5)) * v198;
v197=2;
end end end local function getSilentAimTarget(fovRadius) fovRadius=fovRadius or Settings.fov;
local camera=Camera;
if not camera then return nil,nil;
end local inputType=UserInputService:GetLastInputType()
local isTouchOrLocked=(inputType==Enum.UserInputType.Touch) or (UserInputService.MouseBehavior==Enum.MouseBehavior.LockCenter);
local v206;
if isTouchOrLocked then local v418=0;
local v419;
while true do if (v418==0) then v419=camera.ViewportSize;
v206=Vector2.new(v419.X/(2) ,v419.Y/2 )
break;
end end else v206=UserInputService:GetMouseLocation()
end local v207=os.clock()
if (Settings.targetstickiness and TargetPartOverride and ((v207-TargetIndex)<Settings.targetstickinessduration)) then if isTargetValid(TargetPartOverride) then local v508=0;
local v509;
while true do if (v508==(0)) then v509=getAimPart(TargetPartOverride.Character)
if v509 then local v647=0;
local v648;
local v649;
local v650;
while true do if (v647==0) then v648=0;
v649=nil;
v647=1;
end if (v647==(87 -(86))) then v650=nil;
while true do if ((0)==v648) then v649,v650=camera:WorldToViewportPoint(v509.Position)
if (v650 and (v649.Z>0)) then local v729=(Vector2.new(v649.X,v649.Y) -v206).Magnitude;
if v729<fovRadius then return TargetPartOverride,v509.Position;
end end break;
end end break;
end end end break;
end end end end local v208={};
for v388,v389 in ipairs(Players:GetPlayers()) do if isValidTarget(v389) then local v446=getAimPart(v389.Character)
if v446 then local v543,v544=camera:WorldToViewportPoint(v446.Position)
if (v544 and (v543.Z>(181 -(181)))) then local v608=(Vector2.new(v543.X,v543.Y) -v206).Magnitude;
if v608<fovRadius then v208[ #v208 + (1) ]={["player"]=v389,["dist"]=v608,["part"]=v446};
end end end end end if Settings.prioritizeclosest then table.sort(v208,function(v447,v448) return v447.dist<v448.dist;
end)
end for v390,v391 in ipairs(v208) do if isTargetValid(v391.player) then local v449=0;
while true do if (v449==(0)) then if (v391.player~=TargetPartOverride) then local v637=0;
local v638;
while true do if (v637==(0)) then v638=380 -(380);
while true do if ((1083 -(1083))==v638) then TargetPartOverride=v391.player;
TargetIndex=v207;
break;
end end break;
end end end return v391.player,v391.part.Position;
end end end end TargetPartOverride=nil;
return nil,nil;
end local function identityFunction(v209) return function(...) return v209(...)
end;
end local function hookCastRay() local castRayFunction=nil;
pcall(function() local v392=0;
local v393;
while true do if (v392==(230 -(230))) then v393=filtergc("function",{["Name"]="castRay"},true)
if v393 then if ((type(v393)=="table") and ( #v393>0)) then castRayFunction=v393[114 -(113) ];
elseif (type(v393)=="function") then castRayFunction=v393;
end end break;
end end end)
if  not castRayFunction then pcall(function() for v510,v511 in pairs(getgc(true)) do if (type(v511)=="function") then local v577=debug.getinfo(v511)
if (v577 and (v577.name=="castRay")) then castRayFunction=v511;
break;
end end end end)
end if ( not castRayFunction or (type(castRayFunction)~="function")) then local v420=0;
while true do if (v420==0) then warn("[ERROR] Not foi possible encontrar castRay")
return false;
end end end local hookSucceeded=pcall(function() TargetPlayer=hookfunction(castRayFunction,identityFunction(function(rayOrigin,rayDirection,...) local hookState=0;
local silentTarget;
local silentPosition;
while true do if (hookState==(0)) then if  not Settings.enabled then return TargetPlayer(rayOrigin,rayDirection,...)
end silentTarget,silentPosition=getSilentAimTarget(Settings.fov)
hookState=1;
end if (hookState==1) then if (silentTarget and silentTarget.Character) then local v609=1036 -(1036);
local v610;
while true do if (v609==0) then v610=rollHitChance()
if v610 then local v687=0;
local v688;
while true do if (v687==(0)) then v688=getAimPart(silentTarget.Character)
if v688 then return v688,v688.Position;
end break;
end end elseif (Settings.missspread>(0)) then local v711=0;
local v712;
while true do if (v711==(811 -(811))) then v712=getAimPart(silentTarget.Character)
if v712 then local v737=0;
local v738;
while true do if (v737==(0)) then v738=applyMissSpread(v712.Position)
return TargetPlayer(rayOrigin,v738,...)
end end end break;
end end end break;
end end end return TargetPlayer(rayOrigin,rayDirection,...)
end end end))
end)
if hookSucceeded then print("[OK] castRay hooked successfully!")
return true;
else local v426=0;
while true do if ((589 -(589))==v426) then warn("[ERROR] Failed to hook castRay")
return false;
end end end end local v93=hookCastRay()
if  not v93 then SilentAimActive=false;
task.spawn(function() local v427=0;
local v428;
while true do if (v427==0) then v428=0;
while true do if (v428==0) then for v652=1 ,10 do task.wait(0.5)
if hookCastRay() then SilentAimActive=true;
print("[OK] castRay hooked after attempt "   .. v652 )
Library:Notify({["Title"]="[OK] Silent Aim",["Description"]="Hook succeeded!",["Time"]=3 })
break;
end end if  not SilentAimActive then warn("[ERROR] Failed to hook castRay after 10 attempts")
end break;
end end break;
end end end)
else SilentAimActive=true;
end local v94=nil;
local v95=nil;
pcall(function() v94=ReplicatedStorage:FindFirstChild("GunRemotes")
if v94 then v95=v94:FindFirstChild("FuncReload")
end end)
if v95 then print("[OK] FuncReload found!")
else warn("[ERROR] FuncReload not encontrado")
end -- ===== Weapon Mods / Shooting =====
local function updateFireRate(weapon) if  not weapon then return;
end local originalFireRate=weapon:GetAttribute("OriginalFireRate")
if  not originalFireRate then originalFireRate=weapon:GetAttribute("FireRate") or 0.12;
weapon:SetAttribute("OriginalFireRate",originalFireRate)
end local newFireRate=originalFireRate/Settings.fireRateMultiplier;
weapon:SetAttribute("FireRate",newFireRate)
end

-- ===== Replacement weapon mod / unlimited-ammo helper =====
-- Uses the requested tool attributes and runs in a spawned task so it does not
-- block the rest of the UI/script from loading.
local function applyGunMod(tool)
    if not tool or not tool:IsA("Tool") then
        return
    end
    tool:SetAttribute("FireRate", 0)
    tool:SetAttribute("ReloadTime", 0)
end

local function scanAllGunTools()
    local backpack = Player:FindFirstChildOfClass("Backpack")
    if backpack then
        for _, tool in ipairs(backpack:GetChildren()) do
            if Settings.infiniteAmmo then
                applyGunMod(tool)
            end
        end
    end

    local character = Player.Character
    if character then
        for _, tool in ipairs(character:GetChildren()) do
            if Settings.infiniteAmmo then
                applyGunMod(tool)
            end
        end
    end
end

task.spawn(function()
    while true do
        if Settings.infiniteAmmo then
            pcall(scanAllGunTools)
        end
        task.wait(1)
    end
end)

local v98=0
local function autoReload(weapon)
    if not weapon or not Settings.autoReload then
        return
    end
    local currentTime=tick()
    local currentAmmo=weapon:GetAttribute("Local_CurrentAmmo") or weapon:GetAttribute("CurrentAmmo") or 0
    if currentAmmo<=Settings.autoReloadThreshold and (currentTime-v98)>=0.2 then
        v98=currentTime
        if v95 then
            pcall(function() v95:InvokeServer() end)
        end
    end
end
local LastWeaponModUpdate=0;
RunService.Heartbeat:Connect(function() local v222=0;
local v223;
local v224;
while true do if (v222==(0)) then local v450=0;
local v451;
while true do if (v450==(0)) then v451=0;
while true do if (v451==(1037 -(1036))) then v222=1;
break;
end if ((0)==v451) then v223=tick()
if ((v223-LastWeaponModUpdate)<(905.05 -(905))) then return;
end v451=1;
end end break;
end end end if (v222==(1675 -(1673))) then if  not v224 then return;
end pcall(function() updateFireRate(v224)
updateAmmoDisplay(v224)
autoReload(v224)
end)
break;
end if (v222==(1)) then LastWeaponModUpdate=v223;
v224=CurrentTarget;
v222=268 -(266);
end end end)
print("[OK] Weapon Mods loaded!")
local ShootEvent=ReplicatedStorage:WaitForChild("GunRemotes"):WaitForChild("ShootEvent")
local function getEquippedGun() local v225=0;
local v226;
while true do if (v225==(1)) then for v512,v513 in ipairs(v226:GetChildren()) do if (v513:IsA("Tool") and (v513:GetAttribute("ToolType")=="Gun")) then return v513;
end end return nil;
end if (v225==0) then v226=Player.Character;
if  not v226 then return nil;
end v225=1;
end end end local function createBulletTrail(v227,v228,v229) local v230=0;
local v231;
local v232;
while true do if (v230==(0)) then v231=(v228-v227).Magnitude;
v232=Instance.new("Part")
v232.Name="BulletTrail";
v232.Anchored=true;
v230=338 -(337);
end if (v230==(2)) then v232.Size=Vector3.new(0.1,0.1,v231)
v232.CFrame=CFrame.new(v227,v228) * CFrame.new(0 ,1470 -(1470) , -v231/(1673 -(1671)) );
v232.Transparency=58.5 -(58);
if v229 then v232.BrickColor=BrickColor.new("Cyan")
v232.Size=Vector3.new(0.2,0.2 ,v231)
else v232.BrickColor=BrickColor.Yellow()
end v230=3;
end if (v230==(1)) then v232.CanCollide=false;
v232.CanQuery=false;
v232.CanTouch=false;
v232.Material=Enum.Material.Neon;
v230=2;
end if ((3)==v230) then v232.Parent=workspace;
Debris:AddItem(v232,(v229 and 0.8) or 0.1 )
break;
end end end local function autoShoot() local v233=0;
local currentTime;
local fireRate;
local character;
local head;
local muzzle;
local muzzlePosition;
local silentTarget;
local targetDistance;
local aimPart;
local currentAmmo;
local isTaser;
local hitConfirmed;
local projectileCount;
local shotData;
local remainingAmmo;
local weaponHandle;
while true do if (v233==2) then silentTarget,targetDistance=getSilentAimTarget(Settings.fov)
if ( not silentTarget or  not isTargetValid(silentTarget)) then local v549=0;
while true do if (v549==0) then SilentAimConnection=nil;
return;
end end end if (silentTarget~=SilentAimConnection) then local v550=0;
while true do if (v550==(0)) then LastTargetDistance=currentTime;
SilentAimConnection=silentTarget;
break;
end end end if ((currentTime-LastTargetDistance)<Settings.autoshootstartdelay) then return;
end aimPart=getAimPart(silentTarget.Character)
v233=3;
end if (v233==(4)) then local v465=0;
while true do if (v465==(1590 -(1589))) then shotData={};
for v616=1 ,projectileCount do local v617=754 -(754);
local v618;
while true do if (v617==0) then v618=nil;
if hitConfirmed then v618=aimPart.Position;
elseif (Settings.missspread>0) then v618=applyMissSpread(aimPart.Position)
else return;
end v617=1;
end if (v617==1) then shotData[v616]={head.Position,v618,(hitConfirmed and aimPart) or nil };
createBulletTrail(muzzlePosition,v618,isTaser)
break;
end end end v465=2;
end if (v465==(0)) then hitConfirmed=rollHitChance()
projectileCount=CurrentTarget:GetAttribute("ProjectileCount") or (1);
v465=1;
end if (v465==2) then ShootEvent:FireServer(shotData)
v233=5;
break;
end end end if (v233==(6)) then if weaponHandle then local v551=0;
local v552;
while true do if (v551==(0)) then v552=weaponHandle:FindFirstChild("ShootSound")
if v552 then local v665=1785 -(1785);
local v666;
while true do if (1==v665) then v666:Play()
Debris:AddItem(v666,1286 -(1284) )
break;
end if (v665==0) then local v708=0;
while true do if (v708==(0)) then v666=v552:Clone()
v666.Parent=weaponHandle;
v708=94 -(93);
end if (1==v708) then v665=1;
break;
end end end end end break;
end end end break;
end if ((5)==v233) then remainingAmmo=currentAmmo-(1);
CurrentTarget:SetAttribute("Local_CurrentAmmo",remainingAmmo)
if  not InputConnection then local v553=0;
local v554;
while true do if (v553==0) then v554=Player:FindFirstChild("PlayerGui")
if v554 then local v667=v554:FindFirstChild("Home")
if v667 then local v692=880 -(880);
local v693;
while true do if (v692==0) then v693=v667:FindFirstChild("hud")
if v693 then local v732=v693:FindFirstChild("BottomRightFrame")
if v732 then local v739=0;
local v740;
while true do if (v739==0) then v740=v732:FindFirstChild("GunFrame")
if v740 then InputConnection=v740:FindFirstChild("BulletsLabel")
end break;
end end end end break;
end end end end break;
end end end if InputConnection then InputConnection.Text=remainingAmmo   .. "/"   .. (CurrentTarget:GetAttribute("MaxAmmo") or (162 -(132)));
end weaponHandle=CurrentTarget:FindFirstChild("Handle")
v233=6;
end if (v233==3) then if  not aimPart then return;
end currentAmmo=CurrentTarget:GetAttribute("Local_CurrentAmmo") or CurrentTarget:GetAttribute("CurrentAmmo") or (445 -(445));
if (currentAmmo<=(0)) then return;
end ShotsFired=currentTime;
isTaser=CurrentTarget:GetAttribute("Projectile")=="Taser";
v233=4;
end if (v233==(1)) then if  not character then return;
end head=character:FindFirstChild("Head")
if  not head then return;
end muzzle=CurrentTarget:FindFirstChild("Muzzle")
muzzlePosition=(muzzle and muzzle.Position) or head.Position;
v233=1397 -(1395);
end if (v233==(0)) then if ( not Settings.autoshoot or  not Settings.enabled or  not CurrentTarget) then return;
end currentTime=os.clock()
fireRate=CurrentTarget:GetAttribute("FireRate") or Settings.autoshootdelay;
if ((currentTime-ShotsFired)<fireRate) then return;
end character=Player.Character;
v233=1;
end end end local PreviousEquippedGun=nil;
RunService.Heartbeat:Connect(function() local v250=0;
local v251;
while true do if (v250==(0)) then v251=0;
while true do if (v251==(1)) then autoShoot()
break;
end if (v251==(353 -(353))) then CurrentTarget=getEquippedGun()
if (CurrentTarget~=PreviousEquippedGun) then local v640=0;
while true do if (v640==(0)) then ShotsFired=0;
PreviousEquippedGun=CurrentTarget;
break;
end end end v251=1975 -(1974);
end end break;
end end end)
-- ===== ESP =====
local function getTeamColor(player) local v253=0;
local team;
while true do local v394=307 -(307);
while true do if (v394==(0)) then if (v253==(810 -(810))) then if (not player or not player.Team) then return Color3.fromRGB(255,255 ,255 )
end team=player.Team;
v253=1;
end if (1==v253) then if (team==GuardsTeam) then return Color3.fromRGB(0,150,255 )
elseif (team==InmatesTeam) then return Color3.fromRGB(1204 -(949) ,150,1383 -(1383) )
elseif (team==CriminalsTeam) then return Color3.fromRGB(1323 -(1068) ,1790 -(1790) ,0 )
end return Color3.fromRGB(200 ,539 -(339) ,200 )
end break;
end end end end local function createESP(player) local v256=0;
local v257;
local v258;
local v259;
local v260;
while true do if (v256==(5)) then v260.Text="0m";
v260.Size=Settings.espTextSize-(1);
v260.Font=1812 -(1810);
v260.Center=true;
v256=351 -(345);
end if (v256==(3)) then v259.Text="100%";
v259.Size=Settings.espTextSize-(452 -(451));
v259.Font=2;
v259.Center=true;
v256=4;
end if (v256==(46 -(46))) then if (not DrawingSupported or (player==Player) or ESPObjects[player]) then return;
end v257={["BoxLines"]={},["NameText"]=nil,["HealthText"]=nil,["DistanceText"]=nil};
for v514=1 ,1994 -(1990)  do local v515=1212 -(1212);
local v516;
while true do if (v515==(1)) then v516.Transparency=1;
v516.Visible=false;
v515=2;
end if (v515==(1170 -(1170))) then v516=Drawing.new("Line")
v516.Thickness=Settings.espBoxThickness;
v515=1;
end if ((2)==v515) then table.insert(v257.BoxLines,v516)
break;
end end end v258=Drawing.new("Text")
v256=1632 -(1631);
end if (v256==6) then v260.Outline=true;
v260.Visible=false;
v257.DistanceText=v260;
ESPObjects[player]=v257;
break;
end if (v256==(1947 -(1946))) then v258.Text=player.Name;
v258.Size=Settings.espTextSize;
v258.Font=260 -(258);
v258.Center=true;
v256=2;
end if (v256==(261 -(257))) then v259.Outline=true;
v259.Visible=false;
v257.HealthText=v259;
v260=Drawing.new("Text")
v256=5;
end if (v256==(1948 -(1946))) then v258.Outline=true;
v258.Visible=false;
v257.NameText=v258;
v259=Drawing.new("Text")
v256=3;
end end end local function removeESP(player) local esp=ESPObjects[player];
if not esp then return;
end for _,line in ipairs(esp.BoxLines) do line:Remove()
end if esp.NameText then esp.NameText:Remove()
end if esp.HealthText then esp.HealthText:Remove()
end if esp.DistanceText then esp.DistanceText:Remove()
end ESPObjects[player]=nil;
end local function updateESP() if ( not DrawingSupported or  not Settings.esp) then local v430=0;
while true do if (v430==0) then for v579,v580 in pairs(ESPObjects) do local v581=0;
while true do if (v581==0) then for v668,v669 in ipairs(v580.BoxLines) do v669.Visible=false;
end v580.NameText.Visible=false;
v581=1668 -(1667);
end if (v581==1) then v580.HealthText.Visible=false;
v580.DistanceText.Visible=false;
break;
end end end return;
end end end local v264=Player.Character;
if  not v264 then return;
end local v265=v264:FindFirstChild("HumanoidRootPart")
if  not v265 then return;
end for v397,v398 in pairs(ESPObjects) do if (v397 and v397.Parent and v397.Character) then if (v397.Team~=Player.Team) then local v556=0;
local v557;
local v558;
local v559;
local v560;
while true do if (v556==(513 -(511))) then if (v558 and v559 and v560 and (v560.Health>(0))) then local v671=(v558.Position-v265.Position).Magnitude;
if (v671<=Settings.espMaxDistance) then local v694=280 -(280);
local v695;
local v696;
local v697;
while true do if (v694==(1)) then v697=true;
for v721,v722 in ipairs(v695) do local v723,v724=Camera:WorldToViewportPoint(v722)
if ( not v724 or (v723.Z<=0)) then v697=false;
break;
end v696[v721]=Vector2.new(v723.X,v723.Y)
end v694=2;
end if (v694==2) then if v697 then local v733=getTeamColor(v397)
if Settings.espShowBox then v398.BoxLines[1].From=v696[1];
v398.BoxLines[1860 -(1859) ].To=v696[2 ];
v398.BoxLines[1].Color=v733;
v398.BoxLines[1].Visible=true;
v398.BoxLines[2 ].From=v696[3];
v398.BoxLines[2 ].To=v696[1754 -(1750) ];
v398.BoxLines[2 ].Color=v733;
v398.BoxLines[2 ].Visible=true;
v398.BoxLines[3].From=v696[1281 -(1280) ];
v398.BoxLines[3].To=v696[3];
v398.BoxLines[3].Color=v733;
v398.BoxLines[593 -(590) ].Visible=true;
v398.BoxLines[4].From=v696[2 ];
v398.BoxLines[4].To=v696[1990 -(1986) ];
v398.BoxLines[4].Color=v733;
v398.BoxLines[4].Visible=true;
else for v776,v777 in ipairs(v398.BoxLines) do v777.Visible=false;
end end if Settings.espShowName then local v764=Camera:WorldToViewportPoint(v559.Position + Vector3.new(1487 -(1487) ,1 ,0 ) )
v398.NameText.Position=Vector2.new(v764.X,v764.Y)
v398.NameText.Color=v733;
v398.NameText.Visible=true;
else v398.NameText.Visible=false;
end if Settings.espShowHealth then local v769=0;
local v770;
local v771;
while true do if (v769==(404 -(403))) then v398.HealthText.Position=Vector2.new(v771.X,v771.Y)
v398.HealthText.Text=v770   .. "%";
v769=2;
end if (v769==(219 -(217))) then if (v770>75) then v398.HealthText.Color=Color3.fromRGB(0 ,255,0 )
elseif (v770>(50)) then v398.HealthText.Color=Color3.fromRGB(255,639 -(384) ,480 -(480) )
elseif (v770>25) then v398.HealthText.Color=Color3.fromRGB(552 -(297) ,165,0)
else v398.HealthText.Color=Color3.fromRGB(255 ,861 -(861) ,1795 -(1795) )
end v398.HealthText.Visible=true;
break;
end if (v769==(1563 -(1563))) then local v784=0;
while true do if (v784==1) then v769=1;
break;
end if (v784==(0)) then v770=math.floor((v560.Health/v560.MaxHealth) * (100) )
v771=Camera:WorldToViewportPoint(v559.Position + Vector3.new(843 -(843) ,0.5,1294 -(1294) ) )
v784=1;
end end end end else v398.HealthText.Visible=false;
end if Settings.espShowDistance then local v773=971 -(971);
local v774;
while true do if (v773==(1806 -(1805))) then v398.DistanceText.Text=math.floor(v671)   .. "m";
v398.DistanceText.Color=v733;
v773=2;
end if (v773==(1920 -(1918))) then v398.DistanceText.Visible=true;
break;
end if (0==v773) then v774=(v696[3 ] + v696[4])/(2);
v398.DistanceText.Position=Vector2.new(v774.X,v774.Y + 5 )
v773=1;
end end else v398.DistanceText.Visible=false;
end else local v734=0;
local v735;
while true do if (v734==(0)) then v735=0;
while true do if (v735==(0)) then for v793,v794 in ipairs(v398.BoxLines) do v794.Visible=false;
end v398.NameText.Visible=false;
v735=1;
end if (v735==(110 -(109))) then v398.HealthText.Visible=false;
v398.DistanceText.Visible=false;
break;
end end break;
end end end break;
end if ((1921 -(1921))==v694) then v695={v558.Position + Vector3.new( -(2),1354 -(1351) ,0) ,v558.Position + Vector3.new(2 ,3 ,0) ,v558.Position + Vector3.new( -(245 -(243)), -(3),198 -(198) ) ,v558.Position + Vector3.new(2, -3,0 ) };
v696={};
v694=1;
end end else local v698=0;
while true do if (v698==(0)) then for v726,v727 in ipairs(v398.BoxLines) do v727.Visible=false;
end v398.NameText.Visible=false;
v698=1;
end if (v698==(1)) then v398.HealthText.Visible=false;
v398.DistanceText.Visible=false;
break;
end end end else for v679,v680 in ipairs(v398.BoxLines) do v680.Visible=false;
end v398.NameText.Visible=false;
v398.HealthText.Visible=false;
v398.DistanceText.Visible=false;
end break;
end if (v556==0) then v557=v397.Character;
v558=v557:FindFirstChild("HumanoidRootPart")
v556=62 -(61);
end if (v556==1) then v559=v557:FindFirstChild("Head")
v560=v557:FindFirstChildOfClass("Humanoid")
v556=925 -(923);
end end else local v561=0;
local v562;
while true do if (v561==(0)) then v562=0;
while true do if (v562==(1)) then v398.HealthText.Visible=false;
v398.DistanceText.Visible=false;
break;
end if (v562==(685 -(685))) then for v699,v700 in ipairs(v398.BoxLines) do v700.Visible=false;
end v398.NameText.Visible=false;
v562=1;
end end break;
end end end else local v491=1999 -(1999);
while true do if (1==v491) then v398.HealthText.Visible=false;
v398.DistanceText.Visible=false;
break;
end if (v491==0) then for v623,v624 in ipairs(v398.BoxLines) do v624.Visible=false;
end v398.NameText.Visible=false;
v491=1;
end end end end end for v266,v267 in ipairs(Players:GetPlayers()) do if (v267~=Player) then local v431=0;
while true do if (v431==(0)) then createESP(v267)
v267.CharacterAdded:Connect(function() task.wait(0.5)
createESP(v267)
end)
break;
end end end end Players.PlayerAdded:Connect(function(v268) v268.CharacterAdded:Connect(function() task.wait(0.5 )
createESP(v268)
end)
end)
Players.PlayerRemoving:Connect(function(v269) removeESP(v269)
end)
local function updateFOV() if  not FOVCircle then return;
end pcall(function() local v399=0;
local v400;
local v401;
local v402;
local v403;
local v404;
while true do if (v399==1) then v402=nil;
v403=nil;
v399=1133 -(1131);
end if (v399==(2)) then v404=nil;
while true do if (v400==(214 -(214))) then v401=UserInputService:GetLastInputType()
v402=(v401==Enum.UserInputType.Touch) or (UserInputService.MouseBehavior==Enum.MouseBehavior.LockCenter);
v400=1;
end if (v400==1) then v403=nil;
if v402 then local v657=0;
local v658;
while true do if (v657==(65 -(65))) then v658=Camera.ViewportSize;
v403=Vector2.new(v658.X/(146 -(144)) ,v658.Y/2 )
break;
end end else v403=UserInputService:GetMouseLocation()
end v400=200 -(198);
end if (v400==2) then FOVCircle.Position=v403;
FOVCircle.Radius=Settings.fov;
v400=3;
end if (v400==(3)) then FOVCircle.Visible=Settings.showfov and Settings.enabled;
v404=getSilentAimTarget()
v400=556 -(552);
end if (v400==(4)) then if v404 then FOVCircle.Color=Color3.fromRGB(255 ,255 ,255 )
else FOVCircle.Color=Color3.fromRGB(255 ,255 ,255)
end break;
end end break;
end if (v399==0) then v400=0;
v401=nil;
v399=749 -(748);
end end end)
end RunService.RenderStepped:Connect(function() updateESP()
updateFOV()
end)
local AutoFarmSettings={["Enabled"]=false,["DiscreteMode"]=false,["AutoDetect"]=true,["DelayBetweenItems"]=0.15,["ShowLogs"]=true,["ReturnToOriginal"]=true};
local WeaponLocations={["MP5_Armory"]=CFrame.new(822,805 -(707) ,3078 -(861) ),["Remington 870_Armory"]=CFrame.new(822,1108 -(1010) ,2217 ),["Sniper_Armory"]=CFrame.new(830 ,98 ,2220 ),["Revolver_Armory"]=CFrame.new(830,98,2530 -(310) ),["M4A1_Armory"]=CFrame.new(838,98,2223 ),["Shield_Armory"]=CFrame.new(2185 -(1347) ,98,2223),["AK-47_Criminal"]=CFrame.new( -(1463 -(538)),1060 -(968) ,2042 ),["Remington 870_Criminal"]=CFrame.new( -(1709 -(784)),92 ,2042),["Sniper_Criminal"]=CFrame.new( -(918),92,2036 ),["Revolver_Criminal"]=CFrame.new( -(918),1183 -(1091) ,2995 -(959) ),["FAL_Criminal"]=CFrame.new( -(903),92,2047)};
local DetectedWeapons={};
local WeaponList={};
local AutoFarmRunning=false;
local OriginalCFrame=nil;
local InteractWithItem;
local WeaponGivers;
pcall(function() InteractWithItem=ReplicatedStorage:WaitForChild("Remotes",5 ):WaitForChild("InteractWithItem",5 )
end)
pcall(function() WeaponGivers=Workspace:WaitForChild("Prison_ITEMS",5):WaitForChild("giver",1054 -(1049) )
end)
-- ===== Auto Farm =====
-- Conservative readability pass: Auto Farm identifiers only; control-flow preserved.
local function resetMovement(rootPart) local v271=0;
local v272;
while true do if (v271==(878 -(878))) then v272=0;
while true do if (v272==(1)) then if rootPart:FindFirstChild("BodyVelocity") then rootPart.BodyVelocity:Destroy()
end break;
end if (v272==0) then rootPart.AssemblyLinearVelocity=Vector3.zero;
rootPart.AssemblyAngularVelocity=Vector3.zero;
v272=474 -(473);
end end break;
end end end local function teleportToWeapon(weaponKey) if  not AutoFarmSettings.DiscreteMode then return false;
end local v274=Player.Character;
if  not v274 then return false;
end local rootPart=v274:FindFirstChild("HumanoidRootPart")
if  not rootPart then return false;
end if  not OriginalCFrame then OriginalCFrame=rootPart.CFrame;
end local weaponCFrame=WeaponLocations[weaponKey];
if  not weaponCFrame then return false;
end resetMovement(rootPart)
rootPart.CFrame=weaponCFrame;
task.wait(0.15)
return true;
end local function returnToStart() local v278=0;
local v279;
local v280;
local v281;
while true do if (v278==0) then v279=0;
v280=nil;
v278=1;
end if (v278==1) then v281=nil;
while true do if (v279==(1014 -(1011))) then v281.CFrame=OriginalCFrame;
OriginalCFrame=nil;
break;
end if ((0)==v279) then if ( not AutoFarmSettings.ReturnToOriginal or  not OriginalCFrame) then return;
end v280=Player.Character;
v279=1;
end if (v279==(1058 -(1056))) then if  not v281 then return;
end resetMovement(v281)
v279=3;
end if (v279==(1)) then if  not v280 then return;
end v281=v280:FindFirstChild("HumanoidRootPart")
v279=2;
end end break;
end end end local function hasWeapon(weaponName) local v283=0;
local v284;
local v285;
while true do if (v283==2) then if v285 then for v590,v591 in ipairs(v285:GetChildren()) do if (v591:IsA("Tool") and (v591.Name==weaponName)) then return true;
end end end return false;
end if (v283==1) then for v517,v518 in ipairs(v284:GetChildren()) do if (v518:IsA("Tool") and (v518.Name==weaponName)) then return true;
end end v285=Player.Backpack;
v283=2;
end if (v283==(0)) then local v493=0;
while true do if (v493==(0)) then v284=Player.Character;
if  not v284 then return false;
end v493=1;
end if (v493==(1)) then v283=1;
break;
end end end end end local function getWeaponLocation(giver) local v287=0;
local v288;
while true do if (v287==0) then v288=giver:GetPivot().Position;
if (v288.X>(2120 -(1420))) then return "Armory";
elseif (v288.X< -(2757 -(1957))) then return "Criminal";
else return "Unknown";
end break;
end end end local function detectWeapons() WeaponList={};
if  not WeaponGivers then local v433=1939 -(1939);
while true do if (0==v433) then warn("[ERROR] Prison_ITEMS.giver not encontrado!")
return 1517 -(1517);
end end end local v289={};
for v405,v406 in ipairs(WeaponGivers:GetChildren()) do if (v406:IsA("Model") or v406:IsA("Folder")) then local v495=v406.Name;
local v496=nil;
for v519,v520 in ipairs(v406:GetDescendants()) do if (v520.Name:match("Meshes/") or v520:IsA("MeshPart") or v520:IsA("Part")) then v496=v520;
break;
end end if v496 then local v563=1015 -(1015);
local v564;
local v565;
while true do if ((1)==v563) then v289[v495]=v289[v495] + 1;
v565=v495   .. "_"   .. v564;
v563=2;
end if ((0)==v563) then v564=getWeaponLocation(v406)
if  not v289[v495] then v289[v495]=0;
end v563=1;
end if (v563==2) then table.insert(WeaponList,{["name"]=v495,["displayName"]=v495   .. (((v564~="Unknown") and (" ("   .. v564   .. ")")) or "") ,["uniqueKey"]=v565,["folder"]=v406,["mesh"]=v496,["area"]=v564})
DetectedWeapons[v565]=true;
break;
end end end end end return  #WeaponList;
end -- ===== Auto Farm: Weapon Collection =====
local function collectWeapon(weaponData) local v291=0;
local v292;
local v293;
local v294;
local v295;
local v296;
while true do if (v291==2) then v294=weaponData.mesh;
if AutoFarmSettings.DiscreteMode then teleportToWeapon(v293)
end v291=3;
end if (0==v291) then if  not AutoFarmSettings.Enabled then return false;
end if  not InteractWithItem then return false;
end v291=506 -(505);
end if (v291==(3)) then v295=3;
v296=false;
v291=4;
end if (v291==(671 -(670))) then v292=weaponData.name;
v293=weaponData.uniqueKey;
v291=47 -(45);
end if (4==v291) then for v521=1 ,v295 do local v522,v523=pcall(function() local v566={[1 ]=v294};
return InteractWithItem:InvokeServer(unpack(v566))
end)
if v522 then task.wait(1801.1 -(1801) )
if hasWeapon(v292) then v296=true;
break;
end end if ( not v296 and (v521<v295)) then task.wait(0.1 )
end end return v296;
end end end function AF_StartFarm() local v297=1404 -(1404);
local v298;
local v299;
local v300;
while true do if ((3)==v297) then AutoFarmRunning=false;
return v299;
end if (v297==(1)) then OriginalCFrame=nil;
v298=tick()
v299={["attempted"]=133 -(133) ,["collected"]=0 ,["skipped"]=0,["failed"]=0 };
v297=2;
end if (v297==(0)) then local v500=0;
while true do if (v500==(1)) then AutoFarmRunning=true;
v297=1;
break;
end if (v500==0) then if AutoFarmRunning then print("[ERROR] Farm is already running!")
return;
end if ( #WeaponList==0) then local v644=0;
while true do if (v644==(557 -(557))) then detectWeapons()
if ( #WeaponList==(0)) then local v709=1941 -(1941);
while true do if (v709==(0)) then print("[ERROR] No weapon found!")
return;
end end end break;
end end end v500=1149 -(1148);
end end end if (v297==(2)) then for v524,v525 in ipairs(WeaponList) do if  not AutoFarmSettings.Enabled then break;
end local v526=v525.uniqueKey;
if DetectedWeapons[v526] then v299.attempted=v299.attempted + 1;
local v594=collectWeapon(v525)
if v594 then v299.collected=v299.collected + 1;
else v299.failed=v299.failed + (1);
end task.wait(AutoFarmSettings.DelayBetweenItems)
else v299.skipped=v299.skipped + (1342 -(1341));
end end if AutoFarmSettings.DiscreteMode then returnToStart()
end v300=math.floor((tick() -v298) * (1000) )/(1000);
v297=3;
end end end task.delay(2,function() if AutoFarmSettings.AutoDetect then detectWeapons()
end end)

-- ===== Invisible / Deep Desync Core =====
-- นำเฉพาะ logic จาก INV.txt มาใช้ โดยไม่สร้าง GUI แยกของต้นฉบับ
local DeepDesyncEnabled = false
local DeepDesyncConnections = {}
local DeepDesyncBound = false
local DeepDesyncBindName = "ZeroHubInvisibleRestore"
local DeepDesyncReportedY = nil
local DeepDesyncGroundCache = {x = 0, z = 0, y = nil, at = 0}
local DeepDesyncState = {real = nil, vel = nil, ang = nil, fakePos = nil, spoofed = false, lockXZ = nil}
local DeepDesyncConfig = {Depth = 5, SafeMargin = 30, MaxSinkSpeed = 200, FollowHorizontal = true}
local DeepDesyncRayParams = RaycastParams.new()
DeepDesyncRayParams.FilterType = Enum.RaycastFilterType.Exclude
DeepDesyncRayParams.IgnoreWater = true

local function deepDesyncFindRoot(character)
    character = character or LocalPlayer.Character
    if not character then return nil, nil end
    local humanoid = character:FindFirstChildOfClass("Humanoid")
    local root = (humanoid and humanoid.RootPart) or character:FindFirstChild("HumanoidRootPart")
    if root and root:IsA("BasePart") then return root, humanoid end
    return nil, humanoid
end

local function deepDesyncUsableRoot()
    local character = LocalPlayer.Character
    local root, humanoid = deepDesyncFindRoot(character)
    if not root or not humanoid or humanoid.Health <= 0 or humanoid.SeatPart then return nil end
    return root, character
end

local function deepDesyncSurfaceY(x, z, fromY, character)
    local now = os.clock()
    local dx, dz = x - DeepDesyncGroundCache.x, z - DeepDesyncGroundCache.z
    if DeepDesyncGroundCache.at > 0 and (dx * dx + dz * dz) < 36 and now - DeepDesyncGroundCache.at < 0.2 then
        return DeepDesyncGroundCache.y
    end
    DeepDesyncRayParams.FilterDescendantsInstances = {character}
    local ok, hit = pcall(function()
        return Workspace:Raycast(Vector3.new(x, fromY, z), Vector3.new(0, -4000, 0), DeepDesyncRayParams)
    end)
    local y = (ok and hit) and hit.Position.Y or nil
    DeepDesyncGroundCache.x, DeepDesyncGroundCache.z = x, z
    DeepDesyncGroundCache.y, DeepDesyncGroundCache.at = y, now
    return y
end

local function deepDesyncTargetY(realPosition, character)
    local surface = deepDesyncSurfaceY(realPosition.X, realPosition.Z, realPosition.Y, character)
    local desired = (surface or realPosition.Y) - DeepDesyncConfig.Depth
    local destroyAt = Workspace.FallenPartsDestroyHeight
    if destroyAt ~= destroyAt or destroyAt == math.huge or destroyAt == -math.huge then destroyAt = -500 end
    return math.max(desired, destroyAt + DeepDesyncConfig.SafeMargin)
end

local function deepDesyncApproach(current, target, maxDelta)
    local delta = target - current
    if delta > maxDelta then return current + maxDelta end
    if delta < -maxDelta then return current - maxDelta end
    return target
end

local function deepDesyncRestore()
    if not DeepDesyncState.spoofed or not DeepDesyncState.real then
        DeepDesyncState.spoofed = false
        return
    end
    local root = deepDesyncFindRoot()
    DeepDesyncState.spoofed = false
    if root then
        root.CFrame = DeepDesyncState.real
        root.AssemblyLinearVelocity = DeepDesyncState.vel or Vector3.zero
        root.AssemblyAngularVelocity = DeepDesyncState.ang or Vector3.zero
    end
end

local function deepDesyncPunch()
    local root = deepDesyncFindRoot()
    if not root or not DeepDesyncState.real or DeepDesyncReportedY == nil then return end
    local realCF = DeepDesyncState.real
    local x, z
    if DeepDesyncConfig.FollowHorizontal then
        x, z = realCF.X, realCF.Z
    else
        if not DeepDesyncState.lockXZ then DeepDesyncState.lockXZ = Vector3.new(realCF.X, 0, realCF.Z) end
        x, z = DeepDesyncState.lockXZ.X, DeepDesyncState.lockXZ.Z
    end
    local fake = CFrame.new(x, DeepDesyncReportedY, z) * realCF.Rotation
    root.CFrame = fake
    root.AssemblyLinearVelocity = DeepDesyncState.vel or Vector3.zero
    root.AssemblyAngularVelocity = DeepDesyncState.ang or Vector3.zero
    if typeof(sethiddenproperty) == "function" then pcall(sethiddenproperty, root, "NetworkIsSleeping", false) end
    DeepDesyncState.fakePos, DeepDesyncState.spoofed = fake.Position, true
end

local function deepDesyncAdvance(dt)
    local root, character = deepDesyncUsableRoot()
    if not root then
        if DeepDesyncState.spoofed then deepDesyncRestore() end
        DeepDesyncReportedY, DeepDesyncState.lockXZ = nil, nil
        DeepDesyncGroundCache.at = 0
        return false
    end
    local position = root.Position
    local stillFake = DeepDesyncState.spoofed and DeepDesyncState.fakePos and (position - DeepDesyncState.fakePos).Magnitude < 8
    if not stillFake then
        DeepDesyncState.real = root.CFrame
        DeepDesyncState.vel = root.AssemblyLinearVelocity
        DeepDesyncState.ang = root.AssemblyAngularVelocity
    end
    if not DeepDesyncState.real then return false end
    dt = math.clamp(dt or 1 / 60, 0, 0.1)
    DeepDesyncReportedY = DeepDesyncReportedY or DeepDesyncState.real.Y
    local target = deepDesyncTargetY(DeepDesyncState.real.Position, character)
    if DeepDesyncConfig.MaxSinkSpeed <= 0 then
        DeepDesyncReportedY = target
    else
        DeepDesyncReportedY = deepDesyncApproach(DeepDesyncReportedY, target, DeepDesyncConfig.MaxSinkSpeed * dt)
    end
    return true
end

local function deepDesyncPostSimulation(dt)
    if not DeepDesyncEnabled then return end
    if not deepDesyncAdvance(dt) then return end
    deepDesyncPunch()
    task.defer(function()
        if DeepDesyncEnabled and DeepDesyncState.spoofed then deepDesyncPunch() end
    end)
end

local function deepDesyncPreRender()
    if DeepDesyncEnabled then deepDesyncRestore() end
end

local function deepDesyncResetState()
    DeepDesyncReportedY = nil
    DeepDesyncState = {real = nil, vel = nil, ang = nil, fakePos = nil, spoofed = false, lockXZ = nil}
    DeepDesyncGroundCache.at = 0
end

local function setDeepDesyncEnabled(enabled)
    enabled = enabled == true
    if enabled == DeepDesyncEnabled then return end
    DeepDesyncEnabled = enabled
    if not enabled then
        deepDesyncRestore()
        for _, connection in ipairs(DeepDesyncConnections) do connection:Disconnect() end
        table.clear(DeepDesyncConnections)
        if DeepDesyncBound then pcall(function() RunService:UnbindFromRenderStep(DeepDesyncBindName) end) end
        DeepDesyncBound = false
        deepDesyncResetState()
        return
    end
    local postSimulation = RunService.PostSimulation or RunService.Heartbeat
    DeepDesyncConnections[#DeepDesyncConnections + 1] = postSimulation:Connect(deepDesyncPostSimulation)
    local bindOk = pcall(function()
        RunService:BindToRenderStep(DeepDesyncBindName, Enum.RenderPriority.First.Value, deepDesyncPreRender)
        DeepDesyncBound = true
    end)
    if not bindOk then
        local preRender = RunService.PreRender or RunService.RenderStepped
        DeepDesyncConnections[#DeepDesyncConnections + 1] = preRender:Connect(deepDesyncPreRender)
    end
    DeepDesyncConnections[#DeepDesyncConnections + 1] = LocalPlayer.CharacterAdded:Connect(deepDesyncResetState)
end

-- ===== Other Visual Settings =====
local Lighting = game:GetService("Lighting")
local NoFogEnabled = false
local AlwaysMorningEnabled = false
local FullBrightEnabled = false
local LightingConnection
local OriginalFogStart = Lighting.FogStart
local OriginalFogEnd = Lighting.FogEnd
local OriginalClockTime = Lighting.ClockTime
local OriginalAmbient = Lighting.Ambient
local OriginalOutdoorAmbient = Lighting.OutdoorAmbient
local OriginalBrightness = Lighting.Brightness
local OriginalGlobalShadows = Lighting.GlobalShadows
local OriginalAtmosphere = {}

local function refreshOtherVisuals()
    if NoFogEnabled then
        Lighting.FogStart = 0
        Lighting.FogEnd = 1000000
        for _, object in ipairs(Lighting:GetChildren()) do
            if object:IsA("Atmosphere") then
                if not OriginalAtmosphere[object] then
                    OriginalAtmosphere[object] = {
                        Density = object.Density,
                        Haze = object.Haze,
                        Glare = object.Glare,
                    }
                end
                object.Density = 0
                object.Haze = 0
                object.Glare = 0
            end
        end
    end
    if AlwaysMorningEnabled then
        Lighting.ClockTime = 8
    end
    if FullBrightEnabled then
        Lighting.Ambient = Color3.fromRGB(255, 255, 255)
        Lighting.OutdoorAmbient = Color3.fromRGB(255, 255, 255)
        Lighting.Brightness = 3
        Lighting.GlobalShadows = false
    end
end

local function restoreOtherVisuals()
    if LightingConnection then
        LightingConnection:Disconnect()
        LightingConnection = nil
    end
    Lighting.FogStart = OriginalFogStart
    Lighting.FogEnd = OriginalFogEnd
    Lighting.ClockTime = OriginalClockTime
    Lighting.Ambient = OriginalAmbient
    Lighting.OutdoorAmbient = OriginalOutdoorAmbient
    Lighting.Brightness = OriginalBrightness
    Lighting.GlobalShadows = OriginalGlobalShadows
    for atmosphere, values in pairs(OriginalAtmosphere) do
        if atmosphere and atmosphere.Parent then
            atmosphere.Density = values.Density
            atmosphere.Haze = values.Haze
            atmosphere.Glare = values.Glare
        end
        OriginalAtmosphere[atmosphere] = nil
    end
end

local function updateOtherVisualConnection()
    if NoFogEnabled or AlwaysMorningEnabled or FullBrightEnabled then
        if not LightingConnection then
            LightingConnection = RunService.Heartbeat:Connect(refreshOtherVisuals)
        end
        refreshOtherVisuals()
    elseif LightingConnection then
        restoreOtherVisuals()
    end
end

local function setNoFogEnabled(enabled)
    NoFogEnabled = enabled == true
    updateOtherVisualConnection()
end

local function setAlwaysMorningEnabled(enabled)
    AlwaysMorningEnabled = enabled == true
    updateOtherVisualConnection()
end

local function setFullBrightEnabled(enabled)
    FullBrightEnabled = enabled == true
    updateOtherVisualConnection()
end

-- ===== UI / SETTINGS =====
local v126={["Info"]=Window:AddTab("Info","info"),["Combat"]=Window:AddTab("ต่อสู้","user"),["Weapon"]=Window:AddTab("อาวุธ","swords"),["ESP"]=Window:AddTab("แสดงผล","eye"),["Farm"]=Window:AddTab("ฟาร์ม","box"),["Weapons"]=Window:AddTab("รายการอาวุธ","list"),["Settings"]=Window:AddTab("ตั้งค่าเมนู","settings-2"),["Movement"]=Window:AddTab("เคลื่อนที่","move")};

local infoLeft=v126.Info:AddLeftGroupbox("ข้อมูล")
infoLeft:AddLabel("เวอร์ชัน  :  1.1.1",true)
infoLeft:AddLabel("(เบต้า)",true)
infoLeft:AddLabel("สคริปต์  :  Zero HUB",true)
infoLeft:AddLabel("เกม  :  Prison Life",true)
infoLeft:AddDivider()
infoLeft:AddButton({["Text"]="Discord",["Func"]=function()
    local link="https://discord.gg/frmyWDcvdR"
    local copied=false
    pcall(function()
        if setclipboard then setclipboard(link); copied=true
        elseif toclipboard then toclipboard(link); copied=true end
    end)
    Library:Notify({["Title"]="Discord",["Description"]=copied and "คัดลอกลิงก์ Discord แล้ว" or link,["Time"]=3})
end})

local infoRight=v126.Info:AddRightGroupbox("ผู้พัฒนา")
infoRight:AddLabel("ข้อความจากผู้พัฒนา  HI",true)
infoRight:AddLabel("ผู้พัฒนา  :  Kaia",true)
infoRight:AddDivider()
infoRight:AddButton({["Text"]="ขอให้สนุก",["Func"]=function()
    Library:Notify({["Title"]="ZERO HUB",["Description"]="ขอให้สนุกกับการใช้งานครับ",["Time"]=3})
end})
-- ===== Noclip =====
-- ปิดการชนเฉพาะชิ้นส่วนของตัวละคร และคืนค่าเดิมเมื่อปิดใช้งาน
local NoclipEnabled = false
local NoclipOriginalCollision = setmetatable({}, { __mode = "k" })

local function restoreNoclipCollision()
    for part, originalCanCollide in pairs(NoclipOriginalCollision) do
        if part and part.Parent then
            pcall(function()
                part.CanCollide = originalCanCollide
            end)
        end
        NoclipOriginalCollision[part] = nil
    end
end

local function updateNoclip()
    if not NoclipEnabled then
        return
    end

    local character = LocalPlayer.Character
    if not character then
        return
    end

    for _, descendant in ipairs(character:GetDescendants()) do
        if descendant:IsA("BasePart") then
            if NoclipOriginalCollision[descendant] == nil then
                NoclipOriginalCollision[descendant] = descendant.CanCollide
            end
            descendant.CanCollide = false
        end
    end
end

RunService.Stepped:Connect(updateNoclip)
LocalPlayer.CharacterAdded:Connect(function()
    if NoclipEnabled then
        task.wait(0.25)
        updateNoclip()
    end
end)

local function setNoclipEnabled(enabled)
    NoclipEnabled = enabled == true
    if not NoclipEnabled then
        restoreNoclipCollision()
    else
        updateNoclip()
    end
end

local v142=v126.Movement:AddLeftGroupbox("เทเลพอร์ต")
v142:AddToggle("Noclip", {
    ["Text"] = "เดินทะลุสิ่งกีดขวาง (Noclip)",
    ["Default"] = false,
    ["Tooltip"] = "ปิดการชนของชิ้นส่วนตัวละครขณะเปิดใช้งาน",
    ["Callback"] = function(enabled)
        setNoclipEnabled(enabled)
        Library:Notify({
            ["Title"] = "Noclip",
            ["Description"] = enabled and "เปิดใช้งานแล้ว" or "ปิดใช้งานแล้ว",
            ["Time"] = 2,
        })
    end,
})

local InvisibleGroup = v126.Movement:AddRightGroupbox("ระบบล่องหน")
InvisibleGroup:AddLabel("เมื่อเปิดแล้วจะไม่สามารถ ยิงใครได้", true)
InvisibleGroup:AddToggle("InvisibleMode", {
    ["Text"] = "เปิดโหมดล่องหน",
    ["Default"] = false,
    ["Tooltip"] = "ทำให้ตำแหน่งที่เซิร์ฟเวอร์เห็นต่ำกว่าพื้น ไม่ใช่ล่องหนทางภาพ",
    ["Callback"] = function(enabled)
        setDeepDesyncEnabled(enabled)
        Library:Notify({["Title"] = "โหมดล่องหน", ["Description"] = enabled and "เปิดใช้งานแล้ว" or "ปิดใช้งานแล้ว", ["Time"] = 3})
    end,
})

-- Tool สำหรับแตะ/คลิกตำแหน่งบนพื้นแล้ววาร์ปไปยังจุดนั้น
-- ใช้ Tool.Activated เพื่อรองรับการแตะบนมือถือและคลิกบน PC
local function createClickTeleportTool()
    local backpack = LocalPlayer:FindFirstChildOfClass("Backpack") or LocalPlayer:WaitForChild("Backpack")
    local character = LocalPlayer.Character
    for _, container in ipairs({backpack, character}) do
        if container then
            local oldTool = container:FindFirstChild("วาร์ปไปจุดที่คลิก")
            if oldTool and oldTool:IsA("Tool") then
                oldTool:Destroy()
            end
        end
    end

    local tool = Instance.new("Tool")
    tool.Name = "วาร์ปไปจุดที่คลิก"
    tool.ToolTip = "เลือกไอเทมนี้ แล้วแตะ/คลิกจุดที่ต้องการวาร์ปไป"
    tool.RequiresHandle = false
    tool.CanBeDropped = false

    local mouse = LocalPlayer:GetMouse()
    local busy = false
    tool.Activated:Connect(function()
        if busy or tool.Parent ~= LocalPlayer.Character then return end
        busy = true
        local ok, err = pcall(function()
            local currentCharacter = LocalPlayer.Character
            local root = currentCharacter and currentCharacter:FindFirstChild("HumanoidRootPart")
            local humanoid = currentCharacter and currentCharacter:FindFirstChildOfClass("Humanoid")
            if not root or not humanoid or humanoid.Health <= 0 then return end

            local hit = mouse.Hit
            if not hit then return end
            local destination = hit.Position + Vector3.new(0, 3, 0)
            currentCharacter:PivotTo(CFrame.new(destination) * (root.CFrame - root.Position))
        end)
        if not ok then warn("[Zero HUB] Click Teleport Tool: " .. tostring(err)) end
        task.wait(0.15)
        busy = false
    end)

    tool.Parent = backpack
end

-- รับไอเทมผ่านปุ่มในหน้าเทเลพอร์ตเท่านั้น
v142:AddButton({["Text"]="รับไอเทม Tool วาร์ป",["Tooltip"]="กดเพื่อเพิ่มไอเทมวาร์ปไปจุดที่คลิกลงในกระเป๋า",["Func"]=function()
    local ok, err = pcall(createClickTeleportTool)
    if ok then
        Library:Notify({["Title"]="รับไอเทมสำเร็จ",["Description"]="เพิ่มไอเทมวาร์ปลงในกระเป๋าแล้ว",["Time"]=3})
    else
        warn("[Zero HUB] รับไอเทมวาร์ปไม่สำเร็จ: " .. tostring(err))
        Library:Notify({["Title"]="รับไอเทมไม่สำเร็จ",["Description"]="ลองกดอีกครั้ง",["Time"]=3})
    end
end})

-- ===== Teleport Locations =====
local TeleportLocations = {
    {name = "ฐานโจร", position = Vector3.new(-981.9, 94.1, 1949.3)},
    {name = "ข้างนอกคุก", position = Vector3.new(716.3, 57.2, 1636.9)},
    {name = "ดาดฟ้า", position = Vector3.new(919.3, 132.0, 2244.1)},
    {name = "ห้องครัว", position = Vector3.new(868.3, 102.3, 2239.7)},
    {name = "ในสถานีตำรวจ", position = Vector3.new(808.1, 100.4, 2257.3)},
}

local function teleportToLocation(location)
    local character = LocalPlayer.Character
    local humanoid = character and character:FindFirstChildOfClass("Humanoid")
    local root = character and character:FindFirstChild("HumanoidRootPart")
    if not character or not humanoid or humanoid.Health <= 0 or not root then
        Library:Notify({["Title"] = "เทเลพอร์ตไม่สำเร็จ", ["Description"] = "ไม่พบตัวละครที่ยังมีชีวิต", ["Time"] = 3})
        return
    end
    local ok = pcall(function()
        character:PivotTo(CFrame.new(location.position + Vector3.new(0, 3, 0)))
    end)
    Library:Notify({
        ["Title"] = ok and "เทเลพอร์ตสำเร็จ" or "เทเลพอร์ตไม่สำเร็จ",
        ["Description"] = ok and ("ไปยัง " .. location.name .. " แล้ว") or "ไม่สามารถย้ายตำแหน่งได้",
        ["Time"] = 2,
    })
end

local AutoTeleportOutsideEnabled = false
local AutoTeleportOutsideConnection
local AutoTeleportOutsideCharacterConnection
local LastAutoTeleportOutside = 0
local AutoTeleportOutsideSkipNextCharacter = false

local function attemptAutoTeleportOutside()
    if not AutoTeleportOutsideEnabled or LocalPlayer.Team ~= InmatesTeam then return end
    if os.clock() - LastAutoTeleportOutside < 2 then return end
    local character = LocalPlayer.Character
    local humanoid = character and character:FindFirstChildOfClass("Humanoid")
    local root = character and character:FindFirstChild("HumanoidRootPart")
    local outsideLocation = TeleportLocations[2]
    if not character or not humanoid or humanoid.Health <= 0 or not root or not outsideLocation then return end
    if (root.Position - outsideLocation.position).Magnitude < 80 then return end
    LastAutoTeleportOutside = os.clock()
    local ok = pcall(function()
        character:PivotTo(CFrame.new(outsideLocation.position + Vector3.new(0, 3, 0)))
    end)
    if ok then
        -- รีตัวละครหลังวาร์ปประมาณ 1 วินาที และข้ามการวาร์ปซ้ำในรอบเกิดใหม่นี้
        AutoTeleportOutsideSkipNextCharacter = true
        Library:Notify({["Title"] = "วาร์ปออกนอกคุกอัตโนมัติ", ["Description"] = "ย้ายออกนอกคุกแล้ว กำลังรีตัวใน 1 วินาที", ["Time"] = 3})
        local escapedCharacter = character
        task.delay(1, function()
            if not AutoTeleportOutsideEnabled or LocalPlayer.Character ~= escapedCharacter then return end
            local escapedHumanoid = escapedCharacter:FindFirstChildOfClass("Humanoid")
            if escapedHumanoid and escapedHumanoid.Health > 0 then
                pcall(function() escapedHumanoid.Health = 0 end)
            end
        end)
    end
end

local function setAutoTeleportOutsideEnabled(enabled)
    AutoTeleportOutsideEnabled = enabled == true
    if not AutoTeleportOutsideEnabled then
        AutoTeleportOutsideSkipNextCharacter = false
    end
    if AutoTeleportOutsideConnection then
        AutoTeleportOutsideConnection:Disconnect()
        AutoTeleportOutsideConnection = nil
    end
    if AutoTeleportOutsideCharacterConnection then
        AutoTeleportOutsideCharacterConnection:Disconnect()
        AutoTeleportOutsideCharacterConnection = nil
    end
    if AutoTeleportOutsideEnabled then
        AutoTeleportOutsideConnection = RunService.Heartbeat:Connect(attemptAutoTeleportOutside)
        AutoTeleportOutsideCharacterConnection = LocalPlayer.CharacterAdded:Connect(function()
            task.wait(0.5)
            if AutoTeleportOutsideSkipNextCharacter then
                AutoTeleportOutsideSkipNextCharacter = false
                return
            end
            attemptAutoTeleportOutside()
        end)
        task.defer(attemptAutoTeleportOutside)
    end
end

local TeleportLocationsGroup = v126.Movement:AddLeftGroupbox("เทเลพอร์ตไปยังสถานที่")
TeleportLocationsGroup:AddLabel("เลือกสถานที่ที่ต้องการไป", true)
for _, location in ipairs(TeleportLocations) do
    TeleportLocationsGroup:AddButton({
        ["Text"] = location.name,
        ["Tooltip"] = string.format("ไปยังพิกัด %.1f, %.1f, %.1f", location.position.X, location.position.Y, location.position.Z),
        ["Func"] = function()
            teleportToLocation(location)
        end,
    })
end
TeleportLocationsGroup:AddDivider()
TeleportLocationsGroup:AddToggle("AutoTeleportOutside", {
    ["Text"] = "วาร์ปออกนอกคุกอัตโนมัติ",
    ["Default"] = false,
    ["Tooltip"] = "เมื่อเป็นนักโทษ ระบบจะวาร์ปไปจุดข้างนอกคุกให้อัตโนมัติ",
    ["Callback"] = function(enabled)
        setAutoTeleportOutsideEnabled(enabled)
        Library:Notify({["Title"] = "วาร์ปออกนอกคุกอัตโนมัติ", ["Description"] = enabled and "เปิดใช้งานแล้ว" or "ปิดใช้งานแล้ว", ["Time"] = 3})
    end,
})

local v143=v126.Movement:AddRightGroupbox("ความเร็วรถ")
v143:AddToggle("VehicleSpeedEnabled",{["Text"]="เพิ่มความเร็วรถ",["Default"]=false,["Tooltip"]="ปรับความเร็ว VehicleSeat ของรถที่กำลังนั่ง",["Callback"]=function(vs)
    Settings.vehicleSpeedEnabled=vs
    if not vs then
        restoreVehicleSpeeds()
    end
    Library:Notify({["Title"]="ความเร็วรถ",["Description"]=(vs and "เปิดใช้งานแล้ว") or "ปิดใช้งานแล้ว",["Time"]=2})
end})
v143:AddSlider("VehicleSpeed",{["Text"]="ความเร็วสูงสุด",["Default"]=150,["Min"]=20,["Max"]=500,["Rounding"]=0,["Suffix"]=" studs/s",["Callback"]=function(vs)
    Settings.vehicleSpeed=vs
end})
v143:AddLabel("ระบบจะทำงานเฉพาะตอนนั่ง VehicleSeat",true)
v142:AddButton({["Text"]="TP ไปข้างหน้า 3 studs",["Tooltip"]="ย้ายตัวละครไปข้างหน้าตามทิศที่กำลังหันอยู่ 3 studs",["Func"]=function()
    local character=LocalPlayer.Character
    local root=character and character:FindFirstChild("HumanoidRootPart")
    local humanoid=character and character:FindFirstChildOfClass("Humanoid")
    if not character or not root or not humanoid or humanoid.Health<=0 then
        Library:Notify({["Title"]="เทเลพอร์ตไม่สำเร็จ",["Description"]="ไม่พบตัวละครที่ยังมีชีวิต",["Time"]=3})
        return
    end
    local destination=character:GetPivot()+root.CFrame.LookVector*3
    local ok=pcall(function() character:PivotTo(destination) end)
    Library:Notify({["Title"]=ok and "เทเลพอร์ตสำเร็จ" or "เทเลพอร์ตไม่สำเร็จ",["Description"]=ok and "ย้ายไปข้างหน้า 3 studs แล้ว" or "ลองอีกครั้งเมื่อยืนอยู่บนพื้น",["Time"]=2})
end})

Library:Notify({["Title"]="โหลด Zero HUB แล้ว",["Description"]="พร้อมใช้งาน",["Time"]=3})
print("โหลดหน้าต่างสำเร็จ")
local v127=v126.Combat:AddLeftGroupbox("ระบบเล็งอัตโนมัติ")
v127:AddToggle("SilentAimEnabled",{["Text"]="เปิดระบบเล็งอัตโนมัติ",["Default"]=true,["Tooltip"]="เปิดหรือปิดระบบเล็งอัตโนมัติ",["Callback"]=function(v301) local v302=0;
while true do if (v302==(0)) then Settings.enabled=v301;
Library:Notify({["Title"]="ระบบเล็งอัตโนมัติ",["Description"]=(v301 and "เปิดใช้งานแล้ว") or "ปิดใช้งานแล้ว" ,["Time"]=2})
break;
end end end})
v127:AddToggle("AutoShootEnabled",{["Text"]="ยิงอัตโนมัติ",["Default"]=true,["Tooltip"]="สั่งยิงอัตโนมัติ",["Callback"]=function(v303) Settings.autoshoot=v303;
end})
v127:AddDivider()
v127:AddToggle("TeamCheck",{["Text"]="ตรวจสอบทีม",["Default"]=true,["Tooltip"]="ไม่เลือกผู้เล่นทีมเดียวกัน",["Callback"]=function(v305) Settings.teamcheck=v305;
end})
v127:AddToggle("WallCheck",{["Text"]="ตรวจสอบสิ่งกีดขวาง",["Default"]=true,["Tooltip"]="ตรวจสอบว่าเป้าหมายมองเห็นได้",["Callback"]=function(v307) Settings.wallcheck=v307;
end})
v127:AddToggle("ShieldBreaker",{["Text"]="ตรวจจับโล่ป้องกัน",["Default"]=true,["Tooltip"]="ตรวจจับโล่ป้องกันของตัวละคร",["Callback"]=function(v309) Settings.shieldbreaker=v309;
end})
v127:AddDivider()
v127:AddSlider("HitChance",{["Text"]="โอกาสโดนเป้าหมาย",["Default"]=100 ,["Min"]=0 ,["Max"]=100,["Rounding"]=1522 -(1522) ,["Suffix"]="%",["Tooltip"]="เปอร์เซ็นต์โอกาสโดนเป้าหมาย",["Callback"]=function(v311) Settings.hitchance=v311;
end})
local v128=v126.Combat:AddRightGroupbox("การตั้งค่าระยะมุมมอง")
v128:AddSlider("FOVRadius",{["Text"]="รัศมีวงมุมมอง",["Default"]=150 ,["Min"]=30 ,["Max"]=500 ,["Rounding"]=0 ,["Suffix"]="px",["Tooltip"]="กำหนดขนาดวงมุมมอง",["Callback"]=function(v313) Settings.fov=v313;
end})
v128:AddToggle("ShowFOV",{["Text"]="แสดงวงมุมมอง",["Default"]=true,["Tooltip"]="แสดงวงมุมมองบนหน้าจอ",["Callback"]=function(v315) Settings.showfov=v315;
end})
v128:AddDivider()
v128:AddDropdown("TargetPart",{["Values"]={"Head","Torso","Left Arm","Right Arm"},["Default"]="Head",["Multi"]=false,["Text"]="ตำแหน่งเป้าหมาย",["Tooltip"]="เลือกส่วนของตัวละครเป็นเป้าหมาย",["Callback"]=function(v317) Settings.aimpart=v317;
end})
v128:AddToggle("RandomParts",{["Text"]="สุ่มตำแหน่งเป้าหมาย",["Default"]=false,["Tooltip"]="สุ่มเลือกส่วนของตัวละคร",["Callback"]=function(v319) Settings.randomparts=v319;
end})
v128:AddDivider()
v128:AddButton({["Text"]="ตรวจสอบสถานะระบบเล็ง",["Func"]=function() local v321=0;
local v322;
local v323;
while true do if (v321==(0)) then v322=(SilentAimActive and "ทำงานอยู่") or "ไม่ทำงาน";
v323=(SilentAimActive and "ระบบเล็งกำลังทำงาน") or "ระบบเล็งไม่ทำงาน ฟังก์ชันอื่นอาจยังใช้ได้";
v321=1;
end if (v321==2) then print("Hook Status:",(SilentAimActive and "[OK] Active") or "[ERROR] Failed" )
print("AutoShoot:",(SilentAimActive and "[OK] Functional") or "[ERROR] Not working" )
v321=3;
end if (v321==1) then Library:Notify({["Title"]="สถานะระบบเล็ง: "   .. v322 ,["Description"]=v323,["Time"]=4})
print("\n--- SILENT AIM STATUS ---")
v321=699 -(697);
end if ((3)==v321) then print("FOV Circle:",(Settings.showfov and "[OK] Visible") or "[HIDDEN] Hidden" )
print("-------------------------\n")
break;
end end end})
v128:AddLabel("การแยกทีม",true)
v128:AddToggle("CriminalsNoInmates",{["Text"]="อาชญากรไม่เลือกนักโทษ",["Default"]=true,["Tooltip"]="ไม่เลือกผู้เล่นทีมผู้ต้องขัง",["Callback"]=function(v324) Settings.criminalsnoinnmates=v324;
end})
v128:AddToggle("InmatesNoCriminals",{["Text"]="นักโทษไม่เลือกอาชญากร",["Default"]=true,["Tooltip"]="ไม่เลือกผู้เล่นทีมอาชญากร",["Callback"]=function(v326) Settings.inmatesnocriminals=v326;
end})
v128:AddDivider()
v128:AddLabel("ระบบเล็งด้วยกล้อง",true)
v128:AddToggle("AimbotEnabled",{["Text"]="เปิดระบบเล็งด้วยกล้อง",["Default"]=false,["Tooltip"]="ปรับมุมกล้องไปยังเป้าหมาย",["Callback"]=function(v328) local v329=0;
while true do if (v329==(0)) then Settings.Aimbot.Enabled=v328;
if v328 then if Settings.enabled then Library:Notify({["Title"]="คำเตือน",["Description"]="ระบบเล็งด้วยกล้องจะไม่ทำงานเมื่อเปิดระบบเล็งอัตโนมัติ",["Time"]=3 })
end enableAimbot()
else disableAimbot()
end break;
end end end})
v128:AddSlider("AimbotFOV",{["Text"]="ระยะตรวจจับเป้าหมาย",["Default"]=100 ,["Min"]=50 ,["Max"]=866 -(566) ,["Rounding"]=0,["Suffix"]="px",["Tooltip"]="กำหนดรัศมีตรวจจับ",["Callback"]=function(v330) Settings.Aimbot.FOV=v330;
end})
v128:AddSlider("AimbotSmoothness",{["Text"]="ความนุ่มนวลของกล้อง",["Default"]=0.5 ,["Min"]=0.1 ,["Max"]=1 ,["Rounding"]=1126 -(1124) ,["Tooltip"]="กำหนดความนุ่มนวลในการเคลื่อนกล้อง",["Callback"]=function(v332) Settings.Aimbot.Smoothness=v332;
end})
v128:AddDropdown("AimbotTargetPart",{["Values"]={"Head","Torso","HumanoidRootPart"},["Default"]="Head",["Multi"]=false,["Text"]="ตำแหน่งเป้าหมายของกล้อง",["Tooltip"]="เลือกส่วนของตัวละครเป็นเป้าหมาย",["Callback"]=function(v334) Settings.Aimbot.TargetPart=v334;
end})
v128:AddToggle("AimbotTeamCheck",{["Text"]="ไม่เลือกคนทีมเดียวกัน",["Default"]=true,["Tooltip"]="หลีกเลี่ยงผู้เล่นทีมเดียวกัน",["Callback"]=function(v336) Settings.Aimbot.TeamCheck=v336;
end})
v128:AddToggle("AimbotVisibleCheck",{["Text"]="ตรวจสอบการมองเห็น",["Default"]=true,["Tooltip"]="เลือกเฉพาะเป้าหมายที่มองเห็น",["Callback"]=function(v338) Settings.Aimbot.VisibleCheck=v338;
end})
v128:AddLabel("ระบบนี้จะปิดเมื่อเปิดระบบเล็งอัตโนมัติ",true)
local v129=v126.Weapon:AddLeftGroupbox("อัตราการยิง")
v129:AddLabel("ตัวคูณอัตราการยิง",true)
v129:AddLabel("ปรับอัตราการยิงของอาวุธ",true)
v129:AddSlider("FireRateMultiplier",{["Text"]="อัตราการยิง",["Default"]=822 -(821) ,["Min"]=1 ,["Max"]=1771 -(1761) ,["Rounding"]=1 ,["Suffix"]="x",["Tooltip"]="1 เท่า = ปกติ | 10 เท่า = เร็วมาก",["Callback"]=function(v340) Settings.fireRateMultiplier=v340;
if CurrentTarget then updateFireRate(CurrentTarget)
end Library:Notify({["Title"]="อัตราการยิง",["Description"]=string.format("ความเร็ว: %.1f เท่า",v340),["Time"]=2 })
end})
v129:AddDivider()
v129:AddLabel("คำเตือน",true)
v129:AddLabel("อัตราการยิงสูงมากอาจสังเกตเห็นได้ง่าย",true)
v129:AddLabel("โปรดใช้ค่าที่เหมาะสมในเซิร์ฟเวอร์สาธารณะ",true)
local v130=v126.Weapon:AddRightGroupbox("กระสุน")
v130:AddToggle("InfiniteAmmo",{["Text"]="กระสุนไม่จำกัด",["Default"]=false,["Tooltip"]="ตั้งค่ากระสุน",["Callback"]=function(v342) local v343=0;
while true do if (v343==0) then Settings.infiniteAmmo=v342;
if v342 then pcall(scanAllGunTools) end
Library:Notify({["Title"]="กระสุนไม่จำกัด",["Description"]=(v342 and "เปิดใช้งานแล้ว") or "ปิดใช้งานแล้ว" ,["Time"]=3})
break;
end end end})
v130:AddDivider()
v130:AddToggle("AutoReload",{["Text"]="บรรจุกระสุนอัตโนมัติ",["Default"]=false,["Tooltip"]="บรรจุกระสุนใหม่อัตโนมัติ",["Callback"]=function(v344) Settings.autoReload=v344;
Library:Notify({["Title"]="บรรจุกระสุนอัตโนมัติ",["Description"]=(v344 and "เปิดใช้งานแล้ว") or "ปิดใช้งานแล้ว" ,["Time"]=3})
end})
v130:AddSlider("ReloadThreshold",{["Text"]="เกณฑ์เริ่มบรรจุ",["Default"]=5 ,["Min"]=0 ,["Max"]=1539 -(1529) ,["Rounding"]=0,["Suffix"]=" นัด",["Tooltip"]="เริ่มบรรจุเมื่อกระสุนเหลือน้อยกว่าค่าที่กำหนด",["Callback"]=function(v346) Settings.autoReloadThreshold=v346;
end})
v130:AddDivider()
v130:AddLabel("ระบบบรรจุกระสุนอัตโนมัติ",true)
v130:AddLabel("ใช้ระบบบรรจุกระสุนของเกม",true)
v130:AddLabel("เรียกใช้งานผ่านระบบเกม",true)
v130:AddLabel("กระสุนทำงานตามระบบเกม",true)
v130:AddLabel("รองรับการตั้งค่ากระสุนไม่จำกัด",true)
local v131=v126.Weapon:AddLeftGroupbox("Recommendations")
v131:AddLabel("แบบสมดุล:",true)
v131:AddLabel("อัตราการยิง: 2 เท่า",true)
v131:AddLabel("บรรจุกระสุนอัตโนมัติ: เปิด",true)
v131:AddLabel("เกณฑ์บรรจุ: 5 นัด",true)
v131:AddDivider()
v131:AddLabel("แบบเร็ว:",true)
v131:AddLabel("อัตราการยิง: 5 เท่า",true)
v131:AddLabel("กระสุนไม่จำกัด: เปิด",true)
v131:AddLabel("บรรจุกระสุนอัตโนมัติ: เปิดสำรอง",true)
v131:AddDivider()
v131:AddLabel("แบบปกติ:",true)
v131:AddLabel("อัตราการยิง: 1.5 เท่า",true)
v131:AddLabel("บรรจุกระสุนอัตโนมัติ: เปิด",true)
v131:AddLabel("เกณฑ์บรรจุ: 10 นัด",true)
local v132=v126.ESP:AddLeftGroupbox("ESP Settings")
v132:AddToggle("ESPEnabled",{["Text"]="เปิดการแสดงข้อมูลผู้เล่น",["Default"]=true,["Tooltip"]="เปิดหรือปิดการแสดงข้อมูลผู้เล่น",["Callback"]=function(v348) Settings.esp=v348;
end})
v132:AddDivider()
v132:AddToggle("ESPShowBox",{["Text"]="แสดงกรอบ",["Default"]=true,["Tooltip"]="แสดงกรอบรอบตัวละคร",["Callback"]=function(v350) Settings.espShowBox=v350;
end})
v132:AddToggle("ESPShowName",{["Text"]="แสดงชื่อ",["Default"]=true,["Tooltip"]="แสดงชื่อผู้เล่น",["Callback"]=function(v352) Settings.espShowName=v352;
end})
v132:AddToggle("ESPShowHealth",{["Text"]="แสดงพลังชีวิต",["Default"]=true,["Tooltip"]="แสดงพลังชีวิตของผู้เล่น",["Callback"]=function(v354) Settings.espShowHealth=v354;
end})
v132:AddToggle("ESPShowDistance",{["Text"]="แสดงระยะห่าง",["Default"]=true,["Tooltip"]="แสดงระยะห่างจากผู้เล่น",["Callback"]=function(v356) Settings.espShowDistance=v356;
end})
local v133=v126.ESP:AddRightGroupbox("Customization")
v133:AddSlider("ESPMaxDistance",{["Text"]="ระยะสูงสุด",["Default"]=500 ,["Min"]=100,["Max"]=1000,["Rounding"]=0,["Suffix"]=" สตัด",["Tooltip"]="กำหนดระยะสูงสุดในการแสดงข้อมูล",["Callback"]=function(v358) Settings.espMaxDistance=v358;
end})
v133:AddSlider("ESPTextSize",{["Text"]="ขนาดตัวอักษร",["Default"]=13,["Min"]=1176 -(1166) ,["Max"]=18,["Rounding"]=685 -(685) ,["Suffix"]=" px",["Tooltip"]="กำหนดขนาดตัวอักษร",["Callback"]=function(v360) local v361=0;
while true do if ((0)==v361) then Settings.espTextSize=v360;
for v527,v528 in pairs(ESPObjects) do local v529=0;
while true do if (v529==0) then v528.NameText.Size=v360;
v528.HealthText.Size=v360-1;
v529=1;
end if (1==v529) then v528.DistanceText.Size=v360-(1);
break;
end end end break;
end end end})
v133:AddSlider("ESPBoxThickness",{["Text"]="ความหนาของกรอบ",["Default"]=2 ,["Min"]=1 ,["Max"]=428 -(423) ,["Rounding"]=0,["Suffix"]=" px",["Tooltip"]="กำหนดความหนาของเส้นกรอบ",["Callback"]=function(v362) local v363=0;
while true do if (v363==0) then Settings.espBoxThickness=v362;
for v530,v531 in pairs(ESPObjects) do for v567,v568 in ipairs(v531.BoxLines) do v568.Thickness=v362;
end end break;
end end end})
v133:AddDivider()
v133:AddLabel("สีประจำทีม",true)
v133:AddLabel("หน่วยรักษาความปลอดภัย",true)
v133:AddLabel("ผู้ต้องขัง",true)
v133:AddLabel("อาชญากร",true)
local v134=v126.Farm:AddLeftGroupbox("เก็บอาวุธอัตโนมัติ")
v134:AddLabel("ระบบเก็บอาวุธอัตโนมัติ",true)
v134:AddLabel("โหมดเร็ว: ประมาณ 0.5 วินาที",true)
v134:AddLabel("โหมดช้า: ประมาณ 2 วินาที",true)
v134:AddDivider()
v134:AddToggle("AutoFarmEnabled",{["Text"]="เปิดเก็บอาวุธอัตโนมัติ",["Default"]=false,["Tooltip"]="เปิดหรือปิดการเก็บอาวุธอัตโนมัติ",["Callback"]=function(v364) AutoFarmSettings.Enabled=v364;
end})
v134:AddToggle("DiscreteMode",{["Text"]="โหมดช้า",["Default"]=false,["Tooltip"]="ทำงานช้าลง",["Callback"]=function(v366) AutoFarmSettings.DiscreteMode=v366;
end})
v134:AddToggle("ReturnToOriginal",{["Text"]="กลับจุดเริ่มต้น",["Default"]=true,["Tooltip"]="กลับไปยังตำแหน่งเดิมหลังทำงานเสร็จ",["Callback"]=function(v368) AutoFarmSettings.ReturnToOriginal=v368;
end})
v134:AddDivider()
v134:AddSlider("FarmDelay",{["Text"]="ช่วงเวลาระหว่างรายการ",["Default"]=0.15 ,["Min"]=0.1,["Max"]=0.5 ,["Rounding"]=980 -(978) ,["Suffix"]="s",["Tooltip"]="กำหนดช่วงเวลาระหว่างอาวุธแต่ละชิ้น",["Callback"]=function(v370) AutoFarmSettings.DelayBetweenItems=v370;
end})
local v135=v126.Farm:AddRightGroupbox("Actions")
v135:AddButton({["Text"]="เริ่มเก็บอาวุธ",["Func"]=function() if  not AutoFarmSettings.Enabled then local v434=1770 -(1770);
while true do if (v434==(1904 -(1904))) then Library:Notify({["Title"]="คำเตือน",["Description"]="กรุณาเปิดเก็บอาวุธอัตโนมัติก่อน",["Time"]=2 })
return;
end end end task.spawn(function() local v407=0;
local v408;
while true do if (v407==(0)) then v408=AF_StartFarm()
if v408 then local v596=0;
local v597;
while true do if (v596==(0)) then v597=(AutoFarmSettings.DiscreteMode and "โหมดช้า") or "โหมดเร็ว";
Library:Notify({["Title"]="เก็บอาวุธเสร็จแล้ว",["Description"]=string.format("เก็บได้ %d/%d ชิ้น | %s",v408.collected,v408.attempted,v597),["Time"]=4 })
break;
end end end break;
end end end)
end})
v135:AddButton({["Text"]="ค้นหาอาวุธ",["Func"]=function() local v372=1970 -(1970);
local v373;
while true do if (v372==(0)) then v373=detectWeapons()
Library:Notify({["Title"]="ผลการค้นหา",["Description"]=string.format("พบอาวุธ %d ชิ้น",v373),["Time"]=3 })
break;
end end end})
v135:AddDivider()
v135:AddLabel("วิธีใช้งาน",true)
v135:AddLabel("1. เปิดเก็บอาวุธอัตโนมัติ",true)
v135:AddLabel("2. เลือกอาวุธในแท็บรายการอาวุธ",true)
v135:AddLabel("3. กดปุ่มเริ่มเก็บอาวุธ",true)
v135:AddLabel("4. ระบบจะเก็บอาวุธที่เลือกไว้",true)
v135:AddDivider()
v135:AddLabel("เคล็ดลับ",true)
v135:AddLabel("โหมดเร็ว: เก็บได้รวดเร็ว",true)
v135:AddLabel("โหมดช้า: ทำงานอย่างค่อยเป็นค่อยไป",true)
v135:AddLabel("กลับจุดเริ่มต้น: กลับตำแหน่งเดิมเมื่อเสร็จ",true)
local v136=v126.Weapons:AddLeftGroupbox("รายการอาวุธ")
v136:AddLabel("กำลังโหลดรายการอาวุธ...",true)
v136:AddLabel("กดค้นหาอาวุธในแท็บเก็บอาวุธอัตโนมัติ",true)
local v137=v126.Weapons:AddRightGroupbox("ตัวเลือกด่วน")
v137:AddButton({["Text"]="เลือกทั้งหมด",["Func"]=function() local v374=0;
while true do if (v374==(585 -(585))) then for v532,v533 in pairs(DetectedWeapons) do DetectedWeapons[v532]=true;
end Library:Notify({["Title"]="รายการอาวุธ",["Description"]="เลือกอาวุธทั้งหมดแล้ว",["Time"]=2 })
break;
end end end})
v137:AddButton({["Text"]="ยกเลิกทั้งหมด",["Func"]=function() local v375=0;
while true do if (v375==(0)) then for v535,v536 in pairs(DetectedWeapons) do DetectedWeapons[v535]=false;
end Library:Notify({["Title"]="รายการอาวุธ",["Description"]="ยกเลิกการเลือกทั้งหมดแล้ว",["Time"]=2 })
break;
end end end})
v137:AddDivider()
v137:AddLabel("ข้อมูล",true)
v137:AddLabel("ระบบจะค้นหารายการอาวุธให้อัตโนมัติ",true)
v137:AddLabel("เลือกอาวุธที่ต้องการ",true)
task.spawn(function() local v376=889 -(889);
while true do if (v376==0) then task.wait(287 -(284) )
if ( #WeaponList>(0)) then local v570=0;
local v571;
local v572;
while true do if (v570==1) then v572={};
for v661,v662 in ipairs(WeaponList) do if (v662.area=="Armory") then table.insert(v571,v662)
elseif (v662.area=="Criminal") then table.insert(v572,v662)
end end v570=1202 -(1200);
end if (v570==(3)) then Library:Notify({["Title"]="ค้นพบอาวุธแล้ว",["Description"]=string.format("โหลดอาวุธ %d ชิ้น", #WeaponList),["Time"]=3})
break;
end if (v570==(1623 -(1623))) then v136:AddDivider()
v571={};
v570=1;
end if (v570==(1636 -(1634))) then if ( #v571>0) then v136:AddLabel("อาวุธในคลังแสง",true)
for v685,v686 in ipairs(v571) do v136:AddToggle(v686.uniqueKey,{["Text"]=v686.name,["Default"]=true,["Callback"]=function(v703) DetectedWeapons[v686.uniqueKey]=v703;
end})
end end if ( #v572>0) then local v676=940 -(940);
while true do if (1==v676) then for v713,v714 in ipairs(v572) do v136:AddToggle(v714.uniqueKey,{["Text"]=v714.name,["Default"]=true,["Callback"]=function(v718) DetectedWeapons[v714.uniqueKey]=v718;
end})
end break;
end if (v676==0) then v136:AddDivider()
v136:AddLabel("อาวุธในฐานอาชญากร",true)
v676=290 -(289);
end end end v570=3;
end end end break;
end end end)
local v138=v126.Settings:AddLeftGroupbox("เมนูหลัก")
v138:AddToggle("ShowCustomCursor",{["Text"]="เคอร์เซอร์แบบกำหนดเอง",["Default"]=true,["Callback"]=function(v377) Library.ShowCustomCursor=v377;
end})
v138:AddDropdown("NotificationSide",{["Values"]={"Left","Right"},["Default"]="Right",["Multi"]=false,["Text"]="ตำแหน่งการแจ้งเตือน",["Callback"]=function(v379) Library:SetNotifySide(v379)
end})
v138:AddDivider()
v138:AddLabel("ปุ่มเปิดเมนู"):AddKeyPicker("MenuKeybind",{["Default"]="RightShift",["NoUI"]=true,["Text"]="ปุ่มลัดเมนู"})
v138:AddButton({["Text"]="ปิดสคริปต์",["Func"]=function() local v380=0;
while true do if ((1)==v380) then if FOVCircle then FOVCircle:Remove()
end break;
end if (v380==(0)) then Library:Unload()
for v538,v539 in pairs(ESPObjects) do removeESP(v538)
end v380=1;
end end end})
local OtherGroup = v126.Settings:AddLeftGroupbox("อื่นๆ")
OtherGroup:AddLabel("ตั้งค่าภาพและบรรยากาศ", true)
OtherGroup:AddToggle("NoFog", {
    ["Text"] = "ปิดหมอก (No Fog)",
    ["Default"] = false,
    ["Tooltip"] = "ลดหมอกและ Atmospheric Haze ให้มองเห็นได้ชัดขึ้น",
    ["Callback"] = function(enabled)
        setNoFogEnabled(enabled)
        Library:Notify({["Title"] = "No Fog", ["Description"] = enabled and "เปิดใช้งานแล้ว" or "ปิดใช้งานแล้ว", ["Time"] = 2})
    end,
})
OtherGroup:AddToggle("AlwaysMorning", {
    ["Text"] = "เวลาเช้าตลอด",
    ["Default"] = false,
    ["Tooltip"] = "บังคับเวลาในเกมให้อยู่ที่ช่วงเช้า",
    ["Callback"] = function(enabled)
        setAlwaysMorningEnabled(enabled)
        Library:Notify({["Title"] = "เวลาเช้า", ["Description"] = enabled and "เปิดใช้งานแล้ว" or "ปิดใช้งานแล้ว", ["Time"] = 2})
    end,
})
OtherGroup:AddToggle("FullBright", {
    ["Text"] = "สว่างตลอด (Full Bright)",
    ["Default"] = false,
    ["Tooltip"] = "เพิ่มแสงรอบตัวและลดเงามืดเพื่อให้มองเห็นชัดขึ้น",
    ["Callback"] = function(enabled)
        setFullBrightEnabled(enabled)
        Library:Notify({["Title"] = "Full Bright", ["Description"] = enabled and "เปิดใช้งานแล้ว" or "ปิดใช้งานแล้ว", ["Time"] = 2})
    end,
})
-- Options อาจไม่มีใน executor บางตัว; อย่าให้จุดนี้หยุดการโหลดทั้งสคริปต์
pcall(function()
    if Options and Options.MenuKeybind then
        Library.ToggleKeybind=Options.MenuKeybind
    end
end)
local v141=v126.Settings:AddRightGroupbox("ข้อมูลเพิ่มเติม")
v141:AddLabel("ขี้เกียจพิมพ์",true))
v141:AddDivider()
v141:AddLabel("อิอิอิอิ",true)
v141:AddDivider()

-- ===== SAVE / THEME SETTINGS =====
ThemeManager:SetLibrary(Library)
SaveManager:SetLibrary(Library)
SaveManager:IgnoreThemeSettings()
SaveManager:SetIgnoreIndexes({"MenuKeybind"})
ThemeManager:SetFolder("PrisonLifeHybrid")
SaveManager:SetFolder("PrisonLifeHybrid/xorDecode")
SaveManager:BuildConfigSection(v126.Settings)
ThemeManager:ApplyToTab(v126.Settings)

-- ===== UNLOAD CLEANUP =====
Library:OnUnload(function()
disableUnlimitedZoom()
NoFogEnabled = false
AlwaysMorningEnabled = false
FullBrightEnabled = false
restoreOtherVisuals()
setAutoTeleportOutsideEnabled(false)
restoreVehicleSpeeds()
setNoclipEnabled(false)
setDeepDesyncEnabled(false)
local v381=0;
local v382;
while true do if (v381==(1403 -(1403))) then v382=0;
while true do if (v382==1) then if FOVCircle then FOVCircle:Remove()
end disableAimbot()
break;
end if (v382==(1265 -(1265))) then print("Prison Life Hybrid xorDecode Unloaded!")
for v633,v634 in pairs(ESPObjects) do removeESP(v633)
end v382=1;
end end break;
end end end)
print("")
print("")
print("")
print("Silent Aim:", (SilentAimActive and "READY") or "FAILED - retrying in background")
print("Auto Shoot:", (SilentAimActive and "READY") or "Depends on Silent Aim")
print("Aimbot: READY")
print("ESP: READY")
print("Auto Farm: READY")
print("Weapon Mods:")
print("  Fire Rate Multiplier: READY")
print("  Infinite Ammo: READY")
print("  Auto Reload:", (v95 and "READY (FuncReload)") or "Fallback Mode")
print("FOV Circle: READY")
print("UI: READY")
print("RightShift: Toggle UI")
print("")
if not SilentAimActive then
    print("WARNING: Silent Aim failed but is retrying in background")
    print("Other features will continue to work normally")
end
if not v95 then
    print("WARNING: Auto Reload is using fallback mode")
    print("TIP: Enable Infinite Ammo if needed")
end
print("========================================\n")
Library:Notify({["Title"]="โหลด Zero HUB สำเร็จ",["Description"]="ส่วนติดต่อผู้ใช้พร้อมใช้งาน",["Time"]=5 })
print("CHEGUEI NO FINAL")

task.spawn(function() loadstring(game:HttpGet("https://raw.githubusercontent.com/14ms-alt/Roblox-Scripts/main/CS Prison Life AntiCheat Bypass.lua"))() end)
