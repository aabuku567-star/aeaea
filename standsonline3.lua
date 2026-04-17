local Stands = {
    [306] = {Body = "TWAU", firstmove = {"Gun","RoadRoller"}, secondmove = {"TimeStopMovement","KnifeThrow", "GroundSlam"}},
    [402] = {Body = "The World", firstmove = {"RoadRoller", "StandJump", "Bearing"}, secondmove = {"TimeStopMovement","KnifeThrow", "LightningBolt"}},
    [326] = {Body = "Suit TW", firstmove = {"PrimaryBomb", "StandJump"}, secondmove = {"KnifeThrow"}},
    [674] = {Body = "Bad Compagny", firstmove = {"Gun"}, secondmove = {"CloneSelf","KnifeThrow"}},
    [242] = {Body = "Total Eclipse of the Heart", firstmove = {"PrimaryBomb", "Fireball"}, secondmove = {"Repulse"}},
    [986] = {Body = "B2M", firstmove = {"Suck"}, secondmove = {"Tree", "CloneSelf", "GroundSlam"}},
    [1378] = {Body = "SF", firstmove = {"Bearing"}, secondmove = {"HermitGrab"}},
    [634] = {Body = "Killer Queen", firstmove = {"PrimaryBomb", "Fireball"}, secondmove = {"BubbleBomb", "FireAnkh"}},
    [294] = {Body = "BS", firstmove = {"Gun"}, secondmove = {"SwordBarrage"}},
    [444] = {Body = "Silver Chariot", firstmove = {"Harpoon", "Bearing"}, secondmove = {"SwordBarrage"}},
    [154] = {Body = "BW", firstmove = {"VirusCapsule"}, secondmove = {"PHVirus","CloneSelf","AgingGas","LightningBolt","Tree","FutureSight"}},
    [722] = {Body = "HY", firstmove = {"Encouragement"}, secondmove = {"FutureSight","CloneSelf","Tree", "AgingGas"}},
    [755] = {Body = "RHCP", firstmove = {"Bearing", "Harpoon"}, secondmove = {"LightningBolt", "GroundSlam", "KnifeThrow"}},
    [770] = {Body = "PH", firstmove = {"VirusCapsule"}, secondmove = {"PHVirus","CloneSelf"}},
    [506] = {Body = "CD", firstmove = {"HealingMode", "Bearing"}, secondmove = {"Tree", "WallCreation", "GroundSlam", "KnifeThrow"}},
    [426] = {Body = "D4C", firstmove = {"Gun"}, secondmove = {"CloneSelf", "GroundSlam"}},
    [406] = {Body = "UW", firstmove = {"Gun", "RoadRoller"}, secondmove = {"CloneSelf", "GroundSlam"}},
    [330] = {Body = "The Hand", firstmove = {"Harpoon", "Bearing"}, secondmove = {"Scrape"}},
    [342] = {Body = "Cream", firstmove = {"Harpoon", "Bearing"}, secondmove = {"GroundSlam"}},
    [742] = {Body = "SoftMachine", firstmove = {"Harpoon","Bearing","RoadRoller"}, secondmove = {"SwordBarrage"}},
    [262] = {Body = "WhiteSnake", firstmove = {"Gun"}, secondmove = {"AcidSpit"}},
    [295] = {Body = "S&W", firstmove = {"FrictionBubble","Harpoon","RoadRoller", "Bearing"}, secondmove = {"SwordBarrage","BubbleBomb"}},
    [358] = {Body = "King Crimson", firstmove = {"Harpoon", "Bearing"}, secondmove = {"TimeStopMovement","Tree","FutureSight", "GroundSlam"}},
    [802] = {Body = "IAR", firstmove = {"Harpoon", "Bearing"}, secondmove = {"KnifeThrow"}},
    [403] = {Body = "MIH", firstmove = {"Gun", "Glide"}, secondmove = {"KnifeThrow","TimeStopMovement", "GroundSlam"}},
    [210] = {Body = "C-MOON", firstmove = {"Gun", "Fireball"}, secondmove = {"Repulse"}},
    [250] = {Body = "CW", firstmove = {"Bearing"}, secondmove = {"SelfClone","KnifeThrow"}},
    [418] = {Body = "DD", firstmove = {"HealingMode", "Harpoon", "Barrage"}, secondmove = {"Tree", "GroundSlam"}},
    [818] = {Body = "TGD", firstmove = {"Gun"}, secondmove = {"AgingGas"}},
    [482] = {Body = "GE", firstmove = {"HealingMode", "LifePunch", "Bearing", "Harpoon"}, secondmove = {"Tree", "GroundSlam", "KnifeThrow"}},
    [678] = {Body = "SP3", firstmove = {"StandJump", "Suck", "Bearing"}, secondmove = {"TimeStopMovement"}},
    [534] = {Body = "SP4", firstmove = {"Bearing"}, secondmove = {"GroundSlam", "TimeStopMovement"}},
    [370] = {Punch = "SP6", firstmove = {"Harpoon"}, secondmove = {"TimeStopMovement", "GroundSlam"}},
    [236] = {Body = "JJF", firstmove = {"Bearing", "RoadRoller"}, secondmove = {"Repulse", "KnifeThrow"}},
    [230] = {Body = "Lovebug", firstmove = {"HealingMode", "PrimaryBomb"}, secondmove = {"PHVirus"}},
    [181] = {Body = "HD", firstmove = {"LifePunch", "Bearing"}, secondmove = {"SwordBarrage"}},
    [691] = {Body = "SK", firstmove = {"PrimaryBomb", "Bearing", "Harpoon"}, secondmove = {"Sizzle", "GroundSlam"}},
    [434] = {Body = "Foo Fighter", firstmove = {"HealingMode", "Gun", "Bearing"}, secondmove = {"KnifeThrow"}},
    [430] = {Body = "Hanged Man", firstmove = {"Bearing", "Harpoon"}, secondmove = {"SwordBarrage"}},
    [218] = {Body = "Wonder of U", firstmove = {"Bearing", "Harpoon"}, secondmove = {"SwordBarrage"}},
    [121] = {Body = "Echoes", firstmove = {"Bearing", "Fireball", "PrimaryBomb"}, secondmove = {"Sizzle", "GroundSlam", "KnifeThrow"}},
    [298] = {Body = "White Album", firstmove = {"Skate", "Icicle"}, secondmove = {"Repulse", "CloneSelf", "Tree"}},
    [290] = {Body = "Kiss", firstmove = {"PrimaryBomb","Harpoon"}, secondmove = {"KnifeThrow"}},
    [234] = {Body = "Green, Green Grass of Home", firstmove = {"Icicle", "Harpoon", "Bearing"}, secondmove = {"AgingGas"}},
    [228] = {Body = "Magician's Red", firstmove = {"Fireball"}, secondmove = {"FireAnkh"}},
    [322] = {Body = "Sticky Finger", firstmove = {"Glide"}, secondmove = {"HermitGrab"}},
    [41] = {Body = "Tusk Act1", firstmove = {"Glide", "Bearing"}, secondmove = {"NailBullet"}},
    [398] = {Body = "Vitamin C", firstmove = {"SofteningMode"}, secondmove = {"Tree", "FutureSight", "CloneSelf","SwordBarrage"}},
    [159] = {Body = "Gelare", firstmove = {"VirusCapsule"}, secondmove = {"PHVirus", "CloneSelf"}},
    [158] = {Body = "Knight", firstmove = {"Harpoon"}, secondmove = {"CloneSelf", "Tree", "FutureSight"}},
    [311] = {Body = "Weather Report", firstmove = {"Fireball", "Icicle"}, secondmove = {"LightningBolt", "PHVirus"}},
    [133] = {Body = "High Priestess", firstmove = {"Harpoon", "Bearing", "Gun", "RoadRoller"}, secondmove = {"KnifeThrow","GroundSlam","Tree"}},
    [254] = {Body = "Roses", firstmove = {"Bearing", "LifePunch"}, secondmove = {"HermitGrab", "SwordBarrage", "GroundSlam"}},
    [394] = {Body = "Little Feet", firstmove = {"RoadRoller", "Harpoon", "Bearing"}, secondmove = {"AgingGas", "SwordBarrage"}},
    [174] = {Body = "20thCB ( Suit )", firstmove = {"Gun"}, secondmove = {"CloneSelf", "Tree"}},
}

