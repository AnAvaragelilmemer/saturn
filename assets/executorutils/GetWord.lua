local module = {}

function module.next(self)
	self.position += 1
	local character = self.text:sub(self.position, self.position)
	
	if character == "\n" or character == " " or self.position > #self.text then
		return self.position - 1
	else
		return self:next()
	end
end

function module.prev(self)
	self.position -= 1
	local character = self.text:sub(self.position, self.position)

	if character == "\n" or character == " " or self.position < 1 then
		return self.position + 1
	else
		return self:prev()
	end
end

function module.GetCurrentWord(self, textbox)
	self.cursorPosition = textbox.CursorPosition
	self.position = self.cursorPosition
	self.text = textbox.Text
	
	local wordEnd = self:next()
	local wordStart = self:prev()
	local wordString = self.text:sub(wordStart, wordEnd)
	
	return wordString
end

return module
