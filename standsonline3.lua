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

for _, v in next, getconnections(lp.Idled) do
    v:Disable()
end

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
        local c = lp.Character
        if c then
            local h = c:FindFirstChildWhichIsA("Humanoid")
            if h then
                h.Jump = true
            end
        end
    end
end)

task.spawn(function()
    while true do
        task.wait(0.1)
        if getgenv().InfHamon then
            pcall(function()
                local hb = pg.CoreGUI.StandMoves:FindFirstChild("HamonBreathing")
                if hb and hb:FindFirstChild("Fire") then
                    hb.Fire:InvokeServer()
                end
            end)
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

FarmTab:CreateToggle({
    Name = "Infinite Hamon",
    CurrentValue = false,
    Flag = "inf_hamon",
    Callback = function(v)
        getgenv().InfHamon = v
    end,
})

local itemList = {}
local itemNames = {}
for _, item in next, workspace.Purchasable:GetChildren() do
    local label = item.Nametag.NameLabel.Text
    if not table.find(itemNames, item.Name) then
        table.insert(itemNames, item.Name)
        local click = item:FindFirstChild("ClickDetector")
        table.insert(itemList, {
            Price = tonumber(label:split(">")[2]:gsub(",",""):match("%d+")),
            Text = label,
            ClickDetector = click,
            Model = item,
        })
    end
end
table.sort(itemList, function(a, b) return a.Price < b.Price end)
for _, v in ipairs(itemList) do
    RemoteTab:CreateButton({
        Name = v.Text,
        Callback = function()
            if v.ClickDetector then
                local char = getChar()
                if char then
                    v.ClickDetector.MaxActivationDistance = 50
                    teleport(v.Model:GetPivot(), char)
                    task.wait(0.1)
                    fireclickdetector(v.ClickDetector)
                end
            end
        end,
    })
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
        task.wait()
        if not flags.item_farm then continue end
        local char = getChar()
        if not char then continue end

        local normal = {}
        local nodes = {}

        for _, obj in next, Items:GetChildren() do
            local item = obj:FindFirstChildWhichIsA("Model") or (not obj.Name:match("%d") and obj)
            if not item then continue end
            if table.find(blacklist, item.Name) then continue end
            if table.find(skipList, item) then continue end

            local name = item.Name
            local itemCap = cap
            local special = nil

            for k, v in next, specialItems do
                if k == name or v.Name == name then special = v break end
            end

            if special then name = special.Name or name; itemCap = special.ActualCap end

            local slot = Inventory:FindFirstChild(name)
            if slot and slot.Value >= itemCap then continue end

            if item.Name == "MiningNode" then
                table.insert(nodes, item)
            else
                table.insert(normal, item)
            end
        end

        if #normal > 0 then
            local target = normal[#normal]
            if target:IsDescendantOf(workspace) then
                local alive = true
                local t = tick()
                while alive and target:IsDescendantOf(workspace) and flags.item_farm do
                    task.wait()
                    alive = (tick() - t) < 3
                    char = getChar()
                    if not char then break end
                    teleport(target:GetPivot(), char)
                    local touch = target:FindFirstChildWhichIsA("TouchTransmitter", true)
                    if touch then
                        firetouchinterest(char.PrimaryPart, touch.Parent, 0)
                        firetouchinterest(char.PrimaryPart, touch.Parent, 1)
                    else
                        local click = target:FindFirstChildWhichIsA("ClickDetector", true)
                        if click then fireclickdetector(click) end
                    end
                end
                if not alive then table.insert(skipList, target) end
            end
        elseif flags.node_farm and #nodes > 0 then
            for _, node in next, nodes do
                if node:FindFirstChild("ItemSpawn") then
                    char = getChar()
                    if char then
                        local pickaxe = lp.Backpack:FindFirstChild("Pickaxe") or char:FindFirstChild("Pickaxe")
                        if pickaxe then
                            local prompt = node:FindFirstChildWhichIsA("ProximityPrompt", true)
                            local alive = true
                            local t = tick()
                            while alive and prompt and prompt.Enabled and flags.item_farm and flags.node_farm do
                                alive = (tick() - t) < 7
                                char = getChar()
                                if not char then break end
                                teleport(node:GetPivot(), char)
                                pickaxe.Parent = char
                                fireproximityprompt(prompt)
                                task.wait()
                            end
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
        if not flags.level_farm then continue end
        local char = getChar()
        if not char then continue end

        local quest = getLevel()
        if not quest then continue end

        local active = getActiveQuest()
        local questName = quest.InternalName or quest.Giver:gsub(" ", "")

        if not active or active ~= questName then
            local giver = workspace[quest.Giver]
            char:PivotTo(giver:GetPivot())
            fireproximityprompt(giver.ProximityPrompt)
        else
            local standOut = char.Status.StandOut.Value
            if not standOut then
                pg.CoreGUI.Events.SummonStand:InvokeServer()
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
                    char.PrimaryPart.AssemblyLinearVelocity = Vector3.zero
                    char:PivotTo(bestEnemy:GetPivot() * CFrame.new(0, 0, 7) * CFrame.Angles(0, 0, 0))
                    if (tick() - lastPunch) > 0.3 then
                        lastPunch = tick()
                        task.spawn(function()
                            pg.CoreGUI.StandMoves.Punch.Fire:InvokeServer()
                        end)
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
