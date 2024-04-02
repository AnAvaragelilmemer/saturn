local module = {}

local function getm(mod)
	return loadstring(game:HttpGet("https://raw.githubusercontent.com/AnAvaragelilmemer/saturn/main/assets/executorutils/"..mod..".lua"))()
end

--// Vars
local words   = getm("Words")
local GetWord = getm("GetWord")
local getLine = getm("GetLine")

--// Funcs
function module.GetCurrentWord(self)
	return GetWord:GetCurrentWord(self.Textbox)
end

function module.Search(self)
	local currentWord = self:GetCurrentWord():lower()
	
	if currentWord == "" and #currentWord <= 1 then
		return nil
	end
	
	for word, wordType in pairs(words) do
		local matched = string.match(word:lower(), currentWord)
		
		if matched then
			local foundStart, foundEnd = string.find(word:lower(), currentWord)
			return word, (foundEnd - foundStart) + 1
		end
	end
	
	return nil
end

function module.Start(self, editor)
	self.Editor = editor
	self.Textbox = editor.Scroll.Source
	self.SuggestionButton = self.Textbox.Suggestion
	self.SuggestionButton.Icon.Image = "rbxassetid://16980507190"
	self.SuggestionButton.Icon.Size = UDim2.new(0,19,0,22)
	self.SuggestionButton.Icon.Position = Udim2.new(0,-26,0, 3)
	self.Textbox:GetPropertyChangedSignal("Text"):Connect(function()
		local foundWord, matchedLength = self:Search()
		
		if foundWord then
			local position = UDim2.new(0, 0,0, getLine:GetCurrentLine(self.Textbox) * self.Textbox.TextSize)
			
			self.SuggestionButton.Text = foundWord
			self.SuggestionButton.Position = position
			self.SuggestionButton.Visible = true
			self.MatchedLength = matchedLength
		else
			self.SuggestionButton.Visible = false
		end
	end)
	
	self.SuggestionButton.MouseButton1Click:Connect(function(input)
		-- Fill in the word
		local word = self.SuggestionButton.Text
		self.SuggestionButton.Visible = false
		self.Textbox.Text = self.Textbox.Text:sub(1, self.Textbox.CursorPosition - 1 - (self.MatchedLength or 0)) .. word .. self.Textbox.Text:sub(self.Textbox.CursorPosition + 1, #self.Textbox.Text)
		
		local newCursorPosition = self.Textbox.CursorPosition + #word - self.MatchedLength
		task.wait(0.25)
		self.Textbox:CaptureFocus()
		self.Textbox.CursorPosition = newCursorPosition
	end)
end

return module
