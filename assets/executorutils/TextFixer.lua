-- Fixes a Roblox bug with RichText

-- If the bug gets fixed, this will break the editor (visually).
-- In this case, please remove any instances of this module being used.

local module = {}

function module.Fix(textbox)
	if textbox.Text:sub(1, 1) ~= "\n" then
		textbox.Text = "\n" .. textbox.Text
	end
	
	textbox.Position = UDim2.new(0, -3,0,-textbox.TextSize)
	textbox.Size = UDim2.new(1, 4,1, textbox.TextSize)
end

return module
