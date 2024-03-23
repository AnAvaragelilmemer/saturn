local module = {}

local tweenService = game:GetService("TweenService")
local debris = game:GetService("Debris")

-- Custom functions
local function default(arg, def)
	if arg == nil then
		arg = def
	end
	return arg
end

-- Guis --

function module.TweenScale(frame, scale, timelen, easingstyle, easingdir)
	local uiscale
	if not frame:FindFirstChild("$ScaleAnim") then
		uiscale = Instance.new("UIScale")
		uiscale.Scale = 1
		uiscale.Name = "$ScaleAnim"
		uiscale.Parent = frame
	end
	
	-- Generate tween info
	local tinfo = TweenInfo.new(timelen, easingstyle, easingdir)
	local goals = {
		Scale = scale
	}

	-- Finally, play tween
	tweenService:Create(uiscale, tinfo, goals):Play()
	--debris:AddItem(uiscale, timelen) -- Remove it when animation is done
end

function module.TweenPosition(frame, position, timelen, easingstyle, easingdir)
	-- Errors & defaults
	assert(frame, "No frame provided")
	assert(position, "No position provided")
	assert(timelen, "No time length provided")
	easingstyle = default(easingstyle, Enum.EasingStyle.Sine)
	easingdir = default(easingdir, Enum.EasingDirection.Out)
	
	-- Generate tween info
	local tinfo = TweenInfo.new(timelen, easingstyle, easingdir)
	local goals = {
		Position = position
	}
	
	-- Finally, play tween
	tweenService:Create(frame, tinfo, goals):Play()
end

function module.TweenSize(frame, size, timelen, easingstyle, easingdir)
	-- Errors & defaults
	assert(frame, "No frame provided")
	assert(size, "No size provided")
	assert(timelen, "No time length provided")
	easingstyle = default(easingstyle, Enum.EasingStyle.Sine)
	easingdir = default(easingdir, Enum.EasingDirection.Out)

	-- Generate tween info
	local tinfo = TweenInfo.new(timelen, easingstyle, easingdir)
	local goals = {
		Size = size
	}

	-- Finally, play tween
	tweenService:Create(frame, tinfo, goals):Play()
end

function module.TweenBackgroundColor3(frame, color, timelen, easingstyle, easingdir)
	-- Errors & defaults
	assert(frame, "No frame provided")
	assert(color, "No color provided")
	assert(timelen, "No time length provided")
	easingstyle = default(easingstyle, Enum.EasingStyle.Sine)
	easingdir = default(easingdir, Enum.EasingDirection.Out)

	-- Generate tween info
	local tinfo = TweenInfo.new(timelen, easingstyle, easingdir)
	local goals = {
		BackgroundColor3 = color
	}

	-- Finally, play tween
	tweenService:Create(frame, tinfo, goals):Play()
end

function module.TweenBackgroundTransparency(frame, transparency, timelen, easingstyle, easingdir)
	-- Errors & defaults
	assert(frame, "No frame provided")
	assert(transparency, "No transparency provided")
	assert(timelen, "No time length provided")
	easingstyle = default(easingstyle, Enum.EasingStyle.Sine)
	easingdir = default(easingdir, Enum.EasingDirection.Out)

	-- Generate tween info
	local tinfo = TweenInfo.new(timelen, easingstyle, easingdir)
	local goals = {
		BackgroundTransparency = transparency
	}

	-- Finally, play tween
	tweenService:Create(frame, tinfo, goals):Play()
end

function module.TweenBorderColor3(frame, color, timelen, easingstyle, easingdir)
	-- Errors & defaults
	assert(frame, "No frame provided")
	assert(color, "No color provided")
	assert(timelen, "No time length provided")
	easingstyle = default(easingstyle, Enum.EasingStyle.Sine)
	easingdir = default(easingdir, Enum.EasingDirection.Out)

	-- Generate tween info
	local tinfo = TweenInfo.new(timelen, easingstyle, easingdir)
	local goals = {
		BorderColor3 = color
	}

	-- Finally, play tween
	tweenService:Create(frame, tinfo, goals):Play()
end

