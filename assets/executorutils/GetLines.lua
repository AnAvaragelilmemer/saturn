local module = {}

function module.GetLines(text)
	local amount = 1
	
	text:gsub("\n", function()
		amount += 1
	end)
	
	return amount
end

function module.GetLinesString(text)
	local lineAmt = module.GetLines(text)
	local result = ""
	
	for i = 1, lineAmt do
		result = result .. i .. "\n"
	end
	
	-- Remove last \n
	result = result:sub(1, #result - 1)
	
	return result
end

return module
