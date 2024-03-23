local module = {}

function module.peekBack(self)
	return self.text:sub(self.position - 1, self.position - 1)
end

function module.next(self)
	self.position += 1
	
	self.character = self.text:sub(self.position, self.position)
	
	if self.character == "\n" then
		self.lines += 1
	end
	
	if self.position < #self.text and self.position < self.cursorPosition then
		self:next()
	end
end

function module.GetCurrentLine(self, textbox)
	self.position = 0
	self.text = textbox.Text .. " "
	self.cursorPosition = textbox.CursorPosition
	self.lines = 1
	
	self:next()
	
	return self.lines
end

function module.GetCurrentLineWidth(self, textbox)
	self.position = 0
	self.text = textbox.Text .. " "
	self.cursorPosition = textbox.CursorPosition
	self.lines = 1

	self:next()
	
	-- self.lines is the current line

	return self.position
end

return module