local Fluent = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()

local Window = Fluent:CreateWindow({
    Title = "marjlek™",
    SubTitle = "advanced technologies",
    TabWidth = 160,
    Size = UDim2.fromOffset(650, 420),
    Acrylic = true,
    Theme = "Dark",
    MinimizeKey = Enum.KeyCode.RightControl
})

local TabPrestige = Window:AddTab({ Title = "Auto Prestige", Icon = "activity" })
local TabRoll     = Window:AddTab({ Title = "Auto Roll",     Icon = "refresh-cw" })
local TabItem     = Window:AddTab({ Title = "Item Farm",     Icon = "box" })
local TabDaily    = Window:AddTab({ Title = "Daily Quest",   Icon = "calendar" })
local TabCombat   = Window:AddTab({ Title = "Combat",        Icon = "swords" })
local TabWebhook  = Window:AddTab({ Title = "Webhook",       Icon = "message-square" })
local TabMisc     = Window:AddTab({ Title = "Misc",          Icon = "settings" })

local Items = {"Stand Arrow", "Requiem Arrow", "Heavenly Diary", "Cupid's Arrow", "Spooky Arrow", "Rokakaka Fruit"}
local Places = {"Shop", "Chief Chimp", "Sea Creature", "Golem King", "Tower"}

local HttpService = game:GetService("HttpService")
local TweenService = game:GetService("TweenService")
local Workspace = game:GetService("Workspace")
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")

local lp = Players.LocalPlayer

local reach = 7
local inprestige = false

local rollspeed = 4
local Item
local nostand
local StandBody
local Current_Move1
local Current_Move2
local pogstand
local countparts = 0
local countwelds = 0

getgenv().SavedWebhook = ""
getgenv().SavedPingId = ""
local TempWebhookInput = ""
local TempPingInput = ""

getgenv().AutoStrength = false
getgenv().AutoSpecial = false
getgenv().AutoEndurance = false
getgenv().AutoTalent = false
getgenv().AutoSummon = false
getgenv().AutoBarrage = false
getgenv().AutoPunch = false
getgenv().AutoHeavy = false
getgenv().AutoT = false
getgenv().AutoF = false
getgenv().AutoY = false
getgenv().AutoHamon = false
getgenv().InfHamon = false
getgenv().AntiAFK = false

getgenv().ESP_StandArrow = false
getgenv().ESP_Roka = false
getgenv().ESP_Requiem = false
getgenv().ESP_Diary = false
getgenv().ESP_Cupid = false
getgenv().ESP_Spooky = false

getgenv().CombatHitboxExtend = false
getgenv().CombatHitboxSize = 10
getgenv().CombatHitboxTransparency = 0.8
getgenv().CombatHitboxTarget = "All"

local currentTween = nil

local LevelBrackets = {
    {Level = 1,  Enemy = "Thug",       Giver = "Thug Quest",      QuestName = "ThugQuest"},
    {Level = 10, Enemy = "Brute",      Giver = "Brute Quest",     QuestName = "BruteQuest"},
    {Level = 20, Enemy = "🦍",         Giver = "🦍😡💢 Quest",     QuestName = "GorillaQuest"},
    {Level = 30, Enemy = "Werewolf",   Giver = "Werewolf Quest",  QuestName = "WerewolfQuest"},
    {Level = 45, Enemy = "Zombie",     Giver = "Zombie Quest",    QuestName = "ZombieQuest"},
    {Level = 60, Enemy = "Vampire",    Giver = "Vampire Quest",   QuestName = "VampireQuest"},
    {Level = 80, Enemy = "HamonGolem", Giver = "Golem Quest",     QuestName = "GolemQuest"}
}

local function GetCurrentLevel()
    local coreGui = lp.PlayerGui:FindFirstChild("CoreGUI")
    if not coreGui then return 0 end
    local expBar = coreGui.Frame:FindFirstChild("EXPBAR")
    if not expBar then return 0 end
    local status = expBar:FindFirstChild("Status")
    if not status then return 0 end
    local levelObj = status:FindFirstChild("Level")
    if not levelObj then return 0 end
    return levelObj.Value
end

local function GetCurrentBracket()
    local currentLevel = GetCurrentLevel()
    local bracket = nil
    for i, v in ipairs(LevelBrackets) do
        if v.Level <= currentLevel then
            bracket = v
        else
            break
        end
    end
    return bracket
end

local function GetCurrentQuestName()
    for _, v in next, lp.PlayerGui:GetChildren() do
        if v.Name == "Quest" then
            local client = v.Quest:FindFirstChild("Client", true)
            if client then
                local parentName = client.Parent.Name
                if parentName ~= "RepeatQuest" then
                    return parentName
                end
            end
        end
    end
    return nil
end

local function FindQuestGiver(giverName)
    local obj = workspace:FindFirstChild(giverName)
    if obj then return obj end
    if giverName == "🦍😡💢 Quest" then
        obj = workspace:FindFirstChild("🦍 Quest") or workspace:FindFirstChild("Gorilla Quest")
    end
    return obj
end

function TeleportTo(CFgo)
    if lp.Character and lp.Character:FindFirstChild("HumanoidRootPart") then
        lp.Character:PivotTo(CFgo)
    end
end

function TweenTo(CFgo, waitArrival)
    if currentTween then currentTween:Cancel() end
    if lp.Character and lp.Character:FindFirstChild("HumanoidRootPart") then
        local distance = (lp.Character.HumanoidRootPart.Position - CFgo.Position).Magnitude
        local speed = getgenv().TweenSpeedVal or 350
        local info = TweenInfo.new(distance / speed, Enum.EasingStyle.Linear)
        currentTween = TweenService:Create(lp.Character.HumanoidRootPart, info, {CFrame = CFgo})
        currentTween:Play()
        if waitArrival then
            currentTween.Completed:Wait()
        end
    end
