local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/Robojini/Tuturial_UI_Library/main/UI_Template_1"))()

local Window = Library.CreateLib("Build a boat", "RJTheme8")

local Main = Window:NewTab("Main")
local Movement = Window:NewTab("Movement")
local Tp = Window:NewTab("Tp")
local Scripts = Window:NewTab("Scripts")
local Gui = Window:NewTab("Gui")
local Creator = Window:NewTab("Creator")

local Main = Main:NewSection("Main")
local Movement = Movement:NewSection("Movement")
local Tp = Tp:NewSection("Tp")
local Scripts = Scripts:NewSection("Scripts")
local Gui = Gui:NewSection("Gui")
local Creator = Creator:NewSection("Creator Bemplia/aleksey312")

Main:NewButton("What?!", "SUS", function()
    game.Players.LocalPlayer:Kick("What is it?!")
end)


Main:NewButton("Rejoin", "Rejoin", function()
game:GetService("TeleportService"):Teleport(game.PlaceId, game:GetService("Players").LocalPlayer)
end)



Main:NewButton("Remove Water", "", function()
    for i,v in pairs(game:GetDescendants()) do
        if v.Name == 'Water' then
            v:Destroy()
        end
    end
end)

Main:NewButton("Remove Trees", "", function()
    for i,v in pairs(game:GetDescendants()) do
        if v.Name == 'Trees' then
            v:Destroy()
        end
    end
end)

Main:NewDropdown("Remove Lock", "Remove", {"White Zone", "Black Zone", "Red Zone", "Green Zone", "Blue Zone", "Yellow Zone", "Purple Zone"}, function(currentOption)
    while currentOption == "White Zone" do
        game:GetService("Workspace").WhiteZone.Lock:Destroy()
        wait(0.2)
    end
    while currentOption == "Black Zone" do
        game:GetService("Workspace").BlackZone.Lock:Destroy()
        wait(0.2)
    end
    while currentOption == "Red Zone" do
        game:GetService("Workspace")["Really redZone"].Lock:Destroy()
        wait(0.2)
    end
    while currentOption == "Green Zone" do
        game:GetService("Workspace").CamoZone.Lock:Destroy()
        wait(0.2)
    end
    while currentOption == "Blue Zone" do
        game:GetService("Workspace")["Really blueZone"].Lock:Destroy()
        wait(0.2)
    end
    while currentOption == "Yellow Zone" do
        game:GetService("Workspace")["New YellerZone"].Lock:Destroy()
        wait(0.2)
    end
    while currentOption == "Purple Zone" do
        game:GetService("Workspace").MagentaZone.Lock:Destroy()
        wait(0.2)
    end
end)

Main:NewButton("Esp", "", function()
	while wait(1) do
	    for i,v in pairs(game.Players:GetChildren()) do
	        if v ~= game.Players.LocalPlayer then
	            if v.Character.Torso:FindFirstChild("BoxHandleAdornment") == nil and v.Character:FindFirstChild("BillboardGui") == nil then 
	                local esp = Instance.new("BoxHandleAdornment", v.Character.Torso)
	                local BillboardGui = Instance.new("BillboardGui", v.Character)
	                local TextLabel = Instance.new("TextLabel", BillboardGui)
	                esp.Adornee = v.Character.Torso
	                esp.ZIndex = 0
	                esp.AlwaysOnTop = true
	                esp.Transparency = 0.7
	                esp.Size = Vector3.new(1.7,4.7,1)
	                BillboardGui.AlwaysOnTop = true
	                BillboardGui.Size = UDim2.new(0, 200, 0, 50)
	                BillboardGui.StudsOffset = Vector3.new(0, 3, 0)
	                TextLabel.BackgroundTransparency = 1
	                TextLabel.Size = UDim2.new(0, 200, 0, 50)
	                TextLabel.Text = v.Name
	                TextLabel.TextStrokeTransparency = 0
	                TextLabel.TextSize = 6
	                esp.Color3 = v.TeamColor.Color
	                TextLabel.TextColor3 = v.TeamColor.Color
	            end
	        end
	    end
	end
end)

