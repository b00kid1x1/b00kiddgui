-- b00kiddGUI FIXED

local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local Workspace = game:GetService("Workspace")

local player = Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()

-- wait for root part safely
local function getRoot(char)
	return char:WaitForChild("HumanoidRootPart")
end

-- GUI (use CoreGui so it doesn't disappear)
local gui = Instance.new("ScreenGui")
gui.Name = "b00kiddGUI"
gui.Parent = game:GetService("CoreGui")

local frame = Instance.new("Frame", gui)
frame.Size = UDim2.new(0,420,0,400)
frame.Position = UDim2.new(0.5,-210,0.5,-200)
frame.BackgroundColor3 = Color3.fromRGB(20,20,20)
frame.Active = true
frame.Draggable = true

local title = Instance.new("TextLabel", frame)
title.Size = UDim2.new(1,0,0,30)
title.Text = "b00kiddGUI test"
title.BackgroundColor3 = Color3.fromRGB(40,40,40)
title.TextColor3 = Color3.new(1,1,1)

local container = Instance.new("Frame", frame)
container.Size = UDim2.new(1,0,1,-60)
container.Position = UDim2.new(0,0,0,30)
container.BackgroundTransparency = 1

local pageLabel = Instance.new("TextLabel", frame)
pageLabel.Size = UDim2.new(0,200,0,25)
pageLabel.Position = UDim2.new(0.5,-100,1,-30)
pageLabel.TextColor3 = Color3.new(1,1,1)
pageLabel.BackgroundTransparency = 1

local prev = Instance.new("TextButton", frame)
prev.Size = UDim2.new(0,50,0,25)
prev.Position = UDim2.new(0,10,1,-30)
prev.Text = "<"

local next = Instance.new("TextButton", frame)
next.Size = UDim2.new(0,50,0,25)
next.Position = UDim2.new(1,-60,1,-30)
next.Text = ">"

-- Pages
local pages = {}
local currentPage = 1
local modsPerPage = 6

local function newPage()
	local p = Instance.new("Frame", container)
	p.Size = UDim2.new(1,0,1,0)
	p.BackgroundTransparency = 1
	p.Visible = false
	table.insert(pages, p)
	return p
end

local function button(parent,text,y,func)
	local b = Instance.new("TextButton", parent)
	b.Size = UDim2.new(0.8,0,0,30)
	b.Position = UDim2.new(0.1,0,0,y)
	b.Text = text
	b.BackgroundColor3 = Color3.fromRGB(60,60,60)
	b.TextColor3 = Color3.new(1,1,1)
	b.MouseButton1Click:Connect(function()
		pcall(func) -- prevent crashes
	end)
end

-- ===== MODS =====
local mods = {}

local function orbitPart(target, radius, speed, color)
	local p = Instance.new("Part")
	p.Size = Vector3.new(2,2,2)
	p.Anchored = true
	p.CanCollide = false
	p.BrickColor = BrickColor.new(color)
	p.Parent = Workspace

	return RunService.RenderStepped:Connect(function()
		if target and target.Parent then
			p.Position = target.Position + Vector3.new(
				math.sin(tick()*speed)*radius,
				radius/2,
				math.cos(tick()*speed)*radius
			)
		end
	end)
end

-- Orbit self
for i=1,25 do
	table.insert(mods,{
		"Orbit Self "..i,
		function()
			local root = getRoot(character)
			return orbitPart(root,5+i,2+i,"Bright red")
		end
	})
end

-- Orbit random player
for i=1,25 do
	table.insert(mods,{
		"Orbit Random "..i,
		function()
			local plrs = Players:GetPlayers()
			local target = plrs[math.random(1,#plrs)]
			if target.Character then
				local root = target.Character:FindFirstChild("HumanoidRootPart")
				if root then
					return orbitPart(root,5+i,1+i,"Bright blue")
				end
			end
		end
	})
end

-- Exploding parts
for i=1,10 do
	table.insert(mods,{
		"Explosion "..i,
		function()
			local root = getRoot(character)
			local p = Instance.new("Part")
			p.Size = Vector3.new(3,3,3)
			p.Anchored = true
			p.CanCollide = false
			p.BrickColor = BrickColor.Random()
			p.Position = root.Position + Vector3.new(math.random(-20,20),10,math.random(-20,20))
			p.Parent = Workspace

			game:GetService("Debris"):AddItem(p,5)

			local explosion = Instance.new("Explosion")
			explosion.Position = p.Position
			explosion.BlastRadius = 10
			explosion.Parent = Workspace
		end
	})
end

-- ===== BUILD PAGES =====
local currentPageObj
for i,mod in ipairs(mods) do
	if (i-1) % modsPerPage == 0 then
		currentPageObj = newPage()
	end
	local y = ((i-1) % modsPerPage) * 40
	button(currentPageObj,mod[1],y,mod[2])
end

-- Page system
local function updatePages()
	for i,p in pairs(pages) do
		p.Visible = (i==currentPage)
	end
	pageLabel.Text = "Page "..currentPage.." / "..#pages
end

prev.MouseButton1Click:Connect(function()
	currentPage = currentPage - 1
	if currentPage < 1 then currentPage = #pages end
	updatePages()
end)

next.MouseButton1Click:Connect(function()
	currentPage = currentPage + 1
	if currentPage > #pages then currentPage = 1 end
	updatePages()
end)

updatePages()