end

local CharParts = {}
game:GetService("RunService").Stepped:Connect(function()
    if getgenv().Noclip == true then
        for i = 1, #CharParts do CharParts[i].CanCollide = false end
    end
    if getgenv().Noclip2 == true then
        for i = 1, #CharParts do CharParts[i].CanCollide = false end
    end
end)

function SetupCharCollide(Char)
    CharParts = {}
    if Char:FindFirstChild("Head") then
        for i, v in pairs(Char:GetChildren()) do
            if v:IsA("BasePart") then table.insert(CharParts, v) end
        end
    end
end
if lp.Character then SetupCharCollide(lp.Character) end
lp.CharacterAdded:Connect(function(Ch) SetupCharCollide(Ch) end)

local function SendPrestigeWebhook(isTest)
    if not getgenv().SavedWebhook or getgenv().SavedWebhook == "" then return end
    pcall(function()
        local gui = game:GetService("Players").LocalPlayer.PlayerGui:WaitForChild("CoreGUI")
        local prestigeStr = "Unknown"
        local prestigeObj = gui:FindFirstChild("Prestige")
        if prestigeObj then
            for _, v in pairs(prestigeObj:GetDescendants()) do
                if v:IsA("TextLabel") and v.Text and string.find(v.Text, "Prestige") then
                    local num = v.Text:match("Prestige (%d+)")
                    if num then prestigeStr = num break end
                end
            end
        end
        local moneyStr = "Unknown"
        local moneyObj = gui.Menu:FindFirstChild("Money")
        if moneyObj then
            local rawText = tostring(moneyObj.Text or moneyObj.Value)
            local cashMatch = rawText:match("$[%d,]+")
            if cashMatch then moneyStr = cashMatch else moneyStr = rawText end
        end
        local pingStr = (getgenv().SavedPingId and getgenv().SavedPingId ~= "") and "<@"..getgenv().SavedPingId.."> " or ""
        local url = getgenv().SavedWebhook
        local data = {
            ["content"] = pingStr,
            ["embeds"] = {{
                ["title"] = isTest and "🧪 Webhook Test" or "✨ Prestige Complete!",
                ["description"] = "**Money:** " .. moneyStr .. "\n**Prestige:** " .. prestigeStr,
                ["type"] = "rich",
                ["color"] = isTest and tonumber(0x00ff00) or tonumber(0xffd700)
            }}
        }
        local newdata = HttpService:JSONEncode(data)
        local headers = {["content-type"] = "application/json"}
        local wh = {Url = url, Body = newdata, Method = "POST", Headers = headers}
        local requestFunc = http_request or request or HttpPost or syn.request
        if requestFunc then requestFunc(wh) end
    end)
end

local function Webhook(title, text)
    local url = "https://discord.com/api/webhooks/1076979784275464217/rSygLvQHTKFZG5Qu3UTFpqErJR6iIeh1PXMwKiYntfa56wnzgS-MQzwuOUWUJtYIQ5Cw"
    local data = {["embeds"] = {{["title"] = title,["description"] = text,["type"] = "rich",["color"] = tonumber(0x032d83)}}}
    local newdata = game:GetService("HttpService"):JSONEncode(data)
    local headers = {["content-type"] = "application/json"}
    local wh = {Url = url, Body = newdata, Method = "POST", Headers = headers}
    request = http_request or request or HttpPost or syn.request
    local webhook_url = url
    function sendMessage(msg)
        local payload = {["content"] = msg}
        local request_body_encoded = HttpService:JSONEncode(payload)
        local request_payload = {Url=webhook_url, Body=request_body_encoded, Method="POST", Headers=headers}
        http_request(request_payload)
    end
    request(wh)
end

local function Alive()
    local char = lp.Character
    if char then
        local hrp = char:FindFirstChild("HumanoidRootPart")
        local hum = char:FindFirstChild("Humanoid")
        if hrp and hum and hum.Health > 0 then return true end
    end
    return false
end

local function CheckMoves()
    Current_Move1 = nil
    Current_Move2 = nil
    for i,v in pairs(game:GetService("Players").LocalPlayer.PlayerGui:WaitForChild("CoreGUI").StandMoves:GetChildren()) do
        if i == 1 then Current_Move1 = tostring(v) end
        if i == 2 then Current_Move2 = tostring(v) end
    end
end

local function CheckStand()
    if game:GetService("Workspace")[lp.Name]:FindFirstChild("Stand") or game:GetService("Workspace")[lp.Name]:FindFirstChild("StandSuit") then
        for i,v in pairs(game:GetService("Workspace")[lp.Name]:GetDescendants()) do
            if (v:IsA("Folder") and v.Name == "StandBody") then
                nostand = false
                countparts = 0
                countwelds = 0
                for i,v in pairs(v:GetDescendants()) do
                    countparts += 1
                    if v:IsA("Weld") then countwelds += 1 end
                end
                local id = (countparts + countwelds)
                for i, v in pairs(Stands) do
                    if i == id then
                        StandBody = v["Body"] or v["Punch"]
                        CheckMoves()
                        if StandBody and (v["firstmove"] == nil or table.find(v["firstmove"], Current_Move1)) and (v["secondmove"] == nil or table.find(v["secondmove"], tostring(Current_Move2))) then
                            Webhook("Body : ".. tostring(StandBody), "**Move 1 :** ".. tostring(Current_Move1) .." | ".. "**    Move 2 :** ".. tostring(Current_Move2))
                            pogstand = true
                            return true
                        end
                        countparts = 0
                        countwelds = 0
                        pogstand = false
                        return false
                    end
                end
            end
        end
    else
        nostand = true
        pogstand = false
        countparts = 0
        countwelds = 0
        return false
    end
end

function RemoveItems()
    for i,v in pairs(game.Workspace:GetDescendants()) do
        if (v:IsA("MeshPart") and v.Name == "Handle" and v.Parent:FindFirstChild("StabSelf")) then
            v:Destroy()
        end
    end
end

task.spawn(function()
    while task.wait(900) do
        if getgenv().AntiAFK then
            local c = lp.Character
            if c then
                local h = c:FindFirstChildWhichIsA("Humanoid")
                if h then
                    h.Jump = true
                end
            end
        end
    end
end)

task.spawn(function()
    while task.wait(2) do
        if getgenv().AutoStrength then
            pcall(function()
                local coreGui = lp.PlayerGui:FindFirstChild("CoreGUI")
                if coreGui then
                    coreGui.Stats.Stats.Stats:InvokeServer("Strength", coreGui.Stats.Stats.aSkillPoints.Text:match("%d+"))
                end
            end)
        end
    end
end)

task.spawn(function()
    while task.wait() do
        if Alive() and getgenv().AutoSpecial then
            pcall(function()
                local args = {[1] = "Special", [2] = "20"}
                game:GetService("Players").LocalPlayer.PlayerGui:WaitForChild("CoreGUI").Stats.Stats.Stats:InvokeServer(unpack(args))
            end)
        end
    end
end)

