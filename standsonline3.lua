local Rayfield = loadstring(game:HttpGet("https://sirius.menu/rayfield"))()

local RS = game:GetService("ReplicatedStorage")
local Players = game:GetService("Players")
local lp = Players.LocalPlayer
local pg = lp:WaitForChild("PlayerGui")
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
local lastPunch = 0

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
    if c and c:FindFirstChild("HumanoidRootPart") then
        local h = c:FindFirstChildWhichIsA("Humanoid")
        return h and h.Health > 0 and c
    end
end

local function getLevel()
    local gui = pg:FindFirstChild("CoreGUI")
    if not gui or not gui:FindFirstChild("Frame") then return end
    local lvl = gui.Frame.EXPBAR.Status.Level.Value
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
        c.PrimaryPart.AssemblyAngularVelocity = Vector3.new(0,0,0)
        c.PrimaryPart.AssemblyLinearVelocity = Vector3.new(0,0,0)
        c:PivotTo(cf)
    end
end

-- UI Setup
local Window = Rayfield:CreateWindow({
    Name = "Stands Online Hub | Fixed",
    LoadingTitle = "Stands Online",
    LoadingSubtitle = "By Gemini",
    ConfigurationSaving = { Enabled = false },
    KeySystem = false,
})

local FarmTab = Window:CreateTab("Farm", 4483362458)
local DailyTab = Window:CreateTab("Daily Quests", 4483362458)
local RemoteTab = Window:CreateTab("Buy Items", 4483362458)

FarmTab:CreateToggle({Name = "Level Farm", CurrentValue = false, Flag = "level_farm", Callback = function(v) flags.level_farm = v end})
FarmTab:CreateToggle({Name = "Auto Strength", CurrentValue = false, Flag = "auto_strength", Callback = function(v) flags.auto_strength = v end})
FarmTab:CreateToggle({Name = "Auto Prestige", CurrentValue = false, Flag = "auto_prestige", Callback = function(v) flags.auto_prestige = v end})
FarmTab:CreateToggle({Name = "Item Farm", CurrentValue = false, Flag = "item_farm", Callback = function(v) flags.item_farm = v end})

-- Auto Stats Loop (The Fix for the "Nil" error)
task.spawn(function()
    while true do
        task.wait(1)
        if flags.auto_strength then
            local gui = pg:FindFirstChild("CoreGUI")
            if gui and gui:FindFirstChild("Stats") then
                local statRemote = gui.Stats.Stats:FindFirstChild("Stats")
                local points = gui.Stats.Stats.aSkillPoints.Text:match("%d+")
                
                if statRemote and points then
                    -- pcall prevents the "attempt to call nil" from crashing the script
                    pcall(function()
                        statRemote:InvokeServer("Strength", points)
                    end)
                end
            end
        end
    end
end)

-- Main Farm Loop
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
            -- Ensure "Stand" check doesn't error
            local status = char:FindFirstChild("Status")
            local standOut = status and status:FindFirstChild("StandOut") and status.StandOut.Value
            
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
                    teleport(bestEnemy:GetPivot() * CFrame.new(0, 0, 5), char)
                    
                    if (tick() - lastPunch) > 0.4 then
                        lastPunch = tick()
                        local punch = pg:FindFirstChild("CoreGUI") and pg.CoreGUI:FindFirstChild("StandMoves") and pg.CoreGUI.StandMoves:FindFirstChild("Punch") and pg.CoreGUI.StandMoves.Punch:FindFirstChild("Fire")
                        if punch then 
                            pcall(function() punch:InvokeServer() end) 
                        end
                    end
                end
            end
        end
    end
end)

Rayfield:Notify({Title = "Script Loaded", Content = "Errors Handled", Duration = 3})
