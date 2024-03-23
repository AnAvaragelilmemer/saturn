local fakeEditor = {} -- Main module

local function getm(mod)
	return loadstring(game:HttpGet("https://raw.githubusercontent.com/AnAvaragelilmemer/saturn/main/assets/executorutils/"..mod..".lua"))()
end

local textFixer = getm("TextFixer")
local theme = getm("Theme")
local syntax = getm("Syntax")

local editorObj = {
	SetTextSize = function(self, textSize)
		local sourceBox = self.Editor.Scroll.Source
		local syntaxBox = sourceBox.Syntax
		local linesBox = self.Editor.Scroll.Left.Lines
		local lineHighlight = sourceBox.LineHighlight

		sourceBox.TextSize = textSize
		syntaxBox.TextSize = textSize
		linesBox.TextSize = textSize
		lineHighlight.Size = UDim2.new(1, 0,0, textSize + 5)
		
		
		--[[
			Might want to fix it manually because adding another \n
			might cause some instability
		]]
		textFixer.Fix(self.Editor.Scroll.Source.Syntax)

		return textSize
	end,
	Destroy = function(self)
		self.Editor:Destroy()
		setmetatable(self, {__index = nil})
		table.clear(self)
		self = nil

		return nil
	end,
	GetText = function(self)
		local sourceBox = self.Editor.Scroll.Source
		return sourceBox.Text
	end,
	SetText = function(self, text)
		local sourceBox = self.Editor.Scroll.Source
		sourceBox.Text = text

		return text
	end,
	ContentToBytes = function(self)
		local text = self.Editor.Scroll.Source.Text
		local bytes = {}
		
		for _, c in pairs(text:split("")) do
			table.insert(bytes, string.byte(c))
		end
		
		return "/" .. table.concat(bytes, "/")
	end,
	Hide = function(self)
		local hiddenLabel = self.Editor.Scroll.Source.Hidden
		hiddenLabel.Visible = true
	end,
	Unhide = function(self)
		local hiddenLabel = self.Editor.Scroll.Source.Hidden
		hiddenLabel.Visible = false
	end,
	SetTheme = function(self, themeName)
		local sourceBox = self.Editor.Scroll.Source
		local syntaxBox = sourceBox.Syntax
		
		assert(theme.themes[themeName], "'" .. themeName .. "' is not a valid theme.")
		
		theme.current = theme.themes[themeName]
		
		-- Update highlighting
		syntax.Highlight(syntaxBox, sourceBox.Text)
	end,
}

function fakeEditor.new(editor)
	return setmetatable({Editor = editor}, {__index = editorObj})
end

return fakeEditor