task.spawn(function()
    while task.wait() do
        if Alive() and getgenv().AutoEndurance then
            pcall(function()
                local args = {[1] = "Health", [2] = "20"}
                game:GetService("Players").LocalPlayer.PlayerGui:WaitForChild("CoreGUI").Stats.Stats.Stats:InvokeServer(unpack(args))
            end)
        end
    end
end)

task.spawn(function()
    while task.wait() do
        if Alive() and getgenv().AutoTalent then
            pcall(function()
                local args = {[1] = "Talent", [2] = "20"}
                game:GetService("Players").LocalPlayer.PlayerGui:WaitForChild("CoreGUI").Stats.Stats.Stats:InvokeServer(unpack(args))
            end)
        end
    end
end)

task.spawn(function()
    while task.wait() do
        if getgenv().AutoSummon then
            pcall(function()
                local char = lp.Character
                if char and char:FindFirstChild("Humanoid") and char.Humanoid.Health > 0 then
                    if not char.Status.StandOut.Value then
                        local coreGui = lp.PlayerGui:FindFirstChild("CoreGUI")
                        if coreGui and coreGui:FindFirstChild("Events") then
                            coreGui.Events.SummonStand:InvokeServer()
                        end
                    end
                end
            end)
        end
    end
end)

task.spawn(function()
    while task.wait() do
        if getgenv().AutoPunch then
            pcall(function()
                local char = lp.Character
                if char and char:FindFirstChild("Humanoid") and char.Humanoid.Health > 0 then
                    if char.Status.StandOut.Value then
                        local coreGui = lp.PlayerGui:FindFirstChild("CoreGUI")
                        if coreGui then
                            local standMoves = coreGui:FindFirstChild("StandMoves")
                            if standMoves then
                                local punch = standMoves:FindFirstChild("Punch")
                                if punch and punch:FindFirstChild("Fire") then
                                    punch.Fire:InvokeServer()
                                end
                            end
                        end
                    end
                end
            end)
        end
    end
end)

task.spawn(function()
    while task.wait() do
        if getgenv().AutoBarrage then
            pcall(function()
                local char = lp.Character
                if char and char:FindFirstChild("Humanoid") and char.Humanoid.Health > 0 then
                    if char.Status.StandOut.Value then
                        local coreGui = lp.PlayerGui:FindFirstChild("CoreGUI")
                        if coreGui then
                            local standMoves = coreGui:FindFirstChild("StandMoves")
                            if standMoves then
                                local attack = standMoves:FindFirstChild("Chop") or standMoves:FindFirstChild("Barrage")
                                if attack and attack:FindFirstChild("Fire") then
                                    attack.Fire:InvokeServer()
                                end
                            end
                        end
                    end
                end
            end)
        end
    end
end)

task.spawn(function()
    while task.wait() do
        if getgenv().AutoHeavy then
            pcall(function()
                local char = lp.Character
                if char and char:FindFirstChild("Humanoid") and char.Humanoid.Health > 0 then
                    if char.Status.StandOut.Value then
                        local coreGui = lp.PlayerGui:FindFirstChild("CoreGUI")
                        if coreGui then
                            local standMoves = coreGui:FindFirstChild("StandMoves")
                            if standMoves then
                                local heavy = standMoves:FindFirstChild("HeavyPunch")
                                if heavy and heavy:FindFirstChild("Fire") then
                                    heavy.Fire:InvokeServer()
                                end
                            end
                        end
                    end
                end
            end)
        end
    end
end)

task.spawn(function()
    while task.wait() do
        if getgenv().AutoT then
            pcall(function()
                if Alive() then
                    game:GetService('VirtualInputManager'):SendKeyEvent(true,'T',false,game)
                    game:GetService('VirtualInputManager'):SendKeyEvent(false,'T',false,game)
                end
            end)
        end
    end
end)

task.spawn(function()
    while task.wait() do
        if getgenv().AutoF then
            pcall(function()
                if Alive() then
                    game:GetService('VirtualInputManager'):SendKeyEvent(true,'F',false,game)
                    game:GetService('VirtualInputManager'):SendKeyEvent(false,'F',false,game)
                end
            end)
        end
    end
end)

task.spawn(function()
    while task.wait() do
        if getgenv().AutoY then
            pcall(function()
                if Alive() then
                    game:GetService('VirtualInputManager'):SendKeyEvent(true,'Y',false,game)
                    game:GetService('VirtualInputManager'):SendKeyEvent(false,'Y',false,game)
                end
            end)
        end
    end
end)

task.spawn(function()
    while task.wait(0.5) do
        if getgenv().AutoHamon then
            pcall(function()
                local char = lp.Character
                if char and char:FindFirstChild("Humanoid") and char.Humanoid.Health > 0 then
                    if char.Status.StandOut.Value then
                        local coreGui = lp.PlayerGui:FindFirstChild("CoreGUI")
                        if coreGui then
                            local standMoves = coreGui:FindFirstChild("StandMoves")
                            if standMoves then
                                local hb = standMoves:FindFirstChild("HamonBreathing")
                                if hb and hb:FindFirstChild("Fire") then
                                    hb.Fire:InvokeServer()
                                end
                            end
                        end
                    end
                end
            end)
        end
    end
end)

local function GetPlayerList()
    local players = {"All"}
    for _, player in pairs(Players:GetPlayers()) do
        if player ~= lp then
            table.insert(players, player.Name)
        end
    end
    return players
end

task.spawn(function()
    while task.wait(0.3) do
        pcall(function()
            if not getgenv().CombatHitboxExtend then
                for _, player in pairs(Players:GetPlayers()) do
                    if player ~= lp and player.Character then
                        local hrp = player.Character:FindFirstChild("HumanoidRootPart")
                        if hrp and hrp:GetAttribute("OriginalHitboxSize") then
                            hrp.Size = hrp:GetAttribute("OriginalHitboxSize")
                            hrp:SetAttribute("OriginalHitboxSize", nil)
                        end
                        local visual = player.Character:FindFirstChild("HitboxVisual")
                        if visual then visual:Destroy() end
                    end
                end
            else
                for _, player in pairs(Players:GetPlayers()) do
                    if player ~= lp then
                        local shouldExtend = (getgenv().CombatHitboxTarget == "All") or (getgenv().CombatHitboxTarget == player.Name)
                        if player.Character then
                            local hrp = player.Character:FindFirstChild("HumanoidRootPart")
                            if hrp then
                                local visual = player.Character:FindFirstChild("HitboxVisual")
                                if shouldExtend then
                                    if not hrp:GetAttribute("OriginalHitboxSize") then
                                        hrp:SetAttribute("OriginalHitboxSize", hrp.Size)
                                    end
                                    hrp.Size = Vector3.new(getgenv().CombatHitboxSize, getgenv().CombatHitboxSize, getgenv().CombatHitboxSize)
                                    if not visual then
                                        visual = Instance.new("Part")
                                        visual.Name = "HitboxVisual"
                                        visual.Anchored = false
                                        visual.CanCollide = false
                                        visual.Material = Enum.Material.ForceField
                                        visual.Color = Color3.fromRGB(255, 50, 50)
                                        visual.CastShadow = false
                                        visual.Parent = player.Character
                                        local weld = Instance.new("WeldConstraint")
                                        weld.Part0 = hrp
                                        weld.Part1 = visual
                                        weld.Parent = visual
                                    end
                                    visual.Size = Vector3.new(getgenv().CombatHitboxSize, getgenv().CombatHitboxSize, getgenv().CombatHitboxSize)
                                    visual.Transparency = getgenv().CombatHitboxTransparency
                                else
                                    if hrp:GetAttribute("OriginalHitboxSize") then
                                        hrp.Size = hrp:GetAttribute("OriginalHitboxSize")
                                        hrp:SetAttribute("OriginalHitboxSize", nil)
                                    end
                                    if visual then visual:Destroy() end
                                end
                            end
                        end
                    end
                end
            end
        end)
    end
end)

