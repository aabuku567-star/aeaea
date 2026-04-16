local Rayfield = loadstring(game:HttpGet("https://sirius.menu/rayfield"))()

local RS = game:GetService("ReplicatedStorage")
local Players = game:GetService("Players")
local lp = Players.LocalPlayer
local pg = lp:WaitForChild("PlayerGui") -- Ensure PlayerGui exists
local Events = RS:WaitForChild("Events")
local Items = workspace:WaitForChild("Items")
local Inventory = lp:WaitForChild("Inventory")

local flags = {
    level_farm = false,
    auto_strength = false,
    auto_prestige = false,
    item_farm = false,
    node_farm = false,
    daily_trash = false,
    daily_cats = false,
}

local blacklist = {"DespairStone","rageStone","JoyStone"}
local skipList = {}
local lastPunch = 1

local MaxSlots = RS.GameSettings.MaxStorageSlots
local cap = (game:GetService("MarketplaceService"):UserOwnsGamePassAsync(lp.UserId, 869791407) and (MaxSlots.Value * 2)) or MaxSlots.Value

local specialItems = {
    Mask = {Name="Vampire Mask", ActualCap=30},
    Ceasers = {Name="Hamon Headband", ActualCap=30},
}

local quests = {
    {Level=1,  Enemy="Thug",      Giver="Thug Quest"},
    {Level=10, Enemy="Brute",     Giver="Brute Quest"},
    {Level=20, Enemy="🦍",        Giver="🦍😡💢 Quest", InternalName="GorillaQuest"},
    {Level=30, Enemy="Werewolf",  Giver="Werewolf Quest"},
    {Level=45, Enemy="Zombie",    Giver="Zombie Quest"},
    {Level=60, Enemy="Vampire",   Giver="Vampire Quest"},
    {Level=80, Enemy="HamonGolem",Giver="Golem Quest"},
}

local function getChar()
    local c = lp.Character
    if c then
        local h = c:FindFirstChildWhichIsA("Humanoid")
        return h and h.Health > 0 and c
    end
end

local function getLevel()
    local gui = pg:FindFirstChild("CoreGUI")
    if not gui or not gui:FindFirstChild("Frame") then return end
    
    local lvlVal = gui.Frame.EXPBAR.Status.Level
    local lvl = lvlVal.Value
    local result = nil
    for _, q in ipairs(quests) do
        if q.Level <= lvl then result = q else break end
    end
    return result
end

local function getActiveQuest()
    for _, v in next, pg:GetChildren() do
        if v.Name == "Quest" and v:FindFirstChild("Quest") then
            local c = v.Quest:FindFirstChild("Client", true)
            if c then
                return c.Parent and c.Parent.Name ~= "RepeatQuest" and c.Parent.Name
            end
        end
    end
end

local function teleport(cf, char)
    local c = char or getChar()
    if c and c.PrimaryPart then
        c.PrimaryPart.AssemblyAngularVelocity = Vector3.zero
        c.PrimaryPart.AssemblyLinearVelocity = Vector3.zero
        c:PivotTo(cf)
    end
end

-- Anti-AFK
task.spawn(function()
    while true do
        task.wait(900)
        local v = lp.Character
        if v then
            local h = v:FindFirstChildWhichIsA("Humanoid")
            if h then h.Jump = true end
        end
    end
end)

local Window = Rayfield:CreateWindow({
    Name = "Stands Online Hub",
    LoadingTitle = "Stands Online",
    LoadingSubtitle = "Hub",
    ConfigurationSaving = { Enabled = false },
    Discord = { Enabled = false },
    KeySystem = false,
})

local FarmTab = Window:CreateTab("Farm", 4483362458)
local DailyTab = Window:CreateTab("Daily Quests", 4483362458)
local RemoteTab = Window:CreateTab("Buy Items", 4483362458)

FarmTab:CreateToggle({ Name = "Level Farm", CurrentValue = false, Flag = "level_farm", Callback = function(v) flags.level_farm = v end })
FarmTab:CreateToggle({ Name = "Auto Strength", CurrentValue = false, Flag = "auto_strength", Callback = function(v) flags.auto_strength = v end })
FarmTab:CreateToggle({ Name = "Auto Prestige", CurrentValue = false, Flag = "auto_prestige", Callback = function(v) flags.auto_prestige = v end })
FarmTab:CreateToggle({ Name = "Item Farm", CurrentValue = false, Flag = "item_farm", Callback = function(v) flags.item_farm = v end })
FarmTab:CreateToggle({ Name = "Include Nodes", CurrentValue = false, Flag = "node_farm", Callback = function(v) flags.node_farm = v end })