function module.TweenBorderSizePixel(frame, bordersize, timelen, easingstyle, easingdir)
	-- Errors & defaults
	assert(frame, "No frame provided")
	assert(bordersize, "No border size provided")
	assert(timelen, "No time length provided")
	easingstyle = default(easingstyle, Enum.EasingStyle.Sine)
	easingdir = default(easingdir, Enum.EasingDirection.Out)

	-- Generate tween info
	local tinfo = TweenInfo.new(timelen, easingstyle, easingdir)
	local goals = {
		BorderSizePixel = bordersize
	}

	-- Finally, play tween
	tweenService:Create(frame, tinfo, goals):Play()
end

function module.TweenImageTransparency(frame, imagetransparency, timelen, easingstyle, easingdir)
	-- Errors & defaults
	assert(frame, "No frame provided")
	assert(imagetransparency, "No image transparency provided")
	assert(timelen, "No time length provided")
	easingstyle = default(easingstyle, Enum.EasingStyle.Sine)
	easingdir = default(easingdir, Enum.EasingDirection.Out)

	-- Generate tween info
	local tinfo = TweenInfo.new(timelen, easingstyle, easingdir)
	local goals = {
		ImageTransparency = imagetransparency
	}

	-- Finally, play tween
	tweenService:Create(frame, tinfo, goals):Play()
end

function module.TweenImageColor3(frame, color, timelen, easingstyle, easingdir)
	-- Errors & defaults
	assert(frame, "No frame provided")
	assert(color, "No color provided")
	assert(timelen, "No time length provided")
	easingstyle = default(easingstyle, Enum.EasingStyle.Sine)
	easingdir = default(easingdir, Enum.EasingDirection.Out)

	-- Generate tween info
	local tinfo = TweenInfo.new(timelen, easingstyle, easingdir)
	local goals = {
		ImageColor3 = color
	}

	-- Finally, play tween
	tweenService:Create(frame, tinfo, goals):Play()
end

function module.TweenImageRectOffset(frame, offset, timelen, easingstyle, easingdir)
	-- Errors & defaults
	assert(frame, "No frame provided")
	assert(offset, "No offset provided")
	assert(timelen, "No time length provided")
	easingstyle = default(easingstyle, Enum.EasingStyle.Sine)
	easingdir = default(easingdir, Enum.EasingDirection.Out)

	-- Generate tween info
	local tinfo = TweenInfo.new(timelen, easingstyle, easingdir)
	local goals = {
		ImageRectOffset = offset
	}

	-- Finally, play tween
	tweenService:Create(frame, tinfo, goals):Play()
end

function module.TweenImageRectSize(frame, size, timelen, easingstyle, easingdir)
	-- Errors & defaults
	assert(frame, "No frame provided")
	assert(size, "No size provided")
	assert(timelen, "No time length provided")
	easingstyle = default(easingstyle, Enum.EasingStyle.Sine)
	easingdir = default(easingdir, Enum.EasingDirection.Out)

	-- Generate tween info
	local tinfo = TweenInfo.new(timelen, easingstyle, easingdir)
	local goals = {
		ImageRectSize = size
	}

	-- Finally, play tween
	tweenService:Create(frame, tinfo, goals):Play()
end

function module.TweenSliceScale(frame, scale, timelen, easingstyle, easingdir)
	-- Errors & defaults
	assert(frame, "No frame provided")
	assert(scale, "No scale provided")
	assert(timelen, "No time length provided")
	easingstyle = default(easingstyle, Enum.EasingStyle.Sine)
	easingdir = default(easingdir, Enum.EasingDirection.Out)

	-- Generate tween info
	local tinfo = TweenInfo.new(timelen, easingstyle, easingdir)
	local goals = {
		SliceScale = scale
	}

	-- Finally, play tween
	tweenService:Create(frame, tinfo, goals):Play()
end

function module.TweenTextColor3(frame, color, timelen, easingstyle, easingdir)
	-- Errors & defaults
	assert(frame, "No frame provided")
	assert(color, "No color provided")
	assert(timelen, "No time length provided")
	easingstyle = default(easingstyle, Enum.EasingStyle.Sine)
	easingdir = default(easingdir, Enum.EasingDirection.Out)

	-- Generate tween info
	local tinfo = TweenInfo.new(timelen, easingstyle, easingdir)
	local goals = {
		TextColor3 = color
	}

	-- Finally, play tween
	tweenService:Create(frame, tinfo, goals):Play()
end