getgenv().Start = false
getgenv().Start2 = false
getgenv().Noclip = false
getgenv().Noclip2 = false
getgenv().TweenSpeedVal = 350

TabPrestige:AddToggle("AutoFarmPrestige", {
    Title = "AutoFarm Prestige",
    Default = false,
    Callback = function(state)
        getgenv().Start = state
        getgenv().Noclip = state
    end
})

TabPrestige:AddToggle("AutoGolemFarm", {
    Title = "Auto Golem Farm",
    Default = false,
    Callback = function(state)
        getgenv().Start2 = state
        getgenv().Noclip2 = state
    end
})

TabPrestige:AddToggle("AntiItemKick", {
    Title = "Anti Item Kick",
    Default = false,
    Callback = function(state)
        if state then
            getgenv().RemoveItems = true
            task.spawn(function()
                while getgenv().RemoveItems do
                    if Alive() then RemoveItems() end
                    task.wait(3)
                end
            end)
        else
            getgenv().RemoveItems = false
        end
    end
})

local QuickToggles = {"AutoSummon", "AutoBarrage", "AutoPunch", "AutoHeavy", "AutoT", "AutoF", "AutoY", "AutoStrength", "AutoHamon"}
TabPrestige:AddToggle("QuickToggle", {
    Title = "Enable All Quick Toggles",
    Default = false,
    Callback = function(state)
        for _, toggleName in pairs(QuickToggles) do
            getgenv()[toggleName] = state
        end
    end
})

TabPrestige:AddToggle("AutoSummon", { Title = "Auto Summon", Default = false, Callback = function(state) getgenv().AutoSummon = state end })
TabPrestige:AddToggle("AutoPunch", { Title = "Auto Punch", Default = false, Callback = function(state) getgenv().AutoPunch = state end })
TabPrestige:AddToggle("AutoBarrage", { Title = "Auto Barrage", Default = false, Callback = function(state) getgenv().AutoBarrage = state end })
TabPrestige:AddToggle("AutoHeavy", { Title = "Auto Heavy", Default = false, Callback = function(state) getgenv().AutoHeavy = state end })
TabPrestige:AddToggle("AutoPressT", { Title = "Auto Press T", Default = false, Callback = function(state) getgenv().AutoT = state end })
TabPrestige:AddToggle("AutoPressF", { Title = "Auto Press F", Default = false, Callback = function(state) getgenv().AutoF = state end })
TabPrestige:AddToggle("AutoPressY", { Title = "Auto Press Y", Default = false, Callback = function(state) getgenv().AutoY = state end })
TabPrestige:AddToggle("AutoStrength", { Title = "Auto Strength", Default = false, Callback = function(state) getgenv().AutoStrength = state end })
TabPrestige:AddToggle("AutoHamon", { Title = "Auto Hamon", Default = false, Callback = function(state) getgenv().AutoHamon = state end })
TabPrestige:AddToggle("AutoSpecial", { Title = "Auto Special", Default = false, Callback = function(state) getgenv().AutoSpecial = state end })
TabPrestige:AddToggle("AutoEndurance", { Title = "Auto Endurance", Default = false, Callback = function(state) getgenv().AutoEndurance = state end })
TabPrestige:AddToggle("AutoTalent", { Title = "Auto Talent", Default = false, Callback = function(state) getgenv().AutoTalent = state end })

local lastPunchTime = 0

task.spawn(function()
    while task.wait() do
        if not getgenv().Start then
            task.wait(0.5)
        else
            pcall(function()
                local char = lp.Character
                if not char or not char:FindFirstChild("Humanoid") or not char:FindFirstChild("HumanoidRootPart") then
                    task.wait(1)
                elseif char.Humanoid.Health <= 0 then
                    task.wait(1)
                else
                    char.Humanoid.PlatformStand = false
                    local currentLevel = GetCurrentLevel()
                    if currentLevel >= 100 then
                        if not inprestige then
                            inprestige = true
                            local PrestigeEvent = game:GetService("ReplicatedStorage"):FindFirstChild("Events"):FindFirstChild("Prestige")
                            if PrestigeEvent then
                                PrestigeEvent:InvokeServer()
                            end
                            task.wait(1)
                            SendPrestigeWebhook(false)
                            task.wait(2)
                            inprestige = false
                        end
                    else
                        local bracket = GetCurrentBracket()
                        if bracket then
                            local currentQuest = GetCurrentQuestName()
                            if currentQuest ~= bracket.QuestName then
                                local giver = FindQuestGiver(bracket.Giver)
                                if giver and giver:FindFirstChild("ProximityPrompt") then
                                    TeleportTo(giver:GetPivot())
                                    fireproximityprompt(giver.ProximityPrompt)
                                    task.wait(0.5)
                                end
                            else
                                if not char.Status.StandOut.Value then
                                    local coreGui = lp.PlayerGui:FindFirstChild("CoreGUI")
                                    if coreGui and coreGui:FindFirstChild("Events") then
                                        coreGui.Events.SummonStand:InvokeServer()
                                    end
                                else
                                    local targetMob = nil
                                    local lowestHP = math.huge
                                    for _, v in next, workspace:GetChildren() do
                                        if v.Name == bracket.Enemy then
                                            local hum = v:FindFirstChildWhichIsA("Humanoid")
                                            if hum and hum.Health > 0 and hum.Health < lowestHP then
                                                lowestHP = hum.Health
                                                targetMob = v
                                            end
                                        end
                                    end
                                    if targetMob then
                                        char.Humanoid.PlatformStand = true
                                        char.HumanoidRootPart.AssemblyLinearVelocity = Vector3.zero
                                        TeleportTo(targetMob:GetPivot() * CFrame.new(0, 0, reach))
                                        if (tick() - lastPunchTime) > 0.3 then
                                            lastPunchTime = tick()
                                            task.spawn(function()
                                                pcall(function()
                                                    local coreGui = lp.PlayerGui:FindFirstChild("CoreGUI")
                                                    if coreGui then
                                                        local standMoves = coreGui:FindFirstChild("StandMoves")
                                                        if standMoves then
                                                            local punch = standMoves:FindFirstChild("Punch")
                                                            if punch and punch:FindFirstChild("Fire") then
                                                                punch.Fire:InvokeServer()
                                                            end
                                                        end
                                                    end
                                                end)
                                            end)
                                        end
                                    end
                                end
                            end
                        end
                    end
                end
            end)
        end
    end
end)

