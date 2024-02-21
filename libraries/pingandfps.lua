function LaunchFPS()
getgenv().SATURNFPS = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local TextLabel = Instance.new("TextLabel")
local UITextSizeConstraint = Instance.new("UITextSizeConstraint")
local UIPadding = Instance.new("UIPadding")
local UICorner = Instance.new("UICorner")
SATURNFPS.Name = "FPS"
SATURNFPS.Parent = game:GetService("CoreGui")
SATURNFPS.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Frame.Parent = SATURNFPS
Frame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Frame.BackgroundTransparency = 0.500
Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame.BorderSizePixel = 0
Frame.Position = UDim2.new(0.0121145379, 0, 0.983539104, -28)
Frame.Size = UDim2.new(0, 79, 0, 28)

TextLabel.Parent = Frame
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BackgroundTransparency = 1.000
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.BorderSizePixel = 0
TextLabel.Size = UDim2.new(0, 67, 0, 28)
TextLabel.Font = Enum.Font.Gotham
TextLabel.Text = "FPS: 60"
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.TextSize = 14.000
TextLabel.TextXAlignment = Enum.TextXAlignment.Left

UITextSizeConstraint.Parent = TextLabel
UITextSizeConstraint.MaxTextSize = 50

UIPadding.Parent = TextLabel
UIPadding.PaddingLeft = UDim.new(0, 5)

UICorner.CornerRadius = UDim.new(0, 3)
UICorner.Parent = Frame
	-- Scripts:

	local function JSDD_fake_script() -- TextLabel.LocalScript 
		local script = Instance.new('LocalScript', TextLabel)

		local number = 0
		game:GetService("RunService").RenderStepped:Connect(function()
			number = number + 1
		end)
		task.spawn(function()
			while task.wait(1) do
				script.Parent.Text = "FPS: "..number
				number = 0
			end
		end)
	end
	coroutine.wrap(JSDD_fake_script)()
	local function IGAJV_fake_script() -- Frame.LocalScript 
		local script = Instance.new('LocalScript', Frame)

		script.Parent.Draggable = true
		script.Parent.Active = true

	end
	coroutine.wrap(IGAJV_fake_script)()
end
function LaunchPING()
	getgenv().Ping = Instance.new("ScreenGui")
	local Frame = Instance.new("Frame")
	local TextLabel = Instance.new("TextLabel")
	local UITextSizeConstraint = Instance.new("UITextSizeConstraint")
	local UIPadding = Instance.new("UIPadding")
	local UICorner = Instance.new("UICorner")

	-- Properties:

	Ping.Name = "Ping"
	Ping.Parent = game:GetService("CoreGui")
	Ping.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

	Frame.Parent = Ping
	Frame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
	Frame.BackgroundTransparency = 0.500
	Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Frame.BorderSizePixel = 0
	Frame.Position = UDim2.new(0.11123348, 0, 0.983539104, -28)
	Frame.Size = UDim2.new(0, 88, 0, 28)

	TextLabel.Parent = Frame
	TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	TextLabel.BackgroundTransparency = 1.000
	TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
	TextLabel.BorderSizePixel = 0
	TextLabel.Size = UDim2.new(0, 67, 0, 28)
	TextLabel.Font = Enum.Font.Gotham
	TextLabel.Text = "Ping: 100"
	TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
	TextLabel.TextSize = 14.000
	TextLabel.TextXAlignment = Enum.TextXAlignment.Left

	UITextSizeConstraint.Parent = TextLabel
	UITextSizeConstraint.MaxTextSize = 50

	UIPadding.Parent = TextLabel
	UIPadding.PaddingLeft = UDim.new(0, 5)

	UICorner.CornerRadius = UDim.new(0, 3)
	UICorner.Parent = Frame

	-- Scripts:

	local function QJAFJO_fake_script() -- TextLabel.LocalScript 
		local script = Instance.new('LocalScript', TextLabel)

		task.spawn(function()
			while task.wait(1) do
				local ping = game:GetService("Stats").PerformanceStats.Ping:GetValue()
				local avoiddecimals = math.floor(ping)
				script.Parent.Text = "Ping: "..avoiddecimals.." ms"
			end
		end)
	end
	coroutine.wrap(QJAFJO_fake_script)()
	local function OLELYTM_fake_script() -- Frame.LocalScript 
		local script = Instance.new('LocalScript', Frame)

		script.Parent.Draggable = true
		script.Parent.Active = true

	end
	coroutine.wrap(OLELYTM_fake_script)()
end
LaunchFPS()
LaunchPING()
