--// b00kiddGUI - ULTIMATE CHAOS MENU

local Players = game:GetService("Players")
local player = Players.LocalPlayer
local UIS = game:GetService("UserInputService")
local RunService = game:GetService("RunService")

local function getChar()
	return player.Character or player.CharacterAdded:Wait()
end

--// GUI
local gui = Instance.new("ScreenGui")
gui.Name = "b00kiddGUI"
gui.Parent = player:WaitForChild("PlayerGui")

local frame = Instance.new("Frame", gui)
frame.Size = UDim2.new(0, 320, 0, 520)
frame.Position = UDim2.new(0, 100, 0, 100)
frame.BackgroundColor3 = Color3.fromRGB(19, 98, 7)
frame.Active = true
frame.Draggable = true

-- TITLE
local title = Instance.new("TextLabel", frame)
title.Size = UDim2.new(1,0,0,40)
title.Text = "b00kiddGUI"
title.TextColor3 = Color3.new(1,1,1)
title.BackgroundTransparency = 1
title.Font = Enum.Font.GothamBold
title.TextScaled = true

-- SCROLL
local scroll = Instance.new("ScrollingFrame", frame)
scroll.Size = UDim2.new(1,0,1,-40)
scroll.Position = UDim2.new(0,0,0,40)
scroll.CanvasSize = UDim2.new(0,0,0,1800)
scroll.BackgroundTransparency = 1

local layout = Instance.new("UIListLayout", scroll)
layout.Padding = UDim.new(0,5)

local function makeButton(name, callback)
	local btn = Instance.new("TextButton", scroll)
	btn.Size = UDim2.new(1,-10,0,40)
	btn.Text = name
	btn.BackgroundColor3 = Color3.fromRGB(30,130,10)
	btn.TextColor3 = Color3.new(1,1,1)
	btn.Font = Enum.Font.Gotham
	btn.TextScaled = true
	
	btn.MouseButton1Click:Connect(callback)
end

-- STATES
local clickTP = false
local fakeLag = false

-- KEYBIND TO TOGGLE GUI
UIS.InputBegan:Connect(function(input, gpe)
	if gpe then return end
	
	if input.KeyCode == Enum.KeyCode.End or input.KeyCode == Enum.KeyCode.Up then
		frame.Visible = not frame.Visible
	end
end)

-- CLICK TELEPORT
makeButton("Click TP Toggle", function()
	clickTP = not clickTP
end)

player:GetMouse().Button1Down:Connect(function()
	if clickTP then
		local pos = player:GetMouse().Hit.Position
		getChar().HumanoidRootPart.CFrame = CFrame.new(pos + Vector3.new(0,5,0))
	end
end)

-- FAKE LAG
makeButton("Fake Lag Toggle", function()
	fakeLag = not fakeLag
	
	task.spawn(function()
		while fakeLag do
			task.wait(0.2)
			RunService.RenderStepped:Wait()
			task.wait(0.5)
		end
	end)
end)

-- FAKE KICK SCREEN
makeButton("Fake Kick Screen", function()
	local kickGui = Instance.new("ScreenGui", player.PlayerGui)
	
	local label = Instance.new("TextLabel", kickGui)
	label.Size = UDim2.new(1,0,1,0)
	label.BackgroundColor3 = Color3.new(0,0,0)
	label.TextColor3 = Color3.new(1,0,0)
	label.TextScaled = true
	label.Text = "You have been kicked.\n(Error Code: 267)"
end)

-- SCREEN SPAM
makeButton("Screen Spam", function()
	for i = 1,50 do
		local txt = Instance.new("TextLabel", gui)
		txt.Size = UDim2.new(0,200,0,50)
		txt.Position = UDim2.new(math.random(),0,math.random(),0)
		txt.Text = "b00kidd OWNS YOU"
		txt.BackgroundTransparency = 1
		txt.TextColor3 = Color3.fromRGB(0,255,0)
		txt.TextScaled = true
	end
end)

-- KEEP YOUR OTHER MODS BELOW (you can paste your previous script mods here if needed)