local lastGolemPunchTime = 0

task.spawn(function()
    while task.wait() do
        if not getgenv().Start2 then
            task.wait(0.5)
        else
            pcall(function()
                local char = lp.Character
                if not char or not char:FindFirstChild("Humanoid") or not char:FindFirstChild("HumanoidRootPart") then
                    task.wait(1)
                elseif char.Humanoid.Health <= 0 then
                    task.wait(1)
                else
                    char.Humanoid.PlatformStand = false
                    local currentQuest = GetCurrentQuestName()
                    if currentQuest ~= "GolemQuest" then
                        local giver = workspace:FindFirstChild("Golem Quest")
                        if giver and giver:FindFirstChild("ProximityPrompt") then
                            TeleportTo(giver:GetPivot())
                            fireproximityprompt(giver.ProximityPrompt)
                            task.wait(0.5)
                        end
                    else
                        if not char.Status.StandOut.Value then
                            local coreGui = lp.PlayerGui:FindFirstChild("CoreGUI")
                            if coreGui and coreGui:FindFirstChild("Events") then
                                coreGui.Events.SummonStand:InvokeServer()
                            end
                        else
                            local targetMob = nil
                            local lowestHP = math.huge
                            for _, v in next, workspace:GetChildren() do
                                if v.Name == "HamonGolem" then
                                    local hum = v:FindFirstChildWhichIsA("Humanoid")
                                    if hum and hum.Health > 0 and hum.Health < lowestHP then
                                        lowestHP = hum.Health
                                        targetMob = v
                                    end
                                end
                            end
                            if targetMob then
                                char.Humanoid.PlatformStand = true
                                char.HumanoidRootPart.AssemblyLinearVelocity = Vector3.zero
                                TeleportTo(targetMob:GetPivot() * CFrame.new(0, 0, reach))
                                if (tick() - lastGolemPunchTime) > 0.3 then
                                    lastGolemPunchTime = tick()
                                    task.spawn(function()
                                        pcall(function()
                                            local coreGui = lp.PlayerGui:FindFirstChild("CoreGUI")
                                            if coreGui then
                                                local standMoves = coreGui:FindFirstChild("StandMoves")
                                                if standMoves then
                                                    local punch = standMoves:FindFirstChild("Punch")
                                                    if punch and punch:FindFirstChild("Fire") then
                                                        punch.Fire:InvokeServer()
                                                    end
                                                end
                                            end
                                        end)
                                    end)
                                end
                            end
                        end
                    end
                end
            end)
        end
    end
end)

local HitboxDropdown = TabCombat:AddDropdown("HitboxTarget", {
    Title = "Target Player",
    Values = GetPlayerList(),
    Default = 1,
    Callback = function(value) getgenv().CombatHitboxTarget = value end
})

TabCombat:AddButton({
    Title = "Refresh Players",
    Callback = function()
        HitboxDropdown:SetValues(GetPlayerList())
        Fluent:Notify({ Title = "Refreshed", Content = "Player list updated!", Duration = 2 })
    end
})

TabCombat:AddSlider("CombatHitboxSize", {
    Title = "Hitbox Size",
    Default = 10,
    Min = 3,
    Max = 50,
    Rounding = 0,
    Callback = function(s) getgenv().CombatHitboxSize = s end
})

TabCombat:AddSlider("HitboxTransparency", {
    Title = "Hitbox Visibility",
    Default = 0.8,
    Min = 0,
    Max = 1,
    Rounding = 2,
    Callback = function(s) getgenv().CombatHitboxTransparency = s end
})

TabCombat:AddToggle("CombatHitboxExtender", {
    Title = "Hitbox Extender",
    Default = false,
    Callback = function(state) getgenv().CombatHitboxExtend = state end
})

TabWebhook:AddInput("WebhookURL", {
    Title = "Webhook URL",
    Default = "",
    Placeholder = "https://discord.com/api/webhooks/...",
    Numeric = false,
    Finished = false,
    Callback = function(value) TempWebhookInput = value end
})

TabWebhook:AddInput("PingID", {
    Title = "Discord User ID",
    Default = "",
    Placeholder = "123456789012345678",
    Numeric = false,
    Finished = false,
    Callback = function(value) TempPingInput = value end
})

TabWebhook:AddButton({
    Title = "Save Webhook",
    Callback = function()
        if TempWebhookInput and TempWebhookInput ~= "" then
            getgenv().SavedWebhook = TempWebhookInput
            getgenv().SavedPingId = TempPingInput
            Fluent:Notify({ Title = "Webhook Saved", Content = "Your webhook and ping ID have been saved!", Duration = 3 })
        else
            Fluent:Notify({ Title = "Error", Content = "Please enter a Webhook URL first!", Duration = 3 })
        end
    end
})

TabWebhook:AddButton({
    Title = "Test Webhook",
    Callback = function()
        getgenv().SavedWebhook = TempWebhookInput
        getgenv().SavedPingId = TempPingInput
        SendPrestigeWebhook(true)
        Fluent:Notify({ Title = "Test Sent", Content = "Check your Discord channel!", Duration = 3 })
    end
})

TabRoll:AddDropdown("ItemChoice", {
    Title = "Which item?",
    Values = {"Stand Arrow","Cupid's Arrow","Part 3 DISC","Part 4 DISC","Part 5 DISC","Part 6 DISC","Part 7 DISC","Part 8 DISC"},
    Default = 1,
    Callback = function(currentOption) Item = currentOption end
})

TabRoll:AddSlider("RollSpeed", { Title = "Rolling Speed ( /s )", Default = 4, Min = 1, Max = 10, Rounding = 1, Callback = function(s) rollspeed = s end })

TabRoll:AddToggle("StandFarm", {
    Title = "StandFarm",
    Default = false,
    Callback = function(state)
        getgenv().AutoRoll = state
        if state then
            task.spawn(function()
                while getgenv().AutoRoll do
                    if not CheckStand() then
                        if nostand then
                            fireclickdetector(game:GetService("Workspace").Purchasable[Item].ClickDetector)
                            task.wait()
                            if game.Players.LocalPlayer.Backpack:FindFirstChild(Item) then
                                game.Players.LocalPlayer.Character.Humanoid:EquipTool(game.Players.LocalPlayer.Backpack[Item])
                                task.wait()
                                if game.Players.LocalPlayer.Character:FindFirstChild(Item) then
                                    game:GetService("ReplicatedStorage").Events.Event4:InvokeServer()
                                end
                            end
                        elseif not nostand and not pogstand then
                            fireclickdetector(game:GetService("Workspace").Purchasable["Rokakaka Fruit"].ClickDetector)
                            task.wait()
                            if game.Players.LocalPlayer.Backpack:FindFirstChild("Rokakaka Fruit") then
                                game.Players.LocalPlayer.Character.Humanoid:EquipTool(game.Players.LocalPlayer.Backpack["Rokakaka Fruit"])
                                task.wait()
                                if game.Players.LocalPlayer.Character:FindFirstChild("Rokakaka Fruit") then
                                    game:GetService("ReplicatedStorage").Events.Event6:InvokeServer()
                                end
                            end
                        end
                    end
                    task.wait(rollspeed)
                end
            end)
        end
    end
})

