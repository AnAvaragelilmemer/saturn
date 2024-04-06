local theme = {
	themes = {
		["default"] = {
			["keyword"] = Color3.fromRGB(248, 109, 124),
			["builtin"] = Color3.fromRGB(84, 184, 247),
			["string"] = Color3.fromRGB(130, 241, 149),
			["number"] = Color3.fromRGB(255, 198, 0),
			["comment"] = Color3.fromRGB(106, 106, 100),
			["thingy"] = Color3.fromRGB(253, 251, 154),
			["custom"] = Color3.fromRGB(170, 221, 255),
		},
		["extra 2"] = {
			["keyword"] = Color3.fromRGB(30, 64, 175),
			["builtin"] = Color3.fromRGB(29, 78, 216),
			["string"] = Color3.fromRGB(147, 197, 253),
			["number"] = Color3.fromRGB(30, 58, 138),
			["comment"] = Color3.fromRGB(38, 38, 38),
			["thingy"] = Color3.fromRGB(248, 245, 139),
			["custom"] = Color3.fromRGB(170, 221, 255),
                        ["operator"] = Color3.fromRGB(59, 130, 246),
		}
	}
}

theme.current = theme.themes["extra 2"]

return theme
