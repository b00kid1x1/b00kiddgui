-- Gui to Lua
-- Version: 3.2

-- Instances:

local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local b00kiddgui = Instance.new("TextLabel")
local ImageLabel = Instance.new("ImageLabel")
local TextButton = Instance.new("TextButton")
local TextButton_2 = Instance.new("TextButton")
local TextButton_3 = Instance.new("TextButton")
local TextButton_4 = Instance.new("TextButton")
local TextButton_5 = Instance.new("TextButton")
local TextButton_6 = Instance.new("TextButton")

--Properties:

ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.fromRGB(1, 101, 31)
Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame.BorderSizePixel = 0
Frame.Position = UDim2.new(0.623705387, -93, 0.234927237, -22)
Frame.Size = UDim2.new(0, 204, 0, 254)

b00kiddgui.Name = "b00kiddgui"
b00kiddgui.Parent = Frame
b00kiddgui.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
b00kiddgui.BackgroundTransparency = 1.000
b00kiddgui.BorderColor3 = Color3.fromRGB(0, 0, 0)
b00kiddgui.BorderSizePixel = 0
b00kiddgui.Position = UDim2.new(-0.205882356, 0, -0.145669296, 0)
b00kiddgui.Size = UDim2.new(0, 200, 0, 37)
b00kiddgui.Font = Enum.Font.Unknown
b00kiddgui.LineHeight = 0.000
b00kiddgui.Text = "b00kiddgui"
b00kiddgui.TextColor3 = Color3.fromRGB(0, 0, 0)
b00kiddgui.TextScaled = true
b00kiddgui.TextSize = 14.000
b00kiddgui.TextWrapped = true

ImageLabel.Parent = Frame
ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
ImageLabel.BorderSizePixel = 0
ImageLabel.Position = UDim2.new(-0.490196079, 0, 0, 0)
ImageLabel.Size = UDim2.new(0, 100, 0, 254)
ImageLabel.Image = "rbxassetid://109563692063239"

TextButton.Parent = Frame
TextButton.BackgroundColor3 = Color3.fromRGB(1, 101, 31)
TextButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextButton.BorderSizePixel = 0
TextButton.Size = UDim2.new(0, 200, 0, 50)
TextButton.Font = Enum.Font.Unknown
TextButton.Text = "Hint"
TextButton.TextColor3 = Color3.fromRGB(0, 0, 0)
TextButton.TextScaled = true
TextButton.TextSize = 14.000
TextButton.TextWrapped = true

TextButton_2.Parent = Frame
TextButton_2.BackgroundColor3 = Color3.fromRGB(1, 101, 31)
TextButton_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextButton_2.BorderSizePixel = 0
TextButton_2.Position = UDim2.new(0, 0, 0.196850389, 0)
TextButton_2.Size = UDim2.new(0, 200, 0, 50)
TextButton_2.Font = Enum.Font.Unknown
TextButton_2.Text = "Rain Balls"
TextButton_2.TextColor3 = Color3.fromRGB(0, 0, 0)
TextButton_2.TextScaled = true
TextButton_2.TextSize = 14.000
TextButton_2.TextWrapped = true

TextButton_3.Parent = Frame
TextButton_3.BackgroundColor3 = Color3.fromRGB(1, 101, 31)
TextButton_3.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextButton_3.BorderSizePixel = 0
TextButton_3.Position = UDim2.new(0, 0, 0.40157479, 0)
TextButton_3.Size = UDim2.new(0, 200, 0, 50)
TextButton_3.Font = Enum.Font.Unknown
TextButton_3.Text = "PlaceHolder"
TextButton_3.TextColor3 = Color3.fromRGB(0, 0, 0)
TextButton_3.TextScaled = true
TextButton_3.TextSize = 14.000
TextButton_3.TextWrapped = true

TextButton_4.Parent = Frame
TextButton_4.BackgroundColor3 = Color3.fromRGB(1, 101, 31)
TextButton_4.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextButton_4.BorderSizePixel = 0
TextButton_4.Position = UDim2.new(0.0196078438, 0, 0.59842521, 0)
TextButton_4.Size = UDim2.new(0, 200, 0, 50)
TextButton_4.Font = Enum.Font.Unknown
TextButton_4.Text = "PlaceHolder"
TextButton_4.TextColor3 = Color3.fromRGB(0, 0, 0)
TextButton_4.TextScaled = true
TextButton_4.TextSize = 14.000
TextButton_4.TextWrapped = true