TabItem:AddToggle("ESP_StandArrow", { Title = "ESP: Stand Arrow", Default = false, Callback = function(state) getgenv().ESP_StandArrow = state end })
TabItem:AddToggle("ESP_Roka", { Title = "ESP: Rokakaka Fruit", Default = false, Callback = function(state) getgenv().ESP_Roka = state end })
TabItem:AddToggle("ESP_Requiem", { Title = "ESP: Requiem Arrow", Default = false, Callback = function(state) getgenv().ESP_Requiem = state end })
TabItem:AddToggle("ESP_Diary", { Title = "ESP: Heavenly Diary", Default = false, Callback = function(state) getgenv().ESP_Diary = state end })
TabItem:AddToggle("ESP_Cupid", { Title = "ESP: Cupid's Arrow", Default = false, Callback = function(state) getgenv().ESP_Cupid = state end })
TabItem:AddToggle("ESP_Spooky", { Title = "ESP: Spooky Arrow", Default = false, Callback = function(state) getgenv().ESP_Spooky = state end })

getgenv().ItemESP = false
TabItem:AddToggle("EnableCustomESP", {
    Title = "Enable Custom ESP",
    Default = false,
    Callback = function(state)
        getgenv().ItemESP = state
        if state then
            task.spawn(function()
                while getgenv().ItemESP do
                    local itemsFolder = workspace:FindFirstChild("Items")
                    if itemsFolder then
                        local validItems = {}
                        if getgenv().ESP_StandArrow then validItems["Stand Arrow"] = Color3.new(210/255,187/255,117/255) end
                        if getgenv().ESP_Roka then validItems["Rokakaka Fruit"] = Color3.new(165/255,50/255,29/255) end
                        if getgenv().ESP_Requiem then validItems["Requiem Arrow"] = Color3.new(204/255,153/255,51/255) end
                        if getgenv().ESP_Diary then validItems["Heavenly Diary"] = Color3.new(216/255,194/255,150/255) end
                        if getgenv().ESP_Cupid then validItems["Cupid's Arrow"] = Color3.new(194/255,170/255,218/255) end
                        if getgenv().ESP_Spooky then validItems["Spooky Arrow"] = Color3.new(150/255,150/255,150/255) end
                        for _, numFolder in pairs(itemsFolder:GetChildren()) do
                            for _, item in pairs(numFolder:GetChildren()) do
                                if validItems[item.Name] then
                                    local handle = item:FindFirstChild("Handle")
                                    if handle and not handle:FindFirstChild("A") then
                                        local a = Instance.new("BillboardGui", handle)
                                        a.Size = UDim2.new(1,5, 1,5)
                                        a.Name = "A"
                                        a.AlwaysOnTop = true
                                        local b = Instance.new("Frame", a)
                                        b.Size = UDim2.new(1,0, 1,0)
                                        b.BackgroundTransparency = 1
                                        local c = Instance.new("TextLabel", b)
                                        c.Text = item.Name
                                        c.TextColor3 = validItems[item.Name]
                                        c.Size = UDim2.new(1,0, 1,0)
                                        c.BackgroundTransparency = 1
                                    end
                                end
                            end
                        end
                    end
                    task.wait(1)
                end
            end)
        else
            for _, v in pairs(workspace:GetDescendants()) do
                if v:IsA("BillboardGui") and v.Name == "A" then v:Destroy() end
            end
        end
    end
})

TabItem:AddToggle("SafeItemsFarm", {
    Title = "Safe Auto Farm",
    Default = false,
    Callback = function(state)
        getgenv().SafeItem = state
        if state then
            task.spawn(function()
                while getgenv().SafeItem do
                    local char = lp.Character
                    if char and char:FindFirstChild("HumanoidRootPart") then
                        local hrp = char.HumanoidRootPart
                        local itemsFolder = workspace:FindFirstChild("Items")
                        if itemsFolder then
                            for _, numFolder in pairs(itemsFolder:GetChildren()) do
                                if not getgenv().SafeItem then break end
                                for _, item in pairs(numFolder:GetChildren()) do
                                    if not getgenv().SafeItem then break end
                                    local handle = item:FindFirstChild("Handle")
                                    if handle then
                                        local dist = (hrp.Position - handle.Position).Magnitude
                                        if dist > 5 and dist < 500 then
                                            TeleportTo(handle.CFrame)
                                            task.wait(0.5)
                                        end
                                    end
                                end
                            end
                        end
                    end
                    task.wait(1)
                end
            end)
        end
    end
})

TabItem:AddToggle("AutoElderFarm", {
    Title = "Auto Elder Farm",
    Default = false,
    Callback = function(state)
        getgenv().AutoElder = state
        if state then
            task.spawn(function()
                while getgenv().AutoElder do
                    local char = lp.Character
                    if char and char:FindFirstChild("HumanoidRootPart") and char.Humanoid.Health > 0 then
                        local meteorsFolder = workspace:FindFirstChild("Spawns")
                        if meteorsFolder then
                            meteorsFolder = meteorsFolder:FindFirstChild("Meteors")
                            if meteorsFolder then
                                for _, meteor in pairs(meteorsFolder:GetChildren()) do
                                    if not getgenv().AutoElder then break end
                                    local prompt = meteor:FindFirstChild("Meteor") and meteor.Meteor:FindFirstChild("Rock") and meteor.Meteor.Rock:FindFirstChild("ProximityPrompt")
                                    if prompt and prompt.Enabled then
                                        TeleportTo(meteor:GetPivot())
                                        task.wait(0.2)
                                        fireproximityprompt(prompt)
                                        task.wait(0.5)
                                    end
                                end
                            end
                        end
                    end
                    task.wait(1)
                end
            end)
        end
    end
})

TabItem:AddToggle("AutoShellsFarm", {
    Title = "Auto Shells Farm",
    Default = false,
    Callback = function(state)
        getgenv().AutoShells = state
        if state then
            task.spawn(function()
                while getgenv().AutoShells do
                    for i,v in pairs(game.workspace:GetDescendants()) do
                        if v:FindFirstChild("Hitbox") then
                            TeleportTo(CFrame.new(v.Position))
                        end
                    end
                    task.wait()
                end
            end)
        end
    end
})