function module.TweenMaxVisibleGraphemes(frame, graphemes, timelen, easingstyle, easingdir)
	-- Errors & defaults
	assert(frame, "No frame provided")
	assert(graphemes, "No graphemes provided")
	assert(timelen, "No time length provided")
	easingstyle = default(easingstyle, Enum.EasingStyle.Sine)
	easingdir = default(easingdir, Enum.EasingDirection.Out)

	-- Generate tween info
	local tinfo = TweenInfo.new(timelen, easingstyle, easingdir)
	local goals = {
		MaxVisibleGraphemes = graphemes
	}

	-- Finally, play tween
	tweenService:Create(frame, tinfo, goals):Play()
end

function module.TweenTextSize(frame, size, timelen, easingstyle, easingdir)
	-- Errors & defaults
	assert(frame, "No frame provided")
	assert(size, "No size provided")
	assert(timelen, "No time length provided")
	easingstyle = default(easingstyle, Enum.EasingStyle.Sine)
	easingdir = default(easingdir, Enum.EasingDirection.Out)

	-- Generate tween info
	local tinfo = TweenInfo.new(timelen, easingstyle, easingdir)
	local goals = {
		TextSize = size
	}

	-- Finally, play tween
	tweenService:Create(frame, tinfo, goals):Play()
end

function module.TweenTextStrokeColor3(frame, color, timelen, easingstyle, easingdir)
	-- Errors & defaults
	assert(frame, "No frame provided")
	assert(color, "No color provided")
	assert(timelen, "No time length provided")
	easingstyle = default(easingstyle, Enum.EasingStyle.Sine)
	easingdir = default(easingdir, Enum.EasingDirection.Out)

	-- Generate tween info
	local tinfo = TweenInfo.new(timelen, easingstyle, easingdir)
	local goals = {
		TextStrokeColor3 = color
	}

	-- Finally, play tween
	tweenService:Create(frame, tinfo, goals):Play()
end

function module.TweenTextTransparency(frame, transparency, timelen, easingstyle, easingdir)
	-- Errors & defaults
	assert(frame, "No frame provided")
	assert(transparency, "No transparency provided")
	assert(timelen, "No time length provided")
	easingstyle = default(easingstyle, Enum.EasingStyle.Sine)
	easingdir = default(easingdir, Enum.EasingDirection.Out)

	-- Generate tween info
	local tinfo = TweenInfo.new(timelen, easingstyle, easingdir)
	local goals = {
		TextTransparency = transparency
	}

	-- Finally, play tween
	tweenService:Create(frame, tinfo, goals):Play()
end

function module.TweenTextStrokeTransparency(frame, transparency, timelen, easingstyle, easingdir)
	-- Errors & defaults
	assert(frame, "No frame provided")
	assert(transparency, "No transparency provided")
	assert(timelen, "No time length provided")
	easingstyle = default(easingstyle, Enum.EasingStyle.Sine)
	easingdir = default(easingdir, Enum.EasingDirection.Out)

	-- Generate tween info
	local tinfo = TweenInfo.new(timelen, easingstyle, easingdir)
	local goals = {
		TextStrokeTransparency = transparency
	}

	-- Finally, play tween
	tweenService:Create(frame, tinfo, goals):Play()
end

function module.TweenCanvasSize(frame, size, timelen, easingstyle, easingdir)
	-- Errors & defaults
	assert(frame, "No frame provided")
	assert(size, "No size provided")
	assert(timelen, "No time length provided")
	easingstyle = default(easingstyle, Enum.EasingStyle.Sine)
	easingdir = default(easingdir, Enum.EasingDirection.Out)

	-- Generate tween info
	local tinfo = TweenInfo.new(timelen, easingstyle, easingdir)
	local goals = {
		CanvasSize = size
	}

	-- Finally, play tween
	tweenService:Create(frame, tinfo, goals):Play()
end

function module.TweenCanvasPosition(frame, position, timelen, easingstyle, easingdir)
	-- Errors & defaults
	assert(frame, "No frame provided")
	assert(position, "No position provided")
	assert(timelen, "No time length provided")
	easingstyle = default(easingstyle, Enum.EasingStyle.Sine)
	easingdir = default(easingdir, Enum.EasingDirection.Out)

	-- Generate tween info
	local tinfo = TweenInfo.new(timelen, easingstyle, easingdir)
	local goals = {
		CanvasPosition = position
	}

	-- Finally, play tween
	tweenService:Create(frame, tinfo, goals):Play()
end