Main:NewToggle("AutoFarm Chest", "AFKFarm", function(state)
    if state then
        enable = true
        while enable == true do
	    workspace.ClaimRiverResultsGold:FireServer()
	    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-54.0039444, 84.9583664, 1762.224, -0.999866426, -0.00202333252, 0.0162199121, -9.91661331e-09, 0.992309213, 0.123783745, -0.0163456239, 0.123767212, -0.992176652)
            wait(0.25)
            game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = true
	    if enable == false then
                break
            end
            wait(2.5)
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-54.1079063, 64.3214493, 2502.07568, -0.999743223, 0.00296215084, -0.0224656258, -1.1368023e-08, 0.991419077, 0.130721673, 0.0226600692, 0.130688101, -0.991164565)
            game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false
            wait(0.1)
            game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = true
	    if enable == false then
                break
            end
            wait(2)
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-50.2122116, 66.7413025, 3245.00317, -0.999949038, 0.00155586773, -0.00997654069, -7.08470882e-09, 0.988056719, 0.154090747, 0.010097133, 0.154082894, -0.988006353)
            game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false
            wait(0.1)
            game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = true
	    if enable == false then
                break
            end
            wait(2)
	    game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false
	    wait(0.2)
	    -- Touching the chest
	    firetouchinterest(game.Players.LocalPlayer.Character.UpperTorso, game.Workspace.BoatStages.NormalStages.TheEnd.GoldenChest.Trigger, 0)
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-44.0629883, 58.9831238, 4030.01929, -0.999466598, -0.00545828696, 0.0321981087, 3.74487286e-09, 0.985933602, 0.167137519, -0.0326574817, 0.16704838, -0.98540771)
            wait(0.1)
            game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = true
	    if enable == false then
                break
            end
            wait(2)
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-56.8305092, 55.0657997, 4760.271, -0.999936342, -0.00129597797, 0.0112095848, -7.5520239e-09, 0.99338311, 0.114847697, -0.0112842526, 0.114840388, -0.993319869)
            game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false
            wait(0.1)
            game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = true
	    if enable == false then
                break
            end
            wait(2)
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-55.5864677, 44.2472954, 5584.37354, -0.999971807, -0.00156129419, 0.00734687224, -6.9717947e-09, 0.978156745, 0.207868531, -0.00751093682, 0.207862675, -0.978129208)
            game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false
            wait(0.1)
            game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = true
	    if enable == false then
                break
            end
            wait(2)
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-53.1503983, 58.9461632, 6374.46289, -0.999992728, 0.000802412455, -0.00372232939, 6.4981549e-09, 0.977545381, 0.210725069, 0.00380783435, 0.210723534, -0.977538288)
            game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false
            wait(0.1)
            game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = true
	    if enable == false then
                break
            end
            wait(2)
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-59.6752052, 57.7362709, 7198.58545, -0.999920428, 0.00258698268, -0.0123456102, 9.69319291e-09, 0.978742778, 0.205091611, 0.0126137454, 0.205075294, -0.978664935)
            game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false
            wait(0.1)
            game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = true
	    if enable == false then
                break
            end
            wait(2)
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-52.720974, 54.7904854, 7912.30859, -0.99999696, -0.000487447542, 0.00242911559, 1.03510036e-08, 0.980453551, 0.196750626, -0.00247754063, 0.19675003, -0.980450571)
            game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false
            wait(0.1)
	    game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = true
	    wait(5)
	    if enable == false then
                break
            end
	end
    else
        enable = false
        game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false
    end
end)

Main:NewToggle("AutoFarm", "AFKFarm", function(state)
    if state then
        enable1 = true
        while enable1 == true do
	    workspace.ClaimRiverResultsGold:FireServer()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-54.0039444, 84.9583664, 1762.224, -0.999866426, -0.00202333252, 0.0162199121, -9.91661331e-09, 0.992309213, 0.123783745, -0.0163456239, 0.123767212, -0.992176652)
            wait(0.25)
            game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = true
            if enable1 == false then
                break
            end
            wait(2.5)
            if enable1 == false then
                break
            end
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-54.1079063, 64.3214493, 2502.07568, -0.999743223, 0.00296215084, -0.0224656258, -1.1368023e-08, 0.991419077, 0.130721673, 0.0226600692, 0.130688101, -0.991164565)
            game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false
            wait(0.1)
            game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = true
            wait(2)
            if enable1 == false then
                break
            end
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-50.2122116, 66.7413025, 3245.00317, -0.999949038, 0.00155586773, -0.00997654069, -7.08470882e-09, 0.988056719, 0.154090747, 0.010097133, 0.154082894, -0.988006353)
            game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false
            wait(0.1)
            game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = true
            wait(2)
            if enable1 == false then
                break
            end
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-44.0629883, 58.9831238, 4030.01929, -0.999466598, -0.00545828696, 0.0321981087, 3.74487286e-09, 0.985933602, 0.167137519, -0.0326574817, 0.16704838, -0.98540771)
            game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false
            wait(0.1)
            game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = true
            wait(2)
            if enable1 == false then
                break
            end
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-56.8305092, 55.0657997, 4760.271, -0.999936342, -0.00129597797, 0.0112095848, -7.5520239e-09, 0.99338311, 0.114847697, -0.0112842526, 0.114840388, -0.993319869)
            game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false
            wait(0.1)
            game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = true
            wait(2)
            if enable1 == false then
                break
            end
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-55.5864677, 44.2472954, 5584.37354, -0.999971807, -0.00156129419, 0.00734687224, -6.9717947e-09, 0.978156745, 0.207868531, -0.00751093682, 0.207862675, -0.978129208)
            game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false
            wait(0.1)
            game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = true
            wait(2)
            if enable1 == false then
                break
            end
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-53.1503983, 58.9461632, 6374.46289, -0.999992728, 0.000802412455, -0.00372232939, 6.4981549e-09, 0.977545381, 0.210725069, 0.00380783435, 0.210723534, -0.977538288)
            game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false
            wait(0.1)
            game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = true
            wait(2)
            if enable1 == false then
                break
            end
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-59.6752052, 57.7362709, 7198.58545, -0.999920428, 0.00258698268, -0.0123456102, 9.69319291e-09, 0.978742778, 0.205091611, 0.0126137454, 0.205075294, -0.978664935)
            game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false
            wait(0.1)
            game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = true
            wait(2)
            if enable1 == false then
                break
            end
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-52.720974, 54.7904854, 7912.30859, -0.99999696, -0.000487447542, 0.00242911559, 1.03510036e-08, 0.980453551, 0.196750626, -0.00247754063, 0.19675003, -0.980450571)
            game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false
            wait(0.1)
            game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = true
            wait(2)
            if enable1 == false then
                break
            end
            game.Players.LocalPlayer.Character.Humanoid.Health = 0
            wait(10)
        end
    else
        enable1 = false
        game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false
    end