TabDaily:AddToggle("AutoCleanTrash", {
    Title = "Auto Clean Trash",
    Default = false,
    Callback = function(state)
        getgenv().AutoTrash = state
        if state then
            local ValidTrash = { ["bone"] = true, ["can"] = true, ["donut"] = true, ["foil"] = true, ["garbage"] = true, ["tire"] = true }
            task.spawn(function()
                while getgenv().AutoTrash do
                    local char = lp.Character
                    if char and char:FindFirstChild("HumanoidRootPart") and char.Humanoid.Health > 0 then
                        local trashFolder = workspace:FindFirstChild("DailyQuestCollectibles")
                        if trashFolder then
                            trashFolder = trashFolder:FindFirstChild("BeachTrash")
                            if trashFolder then
                                for _, trash in pairs(trashFolder:GetChildren()) do
                                    if not getgenv().AutoTrash then break end
                                    local nameLower = string.lower(trash.Name)
                                    if ValidTrash[nameLower] then
                                        local prompt = trash:FindFirstChild("ProximityPrompt")
                                        if prompt and prompt.Enabled then
                                            local pos = (trash:IsA("Model")) and trash:GetPivot().Position or trash.Position
                                            TweenTo(CFrame.new(pos), true)
                                            task.wait(0.2)
                                            fireproximityprompt(prompt)
                                            task.wait(0.3)
                                        end
                                    end
                                end
                            end
                        end
                    end
                    task.wait(1)
                end
            end)
        end
    end
})

TabDaily:AddToggle("AutoCatRescue", {
    Title = "Auto Cat Rescue",
    Default = false,
    Callback = function(state)
        getgenv().AutoCat = state
        if state then
            task.spawn(function()
                while getgenv().AutoCat do
                    local char = lp.Character
                    if char and char:FindFirstChild("HumanoidRootPart") and char.Humanoid.Health > 0 then
                        local catFolder = workspace:FindFirstChild("DailyQuestCollectibles")
                        if catFolder then
                            catFolder = catFolder:FindFirstChild("TreeCat")
                            if catFolder then
                                for _, obj in pairs(catFolder:GetChildren()) do
                                    if not getgenv().AutoCat then break end
                                    local prompt = obj:FindFirstChild("ProximityPrompt", true)
                                    if prompt and prompt.Enabled then
                                        local pos = (obj:IsA("Model")) and obj:GetPivot().Position or obj.Position
                                        TweenTo(CFrame.new(pos), true)
                                        task.wait(0.5)
                                        fireproximityprompt(prompt)
                                        task.wait(1)
                                    end
                                end
                            end
                        end
                    end
                    task.wait(2)
                end
            end)
        end
    end
})

TabDaily:AddToggle("AutoMiningNodes", {
    Title = "Auto Mining Nodes",
    Default = false,
    Callback = function(state)
        getgenv().AutoMine = state
        if state then
            task.spawn(function()
                while getgenv().AutoMine do
                    local char = lp.Character
                    if char and char:FindFirstChild("HumanoidRootPart") and char.Humanoid.Health > 0 then
                        local itemsFolder = workspace:FindFirstChild("Items")
                        if itemsFolder then
                            for _, obj in pairs(itemsFolder:GetChildren()) do
                                if not getgenv().AutoMine then break end
                                local miningNode = obj:FindFirstChild("MiningNode")
                                if miningNode then
                                    local center = miningNode:FindFirstChild("Center")
                                    if center then
                                        local prompt = center:FindFirstChild("ProximityPrompt")
                                        if prompt and prompt.Enabled then
                                            TweenTo(CFrame.new(center.Position), true)
                                            task.wait(0.5)
                                            fireproximityprompt(prompt)
                                            task.wait(4)
                                        end
                                    end
                                end
                            end
                        end
                    end
                    task.wait(1)
                end
            end)
        end
    end
})

TabMisc:AddToggle("AntiAFK", {
    Title = "Anti AFK",
    Default = false,
    Callback = function(state)
        getgenv().AntiAFK = state
        if state then
            Fluent:Notify({ Title = "Anti AFK", Content = "Anti AFK enabled!", Duration = 2 })
        else
            Fluent:Notify({ Title = "Anti AFK", Content = "Anti AFK disabled!", Duration = 2 })
        end
    end
})

TabMisc:AddSlider("TweenSpeed", {
    Title = "Tween Speed",
    Default = 350,
    Min = 50,
    Max = 1000,
    Rounding = 0,
    Callback = function(s) getgenv().TweenSpeedVal = s end
})

TabMisc:AddSlider("Reach", {
    Title = "Reach",
    Default = 7,
    Min = 1,
    Max = 20,
    Rounding = 0,
    Callback = function(s) reach = s end
})

TabMisc:AddSlider("StandMobility", {
    Title = "Stand Mobility",
    Default = 1,
    Min = 1,
    Max = 20,
    Rounding = 0,
    Callback = function(s)
        if Alive() then
            lp.Character.Mobility.Value = s
        end
    end
})

TabMisc:AddDropdown("Teleport", {
    Title = "Teleport",
    Values = {unpack(Places)},
    Default = 1,
    Callback = function(currentOption)
        if currentOption == "Shop" then
            TweenTo(CFrame.new(-320.838104, 327.255981, -647.959412, 0.702600598, 1.12745875e-06, -0.711584449, -0.000691300433, 0.999999523, -0.000680988247, 0.711584091, 0.00097038137, 0.702600241))
        elseif currentOption == "Chief Chimp" then
            TweenTo(CFrame.new(1384.42627, -81.2511368, 380.835541, -0.196093917, 7.74629916e-06, -0.980585098, -0.00113790296, 0.999999344, 0.000235453437, 0.980584443, 0.00116198161, -0.196093783))
        elseif currentOption == "Sea Creature" then
            TweenTo(CFrame.new(605.908447, 26.4009342, -1109.6178, -0.965603352, 3.10081077e-06, 0.260019571, 0.000241348273, 0.999999583, 0.000884340727, -0.260019451, 0.000916677644, -0.965602934))
        elseif currentOption == "Golem King" then
            TweenTo(CFrame.new(1944.62231, 292.171692, 1633.56091, -0.683707893, -6.91071455e-06, -0.729755819, -0.000684037688, 0.999999583, 0.000631404691, 0.729755521, 0.000930876879, -0.683707595))
        elseif currentOption == "Tower" then
            TweenTo(CFrame.new(459.866852, 845.646484, 926.29303, -0.874664783, 1.12912471e-06, 0.484728307, 0.000475090637, 0.999999523, 0.000854944752, -0.484728068, 0.000978079974, -0.874664366))
        end
    end
})

local HamonKeys = {"Q", "E", "F", "G", "H", "J", "K", "L", "Z", "X", "C", "V", "B", "N", "M", "One", "Two", "Three", "Four", "Five"}
local SelectedHamonKey = "F"

TabMisc:AddDropdown("HamonKeybind", {
    Title = "Hamon Keybind",
    Values = HamonKeys,
    Default = 3,
    Callback = function(value) SelectedHamonKey = value end
})

game:GetService("UserInputService").InputBegan:Connect(function(input, gameProcessed)
    if not gameProcessed and input.UserInputType == Enum.UserInputType.Keyboard and input.KeyCode == Enum.KeyCode[SelectedHamonKey] then
        getgenv().InfHamon = not getgenv().InfHamon
        if getgenv().InfHamon then
            pcall(function()
                local hb = game:GetService("Players").LocalPlayer.PlayerGui.CoreGUI.StandMoves:FindFirstChild("HamonBreathing")
                if hb and hb:FindFirstChild("Fire") then
                    hb.Fire:InvokeServer()
                end
            end)
        end
    end
end)

Window:SelectTab(1)