function module.TweenScrollBarImageTransparency(frame, transparency, timelen, easingstyle, easingdir)
	-- Errors & defaults
	assert(frame, "No frame provided")
	assert(transparency, "No transparency provided")
	assert(timelen, "No time length provided")
	easingstyle = default(easingstyle, Enum.EasingStyle.Sine)
	easingdir = default(easingdir, Enum.EasingDirection.Out)

	-- Generate tween info
	local tinfo = TweenInfo.new(timelen, easingstyle, easingdir)
	local goals = {
		ScrollBarImageTransparency = transparency
	}

	-- Finally, play tween
	tweenService:Create(frame, tinfo, goals):Play()
end

function module.TweenScrollBarThickness(frame, thickness, timelen, easingstyle, easingdir)
	-- Errors & defaults
	assert(frame, "No frame provided")
	assert(thickness, "No thickness provided")
	assert(timelen, "No time length provided")
	easingstyle = default(easingstyle, Enum.EasingStyle.Sine)
	easingdir = default(easingdir, Enum.EasingDirection.Out)

	-- Generate tween info
	local tinfo = TweenInfo.new(timelen, easingstyle, easingdir)
	local goals = {
		ScrollBarThickness = thickness
	}

	-- Finally, play tween
	tweenService:Create(frame, tinfo, goals):Play()
end

function module.TweenScrollBarImageColor3(frame, color, timelen, easingstyle, easingdir)
	-- Errors & defaults
	assert(frame, "No frame provided")
	assert(color, "No color provided")
	assert(timelen, "No time length provided")
	easingstyle = default(easingstyle, Enum.EasingStyle.Sine)
	easingdir = default(easingdir, Enum.EasingDirection.Out)

	-- Generate tween info
	local tinfo = TweenInfo.new(timelen, easingstyle, easingdir)
	local goals = {
		ScrollBarImageColor3 = color
	}

	-- Finally, play tween
	tweenService:Create(frame, tinfo, goals):Play()
end

function module.TweenCFrame(thing, cframe, timelen, easingstyle, easingdir)
	-- Errors & defaults
	assert(thing, "No instance provided")
	assert(cframe, "No cframe provided")
	assert(timelen, "No time length provided")
	easingstyle = default(easingstyle, Enum.EasingStyle.Sine)
	easingdir = default(easingdir, Enum.EasingDirection.Out)

	-- Generate tween info
	local tinfo = TweenInfo.new(timelen, easingstyle, easingdir)
	local goals = {
		CFrame = cframe
	}

	-- Finally, play tween
	tweenService:Create(thing, tinfo, goals):Play()
end

function module.TweenFOV(thing, fov, timelen, easingstyle, easingdir)
	-- Errors & defaults
	assert(thing, "No instance provided")
	assert(fov, "No FOV provided")
	assert(timelen, "No time length provided")
	easingstyle = default(easingstyle, Enum.EasingStyle.Sine)
	easingdir = default(easingdir, Enum.EasingDirection.Out)

	-- Generate tween info
	local tinfo = TweenInfo.new(timelen, easingstyle, easingdir)
	local goals = {
		FieldOfView = fov
	}

	-- Finally, play tween
	tweenService:Create(thing, tinfo, goals):Play()
end

function module.TweenValue(thing, value, timelen, easingstyle, easingdir)
	-- Errors & defaults
	assert(thing, "No instance provided")
	assert(value, "No value provided")
	assert(timelen, "No time length provided")
	easingstyle = default(easingstyle, Enum.EasingStyle.Sine)
	easingdir = default(easingdir, Enum.EasingDirection.Out)

	-- Generate tween info
	local tinfo = TweenInfo.new(timelen, easingstyle, easingdir)
	local goals = {
		Value = value
	}

	-- Finally, play tween
	tweenService:Create(thing, tinfo, goals):Play()
end

function module.TweenVolume(thing, volume, timelen, easingstyle, easingdir)
	-- Errors & defaults
	assert(thing, "No instance provided")
	assert(volume, "No volume provided")
	assert(timelen, "No time length provided")
	easingstyle = default(easingstyle, Enum.EasingStyle.Sine)
	easingdir = default(easingdir, Enum.EasingDirection.Out)

	-- Generate tween info
	local tinfo = TweenInfo.new(timelen, easingstyle, easingdir)
	local goals = {
		Volume = volume
	}

	-- Finally, play tween
	tweenService:Create(thing, tinfo, goals):Play()
end

return module