end)

Movement:NewSlider("WalkSpeed", "WalkSpeed", 500, 16, function(WalkSpeed)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = WalkSpeed
end)

Movement:NewSlider("JumpPower", "JumpPower", 1000, 50, function(JumpPower)
    game.Players.LocalPlayer.Character.Humanoid.JumpPower = JumpPower
end)

Movement:NewTextBox("WalkSpeed", "WalkSpeed", function(WalkSpeed)
	game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = WalkSpeed
end)

Movement:NewTextBox("JumpPower", "JumpPower", function(JumpPower)
	game.Players.LocalPlayer.Character.Humanoid.JumpPower = JumpPower
end)

Movement:NewToggle("Noclip", "Noclip", function(state)
    if state then
        enable2 = true
        while enable2 == true do
            game.Players.LocalPlayer.Character.HumanoidRootPart.CanCollide = false
            game.Players.LocalPlayer.Character.LowerTorso.CanCollide = false
            game.Players.LocalPlayer.Character.UpperTorso.CanCollide = false
            if enable2 == false then
                break
            end
            wait(0.5)
        end
    else
        enable2 = false
        game.Players.LocalPlayer.Character.HumanoidRootPart.CanCollide = true
        game.Players.LocalPlayer.Character.LowerTorso.CanCollide = true
        game.Players.LocalPlayer.Character.UpperTorso.CanCollide = true
    end
end)

Movement:NewButton("Infinity Jump", "Infinity Jump", function()
local Player = game:GetService'Players'.LocalPlayer;
local UIS = game:GetService'UserInputService';
 
_G.JumpHeight = 50;
 
function Action(Object, Function) if Object ~= nil then Function(Object); end end
 
UIS.InputBegan:connect(function(UserInput)
if UserInput.UserInputType == Enum.UserInputType.Keyboard and UserInput.KeyCode == Enum.KeyCode.Space then
Action(Player.Character.Humanoid, function(self)
if self:GetState() == Enum.HumanoidStateType.Jumping or self:GetState() == Enum.HumanoidStateType.Freefall then
Action(self.Parent.HumanoidRootPart, function(self)
self.Velocity = Vector3.new(0, _G.JumpHeight, 0);
end)
end
end)
end
end)
end)

Tp:NewButton("White base", "", function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-50.5487709, -9.90196991, -428.394806, -0.999992788, -9.08811959e-09, -0.00380017539, -9.01508734e-09, 1, -1.92352854e-08, 0.00380017539, -1.9200888e-08, -0.999992788)
end)

Tp:NewButton("Red base", "", function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(269.721069, -9.90196705, -66.3057938, -0.0200710837, 4.32859704e-09, -0.999798536, -8.57450833e-10, 1, 4.34668301e-09, 0.999798536, 9.44520684e-10, -0.0200710837)
end)

Tp:NewButton("Black base", "", function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-360.461426, -9.90197086, -68.8116837, 0.00621029641, 5.62691085e-08, 0.999980688, -3.1851064e-09, 1, -5.62504106e-08, -0.999980688, -2.83571322e-09, 0.00621029641)
end)

