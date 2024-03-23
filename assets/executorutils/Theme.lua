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
			["keyword"] = Color3.fromRGB(0, 51, 179),
			["builtin"] = Color3.fromRGB(6, 182, 212),
			["string"] = Color3.fromRGB(132, 204, 22),
			["number"] = Color3.fromRGB(23, 80, 235),
			["comment"] = Color3.fromRGB(38, 38, 38),
			["thingy"] = Color3.fromRGB(248, 245, 139),
			["custom"] = Color3.fromRGB(170, 221, 255),
		}
	}
}

theme.current = theme.themes["extra 2"]

return theme
