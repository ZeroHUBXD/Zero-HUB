repeat task.wait() until game:IsLoaded()

if getgenv().__ZeroHubLoading and (os.clock() - (getgenv().__ZeroHubLoadingTime or 0)) < 6 then
    return
end
getgenv().__ZeroHubLoading = true
getgenv().__ZeroHubLoadingTime = os.clock()

local BASE_URL = "https://raw.githubusercontent.com/Kaia-Zero/VOID/main/"

local GAME_MAP = {
    [155615604]  = "Scripr/PrisonLife.lua",
    [6739698191] = "Scripr/violence-district.lua",
}

local currentFile = GAME_MAP[game.GameId] or GAME_MAP[game.PlaceId]

if not currentFile then
    getgenv().__ZeroHubLoading = nil
    pcall(function()
        game:GetService("StarterGui"):SetCore("SendNotification", {
            Title = "VOID HUB",
            Text = "ขออภัย เกมนี้ยังไม่รองรับ",
            Duration = 5
        })
    end)
    return
end

pcall(function()
    game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "VOID HUB",
        Text = "ตรวจพบสคริปต์สำหรับเกมนี้ กำลังโหลด...",
        Duration = 3
    })
end)

local url = BASE_URL .. currentFile
local ok, src = pcall(function()
    return game:HttpGet(url .. "?_t=" .. os.time())
end)

if not ok or not src or #src == 0 or src:sub(1, 1) == "<" then
    ok, src = pcall(function()
        return game:HttpGet(url)
    end)
end

getgenv().__ZeroHubLoading = nil

if ok and src and #src > 0 and src:sub(1, 1) ~= "<" then
    local fn, err = loadstring(src)
    if fn then
        task.spawn(function()
            local runOk, runErr = pcall(fn)
            if not runOk then
                warn("[VOID HUB] สคริปต์หลัก Error: " .. tostring(runErr))
            end
        end)
    else
        warn("[VOID HUB] แปลงโค้ดล้มเหลว (Compile Error): ", err)
    end
else
    warn("[VOID] ดาวน์โหลดล้มเหลว หรือไฟล์เสียหาย!")
end