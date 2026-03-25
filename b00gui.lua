--// FULL ADVANCED GUI WITH MUSIC

local Players = game:GetService("Players")
local Lighting = game:GetService("Lighting")
local TweenService = game:GetService("TweenService")
local SoundService = game:GetService("SoundService")
local UIS = game:GetService("UserInputService")

local player = Players.LocalPlayer
local PlayerGui = player:WaitForChild("PlayerGui")

--// GUI
local ScreenGui = Instance.new("ScreenGui", PlayerGui)
ScreenGui.Name = "b00kidd's GUI"

local Main = Instance.new("Frame", ScreenGui)
Main.Size = UDim2.new(0, 520, 0, 320)
Main.Position = UDim2.new(0.5, -260, 0.5, -160)
Main.BackgroundColor3 = Color3.fromRGB(20,20,20)
Instance.new("UICorner", Main)

--// OPEN ANIMATION
Main.Size = UDim2.new(0,0,0,0)
TweenService:Create(Main, TweenInfo.new(0.5, Enum.EasingStyle.Back), {
	Size = UDim2.new(0,520,0,320)
}):Play()

--// DRAGGING
local dragging = false
local dragStart, startPos

Main.InputBegan:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseButton1 then
		dragging = true
		dragStart = input.Position
		startPos = Main.Position
	end
end)

UIS.InputChanged:Connect(function(input)
	if dragging then
		local delta = input.Position - dragStart
		Main.Position = UDim2.new(
			startPos.X.Scale,
			startPos.X.Offset + delta.X,
			startPos.Y.Scale,
			startPos.Y.Offset + delta.Y
		)
	end
end)

UIS.InputEnded:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseButton1 then
		dragging = false
	end
end)

--// TAB BAR
local TabBar = Instance.new("Frame", Main)
TabBar.Size = UDim2.new(1,0,0,30)
TabBar.BackgroundColor3 = Color3.fromRGB(35,35,35)

local Tabs = {"Home","Player","World","Settings"}
local Frames = {}

for i,name in ipairs(Tabs) do
	local btn = Instance.new("TextButton", TabBar)
	btn.Size = UDim2.new(0,130,1,0)
	btn.Position = UDim2.new(0,(i-1)*130,0,0)
	btn.Text = name
	btn.BackgroundColor3 = Color3.fromRGB(50,50,50)
	btn.TextColor3 = Color3.new(1,1,1)

	local frame = Instance.new("Frame", Main)
	frame.Size = UDim2.new(1,0,1,-30)
	frame.Position = UDim2.new(0,0,0,30)
	frame.BackgroundTransparency = 1
	frame.Visible = false
	Frames[name] = frame

	btn.MouseButton1Click:Connect(function()
		for _,f in pairs(Frames) do f.Visible = false end
		frame.Visible = true
	end)
end

Frames["Home"].Visible = true

--// HOME
local title = Instance.new("TextLabel", Frames["Home"])
title.Size = UDim2.new(1,0,0,50)
title.Text = "Advanced GUI Loaded"
title.TextColor3 = Color3.new(1,1,1)
title.BackgroundTransparency = 1

--// PLAYER TAB
local function getHumanoid()
	if player.Character then
		return player.Character:FindFirstChildOfClass("Humanoid")
	end
end

local speedBox = Instance.new("TextBox", Frames["Player"])
speedBox.PlaceholderText = "WalkSpeed"
speedBox.Size = UDim2.new(0,150,0,30)
speedBox.Position = UDim2.new(0,20,0,20)

local speedBtn = Instance.new("TextButton", Frames["Player"])
speedBtn.Text = "Set Speed"
speedBtn.Size = UDim2.new(0,150,0,30)
speedBtn.Position = UDim2.new(0,20,0,60)

speedBtn.MouseButton1Click:Connect(function()
	local hum = getHumanoid()
	if hum then
		local v = tonumber(speedBox.Text)
		if v then hum.WalkSpeed = v end
	end
end)

local jumpBox = Instance.new("TextBox", Frames["Player"])
jumpBox.PlaceholderText = "JumpPower"
jumpBox.Size = UDim2.new(0,150,0,30)
jumpBox.Position = UDim2.new(0,200,0,20)

local jumpBtn = Instance.new("TextButton", Frames["Player"])
jumpBtn.Text = "Set Jump"
jumpBtn.Size = UDim2.new(0,150,0,30)
jumpBtn.Position = UDim2.new(0,200,0,60)

jumpBtn.MouseButton1Click:Connect(function()
	local hum = getHumanoid()
	if hum then
		local v = tonumber(jumpBox.Text)
		if v then hum.JumpPower = v end
	end
end)

--// WORLD TAB (SKYBOX)
local skyBtn = Instance.new("TextButton", Frames["World"])
skyBtn.Text = "Change Sky"
skyBtn.Size = UDim2.new(0,200,0,40)
skyBtn.Position = UDim2.new(0,20,0,20)

skyBtn.MouseButton1Click:Connect(function()
	local sky = Instance.new("Sky")
	sky.SkyboxBk = "rbxassetid://159454299"
	sky.SkyboxDn = "rbxassetid://159454296"
	sky.SkyboxFt = "rbxassetid://159454293"
	sky.SkyboxLf = "rbxassetid://159454286"
	sky.SkyboxRt = "rbxassetid://159454300"
	sky.SkyboxUp = "rbxassetid://159454288"
	sky.Parent = Lighting
end)

--// SETTINGS TAB (EFFECTS + MUSIC)

-- Bloom
local bloomBtn = Instance.new("TextButton", Frames["Settings"])
bloomBtn.Text = "Toggle Bloom"
bloomBtn.Size = UDim2.new(0,200,0,40)
bloomBtn.Position = UDim2.new(0,20,0,20)

local bloom

bloomBtn.MouseButton1Click:Connect(function()
	if bloom then
		bloom:Destroy()
		bloom = nil
	else
		bloom = Instance.new("BloomEffect", Lighting)
		bloom.Intensity = 2
	end
end)

-- Color
local colorBtn = Instance.new("TextButton", Frames["Settings"])
colorBtn.Text = "Toggle Color"
colorBtn.Size = UDim2.new(0,200,0,40)
colorBtn.Position = UDim2.new(0,20,0,80)

local color

colorBtn.MouseButton1Click:Connect(function()
	if color then
		color:Destroy()
		color = nil
	else
		color = Instance.new("ColorCorrectionEffect", Lighting)
		color.Saturation = 0.5
	end
end)

--// MUSIC SYSTEM
local music = Instance.new("Sound", SoundService)
music.SoundId = "rbxassetid://1839247124"
music.Volume = 0.5
music.Looped = true
music:Play()

local musicBtn = Instance.new("TextButton", Frames["Settings"])
musicBtn.Text = "Pause Music"
musicBtn.Size = UDim2.new(0,200,0,40)
musicBtn.Position = UDim2.new(0,20,0,140)

local playing = true

musicBtn.MouseButton1Click:Connect(function()
	if playing then
		music:Pause()
		musicBtn.Text = "Play Music"
	else
		music:Play()
		musicBtn.Text = "Pause Music"
	end
	playing = not playing
end)

--// KEYBIND (RightShift to toggle GUI)
UIS.InputBegan:Connect(function(input)
	if input.KeyCode == Enum.KeyCode.RightShift then
		Main.Visible = not Main.Visible
	end
end)

print("FULL GUI LOADED")