DailyTab:CreateToggle({ Name = "Collect Trash (Beach)", CurrentValue = false, Flag = "daily_trash", Callback = function(v) flags.daily_trash = v end })
DailyTab:CreateToggle({ Name = "Find Lost Cats", CurrentValue = false, Flag = "daily_cats", Callback = function(v) flags.daily_cats = v end })

-- Shop Buttons
for _, item in next, workspace:WaitForChild("Purchasable"):GetChildren() do
    local label = item:FindFirstChild("Nametag") and item.Nametag:FindFirstChild("NameLabel") and item.Nametag.NameLabel.Text or item.Name
    local click = item:FindFirstChildWhichIsA("ClickDetector")
    if click then
        RemoteTab:CreateButton({
            Name = label,
            Callback = function()
                local char = getChar()
                if char then
                    click.MaxActivationDistance = 50
                    teleport(item:GetPivot(), char)
                    task.wait(0.1)
                    fireclickdetector(click)
                end
            end,
        })
    end
end

-- Stats Loop (Fixes "Call nil value" by checking existence)
task.spawn(function()
    while true do
        task.wait(2)
        local gui = pg:FindFirstChild("CoreGUI")
        if gui then
            if flags.auto_strength then
                local remote = gui:FindFirstChild("Stats") and gui.Stats:FindFirstChild("Stats") and gui.Stats.Stats:FindFirstChild("Stats")
                if remote and remote:IsA("RemoteFunction") then
                    pcall(function()
                        remote:InvokeServer("Strength", gui.Stats.Stats.aSkillPoints.Text:match("%d+"))
                    end)
                end
            end
            if flags.auto_prestige then
                if gui:FindFirstChild("Frame") and gui.Frame.EXPBAR.Status.Level.Value == 100 then
                    if Events:FindFirstChild("Prestige") then
                        pcall(function() Events.Prestige:InvokeServer() end)
                    end
                end
            end
        end
    end
end)

-- Level Farm Loop
task.spawn(function()
    while true do
        task.wait()
        if not flags.level_farm then continue end
        local char = getChar()
        if not char then continue end

        local quest = getLevel()
        if not quest then continue end

        local active = getActiveQuest()
        local questName = quest.InternalName or quest.Giver:gsub(" ", "")

        if not active or active ~= questName then
            local giver = workspace:FindFirstChild(quest.Giver)
            if giver and giver:FindFirstChild("ProximityPrompt") then
                teleport(giver:GetPivot(), char)
                fireproximityprompt(giver.ProximityPrompt)
            end
        else
            local standOut = char:FindFirstChild("Status") and char.Status:FindFirstChild("StandOut") and char.Status.StandOut.Value
            if not standOut then
                local summon = pg:FindFirstChild("CoreGUI") and pg.CoreGUI:FindFirstChild("Events") and pg.CoreGUI.Events:FindFirstChild("SummonStand")
                if summon then pcall(function() summon:InvokeServer() end) end
            else
                local bestEnemy = nil
                local lowestHp = math.huge
                for _, obj in next, workspace:GetChildren() do
                    if obj.Name == quest.Enemy then
                        local h = obj:FindFirstChildWhichIsA("Humanoid")
                        if h and h.Health > 0 and h.Health < lowestHp then
                            lowestHp = h.Health
                            bestEnemy = obj
                        end
                    end
                end
                if bestEnemy then
                    char.Humanoid.PlatformStand = true
                    char:PivotTo(bestEnemy:GetPivot() * CFrame.new(0, 0, 4))
                    if (tick() - lastPunch) > 0.3 then
                        lastPunch = tick()
                        local punch = pg:FindFirstChild("CoreGUI") and pg.CoreGUI:FindFirstChild("StandMoves") and pg.CoreGUI.StandMoves:FindFirstChild("Punch") and pg.CoreGUI.StandMoves.Punch:FindFirstChild("Fire")
                        if punch then pcall(function() punch:InvokeServer() end) end
                    end
                end
            end
        end
    end
end)

Rayfield:Notify({
    Title = "Loaded",
    Content = "Stands Online Hub ready",
    Duration = 3,
})