TextButton_5.Parent = Frame
TextButton_5.BackgroundColor3 = Color3.fromRGB(1, 101, 31)
TextButton_5.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextButton_5.BorderSizePixel = 0
TextButton_5.Position = UDim2.new(0.0196078438, 0, 0.795275569, 0)
TextButton_5.Size = UDim2.new(0, 200, 0, 50)
TextButton_5.Font = Enum.Font.Unknown
TextButton_5.Text = "PlaceHolder"
TextButton_5.TextColor3 = Color3.fromRGB(0, 0, 0)
TextButton_5.TextScaled = true
TextButton_5.TextSize = 14.000
TextButton_5.TextWrapped = true

TextButton_6.Parent = Frame
TextButton_6.BackgroundColor3 = Color3.fromRGB(1, 101, 31)
TextButton_6.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextButton_6.BorderSizePixel = 0
TextButton_6.Position = UDim2.new(1.05882359, 0, 0.196850389, 0)
TextButton_6.Size = UDim2.new(0, 67, 0, 121)
TextButton_6.Font = Enum.Font.Unknown
TextButton_6.Text = ">"
TextButton_6.TextColor3 = Color3.fromRGB(0, 0, 0)
TextButton_6.TextScaled = true
TextButton_6.TextSize = 14.000
TextButton_6.TextWrapped = true
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local showHint = ReplicatedStorage:WaitForChild("HintEvent")

showHint.OnServerEvent:Connect(function(player)
	local hint = Instance.new("Hint")
	hint.Parent = game.Workspace
	hint.Text = "Join team b00kidd today!"

	wait(5)
	hint:Destroy()
end)
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local button = script.Parent
local showHint = ReplicatedStorage:WaitForChild("HintEvent")

button.MouseButton1Click:Connect(function()
	showHint:FireServer()
end)
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Workspace = game:GetService("Workspace")
local Lighting = game:GetService("Lighting")
local Debris = game:GetService("Debris")

local startEvent = ReplicatedStorage:WaitForChild("StartRainingBalls")

local raining = false
local spawnedBalls = {}
local floor = Workspace:FindFirstChild("Baseplate")
local skyPart

-- Store original lighting/floor/sky
local originalLighting = {
	TimeOfDay = Lighting.TimeOfDay,
	Ambient = Lighting.Ambient,
	OutdoorAmbient = Lighting.OutdoorAmbient,
	FogColor = Lighting.FogColor,
	FogEnd = Lighting.FogEnd,
	Brightness = Lighting.Brightness,
}
local originalFloorColor = floor and floor.Color
local originalFloorMaterial = floor and floor.Material
local originalSky = Lighting:FindFirstChildOfClass("Sky")

-- Random royal green tinted color
local function randomRoyalTint()
	local baseColor = Color3.fromHSV(math.random(),1,1)
	local royalGreen = Color3.fromRGB(65,105,225)
	return Color3.new(
		(baseColor.R + royalGreen.R)/2,
		(baseColor.G + royalGreen.G)/2,
		(baseColor.B + royalGreen.B)/2
	)
end

-- Spawn one falling ball (on fire)
local function spawnBall()
	local ball = Instance.new("Part")
	ball.Shape = Enum.PartType.Ball
	local sizeValue = math.random(100,300)
	ball.Size = Vector3.new(sizeValue,sizeValue,sizeValue)
	ball.Position = Vector3.new(math.random(-500,500),500,math.random(-500,500))
	ball.Anchored = false
	ball.CanCollide = true
	ball.Material = Enum.Material.Neon
	ball.Color = randomRoyalTint()

	local fire = Instance.new("Fire")
	fire.Parent = ball
	fire.Heat = 20
	fire.Size = sizeValue/1.5
	fire.Color = Color3.fromRGB(65,105,225)
	fire.SecondaryColor = Color3.fromRGB(255,255,255)

	ball.Parent = Workspace
	table.insert(spawnedBalls, ball)

	-- Auto cleanup
	Debris:AddItem(ball,5)
end