Tp:NewButton("Blue base", "", function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(283.252136, -9.90197086, 299.619751, -0.00732403807, 3.29165744e-08, -0.999973178, -4.33406289e-09, 1, 3.29492025e-08, 0.999973178, 4.57526772e-09, -0.00732403807)
end)

Tp:NewButton("Green base", "", function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-352.968323, -9.90216541, 293.915039, -0.00943441689, -6.72125751e-08, 0.999955475, -2.13247584e-12, 1, 6.72155451e-08, -0.999955475, 6.32007113e-10, -0.00943441689)
end)

Tp:NewButton("Purple base", "", function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(240.702545, -9.90197086, 647.768188, 0.00158703234, -7.11159061e-08, -0.999998748, 1.93105887e-08, 1, -7.10853456e-08, 0.999998748, -1.91977509e-08, 0.00158703234)
end)

Tp:NewButton("Yellow base", "", function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-355.501984, -9.90197086, 640.820007, -0.00390731497, 7.1370799e-08, 0.999992371, 3.18777604e-09, 1, -7.13588904e-08, -0.999992371, 2.90892999e-09, -0.00390731497)
end)

Tp:NewButton("Location 1", "", function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-48.8108292, 40.604248, 1098.08948, -0.999971509, -0.000657677534, 0.00752008427, 9.79499415e-09, 0.996197402, 0.0871248767, -0.00754878856, 0.0871223956, -0.996169031)
end)

Tp:NewButton("Location 2", "", function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-54.0039444, 84.9583664, 1762.224, -0.999866426, -0.00202333252, 0.0162199121, -9.91661331e-09, 0.992309213, 0.123783745, -0.0163456239, 0.123767212, -0.992176652)
end)

Tp:NewButton("Location 3", "", function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-54.1079063, 64.3214493, 2502.07568, -0.999743223, 0.00296215084, -0.0224656258, -1.1368023e-08, 0.991419077, 0.130721673, 0.0226600692, 0.130688101, -0.991164565)
end)

Tp:NewButton("Location 4", "", function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-50.2122116, 66.7413025, 3245.00317, -0.999949038, 0.00155586773, -0.00997654069, -7.08470882e-09, 0.988056719, 0.154090747, 0.010097133, 0.154082894, -0.988006353)
end)

Tp:NewButton("Location 5", "", function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-44.0629883, 58.9831238, 4030.01929, -0.999466598, -0.00545828696, 0.0321981087, 3.74487286e-09, 0.985933602, 0.167137519, -0.0326574817, 0.16704838, -0.98540771)
end)

Tp:NewButton("Location 6", "", function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-56.8305092, 55.0657997, 4760.271, -0.999936342, -0.00129597797, 0.0112095848, -7.5520239e-09, 0.99338311, 0.114847697, -0.0112842526, 0.114840388, -0.993319869)
end)

Tp:NewButton("Location 7", "", function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-55.5864677, 44.2472954, 5584.37354, -0.999971807, -0.00156129419, 0.00734687224, -6.9717947e-09, 0.978156745, 0.207868531, -0.00751093682, 0.207862675, -0.978129208)
end)

Tp:NewButton("Location 8", "", function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-53.1503983, 58.9461632, 6374.46289, -0.999992728, 0.000802412455, -0.00372232939, 6.4981549e-09, 0.977545381, 0.210725069, 0.00380783435, 0.210723534, -0.977538288)
end)

Tp:NewButton("Location 9", "", function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-59.6752052, 57.7362709, 7198.58545, -0.999920428, 0.00258698268, -0.0123456102, 9.69319291e-09, 0.978742778, 0.205091611, 0.0126137454, 0.205075294, -0.978664935)
end)

Tp:NewButton("Location 10", "", function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-52.720974, 54.7904854, 7912.30859, -0.99999696, -0.000487447542, 0.00242911559, 1.03510036e-08, 0.980453551, 0.196750626, -0.00247754063, 0.19675003, -0.980450571)
end)

Tp:NewButton("End", "", function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-55.3730049, -360.406219, 9480.23242, -0.998420238, -1.84205562e-09, 0.0561876483, -2.45739123e-10, 1, 2.84173609e-08, -0.0561876483, 2.83586612e-08, -0.998420238)
end)

Scripts:NewButton("Dark Dex", "Dark Dex", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Babyhamsta/RBLX_Scripts/main/Universal/BypassedDarkDexV3.lua", true))()
end)

Scripts:NewButton("Infinite Yield", "Infinite Yield", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source", true))()
end)

Scripts:NewButton("Remote Spy", "Remote Spy", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/bCghX33W", true))()
end)

Gui:NewKeybind("Toggle GUI", "", Enum.KeyCode.L, function()
	Library:ToggleUI()
end)
