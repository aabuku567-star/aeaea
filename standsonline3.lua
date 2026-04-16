local Rayfield = loadstring(game:HttpGet("https://sirius.menu/rayfield"))()

local RS = game:GetService("ReplicatedStorage")
local Players = game:GetService("Players")
local lp = Players.LocalPlayer
local pg = lp.PlayerGui
local Events = RS.Events
local Items = workspace.Items
local Inventory = lp.Inventory

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
    if not gui then return end
    local lvl = gui.Frame.EXPBAR.Status.Level.Value
    local result = nil
    for _, q in ipairs(quests) do
        if q.Level <= lvl then result = q else break end
    end
    return result
end

local function getActiveQuest()
    for _, v in next, pg:GetChildren() do
        if v.Name == "Quest" then
            local c = v.Quest:FindFirstChild("Client", true)
            if c then
                return c.Parent and c.Parent.Name ~= "RepeatQuest" and c.Parent.Name
            end
        end
    end
end

local function teleport(cf, char)
    local c = char or getChar()
    if c then
        c.PrimaryPart.AssemblyAngularVelocity = Vector3.zero
        c.PrimaryPart.AssemblyLinearVelocity = Vector3.zero
        c:PivotTo(cf)
    end
end

task.spawn(function()
    while true do
        task.wait(900)
        local v = lp.Character
        if v then
            local h = v:FindFirstChildWhichIsA("Humanoid")
            if h then
                h.Jump = true
            end
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

FarmTab:CreateToggle({
    Name = "Level Farm",
    CurrentValue = false,
    Flag = "level_farm",
    Callback = function(v) flags.level_farm = v end,
})

FarmTab:CreateToggle({
    Name = "Auto Strength",
    CurrentValue = false,
    Flag = "auto_strength",
    Callback = function(v) flags.auto_strength = v end,
})

FarmTab:CreateToggle({
    Name = "Auto Prestige",
    CurrentValue = false,
    Flag = "auto_prestige",
    Callback = function(v) flags.auto_prestige = v end,
})

FarmTab:CreateToggle({
    Name = "Item Farm",
    CurrentValue = false,
    Flag = "item_farm",
    Callback = function(v) flags.item_farm = v end,
})

FarmTab:CreateToggle({
    Name = "Include Nodes",
    CurrentValue = false,
    Flag = "node_farm",
    Callback = function(v) flags.node_farm = v end,
})

DailyTab:CreateToggle({
    Name = "Collect Trash (Beach)",
    CurrentValue = false,
    Flag = "daily_trash",
    Callback = function(v) flags.daily_trash = v end,
})

DailyTab:CreateToggle({
    Name = "Find Lost Cats",
    CurrentValue = false,
    Flag = "daily_cats",
    Callback = function(v) flags.daily_cats = v end,
})

for _, item in next, workspace.Purchasable:GetChildren() do
    local label = item.Nametag.NameLabel.Text
    local click = item:FindFirstChild("ClickDetector")
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

task.spawn(function()
    while true do
        task.wait(120)
        table.clear(skipList)
    end
end)

task.spawn(function()
    while true do
        task.wait(2)
        if flags.auto_strength then
            local gui = pg:FindFirstChild("CoreGUI")
            if gui then
                gui.Stats.Stats.Stats:InvokeServer("Strength", gui.Stats.Stats.aSkillPoints.Text:match("%d+"))
            end
        end
        if flags.auto_prestige then
            local gui = pg:FindFirstChild("CoreGUI")
            if gui then
                if gui.Frame.EXPBAR.Status.Level.Value == 100 then
                    Events.Prestige:InvokeServer()
                end
            end
        end
    end
end)

task.spawn(function()
    while true do
        task.wait(0.5)
        if flags.daily_trash then
            local trashFolder = workspace.DailyQuestCollectibles.BeachTrash
            for _, trash in next, trashFolder:GetChildren() do
                if not flags.daily_trash then break end
                local prompt = trash:FindFirstChildWhichIsA("ProximityPrompt", true)
                if prompt then
                    local char = getChar()
                    if char then
                        teleport(trash:GetPivot(), char)
                        fireproximityprompt(prompt)
                        task.wait(0.1)
                    end
                end
            end
        end
        if flags.daily_cats then
            local catFolder = workspace.DailyQuestCollectibles.TreeCat
            for _, cat in next, catFolder:GetChildren() do
                if not flags.daily_cats then break end
                if cat.Name == "Felix" then
                    local prompt = cat:FindFirstChildWhichIsA("ProximityPrompt", true)
                    if prompt then
                        local char = getChar()
                        if char then
                            teleport(cat:GetPivot(), char)
                            fireproximityprompt(prompt)
                            task.wait(0.1)
                        end
                    end
                end
            end
        end
    end
end)

task.spawn(function()
    while true do
        task.wait()
        if not flags.item_farm then continue end
        local char = getChar()
        if not char the