-- Random explosions
local function spawnExplosion()
	local part = Instance.new("Part")
	part.Size = Vector3.new(2,2,2)
	part.Anchored = true
	part.CanCollide = false
	part.Transparency = 1
	part.Position = Vector3.new(math.random(-500,500),math.random(50,300),math.random(-500,500))
	part.Parent = Workspace

	local explosion = Instance.new("Explosion")
	explosion.Position = part.Position
	explosion.BlastRadius = 30
	explosion.BlastPressure = 0
	explosion.ExplosionType = Enum.ExplosionType.NoCraters
	explosion.Parent = Workspace

	Debris:AddItem(part,2)
end

-- Firework text “b00kidd1x1”
local function spawnFireworkText()
	local textPart = Instance.new("Part")
	textPart.Size = Vector3.new(2,2,2)
	textPart.Anchored = true
	textPart.CanCollide = false
	textPart.Transparency = 1
	textPart.Position = Vector3.new(math.random(-500,500),math.random(100,500),math.random(-500,500))
	textPart.Parent = Workspace

	local billboard = Instance.new("BillboardGui")
	billboard.Adornee = textPart
	billboard.Size = UDim2.new(0,400,0,100)
	billboard.AlwaysOnTop = true
	billboard.Parent = textPart

	local label = Instance.new("TextLabel")
	label.Text = "b00kidd1x1"
	label.BackgroundTransparency = 1
	label.TextColor3 = Color3.fromRGB(255,255,255)
	label.TextScaled = true
	label.Font = Enum.Font.Bangers
	label.Parent = billboard

	Debris:AddItem(textPart,3)
end

-- Spawn giant BOO! in sky
local function spawnBooSky()
	skyPart = Instance.new("Part")
	skyPart.Size = Vector3.new(20,1,20)
	skyPart.Anchored = true
	skyPart.CanCollide = false
	skyPart.Position = Vector3.new(0,500,0)
	skyPart.Transparency = 1
	skyPart.Parent = Workspace

	local billboard = Instance.new("BillboardGui")
	billboard.Adornee = skyPart
	billboard.Size = UDim2.new(0,1500,0,800)
	billboard.AlwaysOnTop = true
	billboard.Parent = skyPart

	local label = Instance.new("TextLabel")
	label.Text = "BOO!"
	label.BackgroundTransparency = 1
	label.TextColor3 = Color3.fromRGB(255,255,255)
	label.TextScaled = true
	label.Font = Enum.Font.Bangers
	label.Parent = billboard
end

-- Start chaotic raining + sky
local function startRaining()
	if raining then return end
	raining = true

	-- Royal green lighting
	Lighting.TimeOfDay = "00:00:00"
	Lighting.Ambient = Color3.fromRGB(65,105,225)
	Lighting.OutdoorAmbient = Color3.fromRGB(65,105,225)
	Lighting.FogColor = Color3.fromRGB(65,105,225)
	Lighting.FogEnd = 1000
	Lighting.Brightness = 5

	-- Floor royal green
	if floor then
		floor.Color = Color3.fromRGB(65,105,225)
		floor.Material = Enum.Material.Neon
	end

	-- Giant BOO! in sky
	spawnBooSky()

	-- Spawn loop
	coroutine.wrap(function()
		while raining do
			for i=1,5 do spawnBall() end
			for i=1,3 do spawnExplosion() end
			if math.random() < 0.1 then spawnFireworkText() end
			wait(0.05)
		end
	end)()
end

-- Stop raining and restore world
local function stopRaining()
	raining = false

	-- Destroy all balls
	for _,ball in pairs(spawnedBalls) do
		if ball and ball.Parent then ball:Destroy() end
	end
	spawnedBalls = {}

	-- Destroy BOO! sky
	if skyPart and skyPart.Parent then skyPart:Destroy() end

	-- Restore lighting
	Lighting.TimeOfDay = originalLighting.TimeOfDay
	Lighting.Ambient = originalLighting.Ambient
	Lighting.OutdoorAmbient = originalLighting.OutdoorAmbient
	Lighting.FogColor = originalLighting.FogColor
	Lighting.FogEnd = originalLighting.FogEnd
	Lighting.Brightness = originalLighting.Brightness

	-- Restore floor
	if floor then
		floor.Color = originalFloorColor
		floor.Material = originalFloorMaterial
	end
end

-- Toggle
startEvent.OnServerEvent:Connect(function(player)
	if raining then stopRaining() else startRaining() end
end)
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local button = script.Parent
local startEvent = ReplicatedStorage:WaitForChild("StartRainingBalls")

button.MouseButton1Click:Connect(function()
	startEvent:FireServer()
end)
