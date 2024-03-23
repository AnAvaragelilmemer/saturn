--[[
Since Bread is no longer maintaining the syntax highlighting and now deleted., i decided to use a alternative and used probablYnicK's LunarExecutor since this is the only internal executor i have found with bread's syntax highlighting and modified it too.
]]
-- Lexer by sleitnick
-- Everything else by me, bread. lol.


local module = {}

local function getm(mod)
	return loadstring(game:HttpGet("https://raw.githubusercontent.com/AnAvaragelilmemer/saturn/main/assets/executorutils/"..mod..".lua"))()
end

local syntax 	   = getm("Syntax")
local getLines 	   = getm("GetLines")
local fakeEditor   = getm("FakeEditor")
local textFixer    = getm("TextFixer")
local getLine 	   = getm("GetLine")
local tween 	   = getm("TweenLibrary")
local suggestions  = getm("Suggestions")

local GetAsset = getsynasset or getcustomasset

local function LoadCustomInstance(url)
	if url == "" then
		return ""
	elseif string.find(url, "rbxassetid://") or string.find(url, "roblox.com") or tonumber(url) then
		local numberId = string.gsub(url, "%D", "")
		return game:GetObjects("rbxassetid://".. numberId)[1]
	else
		local fileName = "customInstance_".. tick().. ".txt"
		local instance = nil
		writefile(fileName, game:HttpGet(url))
		instance = game:GetObjects(GetAsset(fileName))[1]
		delfile(fileName)

		return instance
	end
end

function module.new(frame)
	local newEditor = LoadCustomInstance("https://github.com/AnAvaragelilmemer/saturn/blob/main/assets/saturn%20editor%20v1.1.rbxm?raw=true")
	repeat until newEditor:FindFirstChild("Scroll")
	newEditor.Parent = frame

	local editorObj  	= fakeEditor.new(newEditor)
	local textbox 	 	= newEditor.Scroll.Source
	local linesLabel 	= newEditor.Scroll.Left.Lines
	local lineHighlight = textbox.LineHighlight

	local highlightBox = Instance.new("TextLabel")
	highlightBox.Size = UDim2.new(1, 0,1, 0)
	highlightBox.Position = UDim2.new(0, 0,0, 0)
	highlightBox.TextColor3 = textbox.TextColor3
	highlightBox.BackgroundTransparency = 1
	highlightBox.Name = "Syntax"
	highlightBox.RichText = true
	highlightBox.TextSize = textbox.TextSize
	highlightBox.Font = textbox.Font
	highlightBox.TextXAlignment = Enum.TextXAlignment.Left
	highlightBox.TextYAlignment = Enum.TextYAlignment.Top
	highlightBox.TextStrokeColor3 = Color3.fromRGB(40, 40, 40)
	highlightBox.TextStrokeTransparency = 0.1
	highlightBox.Text = ""
	highlightBox.Parent = textbox
	
	textFixer.Fix(highlightBox)
	suggestions:Start(newEditor)

	textbox:GetPropertyChangedSignal("Text"):Connect(function()
		syntax.Highlight(highlightBox, textbox.Text)

		-- Fix tabs
		textbox.Text = textbox.Text:gsub("\t", "    ")
		--textbox.CursorPosition += 4
		
		-- Update line count
		linesLabel.Text = getLines.GetLinesString(textbox.Text)
	end)
	
	textbox:GetPropertyChangedSignal("CursorPosition"):Connect(function()
		-- Position line highlight
		local lineYPos = ((getLine:GetCurrentLine(textbox) * textbox.TextSize) - math.ceil(lineHighlight.AbsoluteSize.Y / 2)) + 4

		if lineYPos ~= lineHighlight.Position.Y.Offset then
			tween.TweenPosition(lineHighlight, UDim2.new(0, -10,0, lineYPos), 0.1, Enum.EasingStyle.Quad)
		end
	end)

	return editorObj
end

return module
