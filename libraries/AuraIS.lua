--[[

AuraIS (Aura Interface Suite)
by Darkrai | Y
located on: https://raw.githubusercontent.com/GamingScripter/Darkrai-Y/main/Libraries/AuraIS/Main
Note: This UI library is not intended for modifying the core functionality
]]
local v0 = "Alpha 0.3";
local v1 = 5;
local v2 = "AuraIS";
local v3 = v2 .. "/Configurations";
local v4 = {Flags={},Theme={Dark={TextColor=Color3.fromRGB(240, 240, 240),MainColor=Color3.fromRGB(16, 16, 16),SecondaryColor=Color3.fromRGB(22, 22, 22),NotificationActionsBackground=Color3.fromRGB(230, 230, 230),ImageColor=Color3.fromRGB(255, 255, 255),TabBackground=Color3.fromRGB(80, 80, 80),TabStroke=Color3.fromRGB(85, 85, 85),TabBackgroundSelected=Color3.fromRGB(210, 210, 210),TabTextColor=Color3.fromRGB(240, 240, 240),SelectedTabTextColor=Color3.fromRGB(50, 50, 50),SliderColor=Color3.fromRGB(0, 235, 255),ToggleEnabled=Color3.fromRGB(170, 0, 255),ToggleDisabled=Color3.fromRGB(139, 139, 139),CardButton=Color3.fromRGB(230, 230, 230),TweenInfo=TweenInfo.new(0.5, Enum.EasingStyle.Quint)}}};
local v5 = tostring(math.random(1, 100)) .. tostring(math.random(1, 50)) .. tostring(math.random(1, 100));
v4.DragFunc = function(v21, v22, v23)
	v23 = v23 or v22;
	local v24 = false;
	local v25, v26, v27;
	v22.InputBegan:Connect(function(v48)
		if ((v48.UserInputType == Enum.UserInputType.MouseButton1) or (v48.UserInputType == Enum.UserInputType.Touch)) then
			v24 = true;
			v26 = v48.Position;
			v27 = v23.Position;
			v48.Changed:Connect(function()
				if (v48.UserInputState == Enum.UserInputState.End) then
					v24 = false;
				end
			end);
		end
	end);
	v22.InputChanged:Connect(function(v49)
		if ((v49.UserInputType == Enum.UserInputType.MouseMovement) or (v49.UserInputType == Enum.UserInputType.Touch)) then
			v25 = v49;
		end
	end);
	game:GetService("UserInputService").InputChanged:Connect(function(v50)
		if ((v50 == v25) and v24) then
			local v117 = v50.Position - v26;
			v23.Position = UDim2.new(v27.X.Scale, v27.X.Offset + v117.X, v27.Y.Scale, v27.Y.Offset + v117.Y);
		end
	end);
end;
v4.ToggleUI = function(v28)
	if game.CoreGui["UI_Library"].Enabled then
		game.CoreGui["UI_Library"].Enabled = false;
	else
		game.CoreGui["UI_Library"].Enabled = true;
	end
end;
local v8 = game:GetService("TextService");
local v9 = game:GetService("UserInputService");
local v10 = game:GetService("TweenService");
local v11 = game:GetService("HttpService");
local v12 = game:GetService("RunService");
local v13 = game:GetService("Players");
local v14 = game:GetService("CoreGui");
local v15 = v13.LocalPlayer:GetMouse();
local v16 = game:GetObjects("rbxassetid://16487245098")[1];
v16.Enabled = false;
v16.DisplayOrder = 100;
if (get_hidden_gui or gethui) then
	v16.Parent = v14;
else
	v16.Parent = v14;
end
v4.Notify = function(v29, v30, v31)
	spawn(function()
		local v53 = v31.Duration or v1;
		local v54 = v16.Notifications[v30]:Clone();
		v54.Parent = v16.Notifications;
		v54.Name = v31.Title or "Unknown Title";
		v54.Parent = v16.Notifications;
		v54.Visible = true;
		v54.Actions.ButtonTemplate.Visible = false;
		if v31.Actions then
			for v243, v244 in pairs(v31.Actions) do
				local v245 = v54.Actions.ButtonTemplate:Clone();
				v245.Name = v244.Name;
				v245.Visible = true;
				v245.Parent = v54.Actions;
				v245.Text = v244.Name;
				v245.Size = UDim2.new(0, v245.TextBounds.X + 27, 1, 0);
				v245.MouseButton1Click:Connect(function()
					local v320, v321 = pcall(v244.Callback);
				end);
			end
		end
		v54.Title.Text = v31.Title or "Unknown";
		v54.Description.Text = v31.Content or "Unknown";
		if v31.Image then
			v54.Icon.Image = v31.Image;
		end
		while v53 >= 0 do
			v54.Duration.Text = v53;
			wait(1);
			v53 = v53 - 1;
		end
		v54:Destroy();
	end);
end;
v4.CreateLibrary = function(v32, v33, v34)
	local v35 = {Name=(((typeof(v33) == "table") and v33.Name) or ((typeof(v33) == "string") and v33) or "Undefined"),Icon=(((typeof(v33) == "table") and v33.Icon) or v34 or "rbxassetid://11432865001")};
	v16.Enabled = true;
	local v37 = v16.Main.SideBar;
	local v38 = v37.Buttons;
	local v39 = v16.Main.TabContainer;
	v37.NameText.Text = v35.Name;
	v37.NameText.RichText = true;
	v37.Icon.Image = v35.Icon;
	v4:DragFunc(v37, v16.Main);
	v38.Parent.Minimize.MouseButton1Click:Connect(function()
		if (v38.Parent.Minimize.Rotation == 0) then
			v10:Create(v38.Parent.Minimize, v4.Theme.Dark.TweenInfo, {Rotation=180}):Play();
			v10:Create(v38.Parent, v4.Theme.Dark.TweenInfo, {Size=UDim2.new(0, 147, 1, 0)}):Play();
			v10:Create(v39, v4.Theme.Dark.TweenInfo, {Size=UDim2.new(0, 349, 0, 326)}):Play();
			v10:Create(v39, v4.Theme.Dark.TweenInfo, {Position=UDim2.new(0.305, 0, 0.021, 0)}):Play();
		else
			v10:Create(v38.Parent.Minimize, v4.Theme.Dark.TweenInfo, {Rotation=0}):Play();
			v10:Create(v38.Parent, v4.Theme.Dark.TweenInfo, {Size=UDim2.new(0, 55, 1, 0)}):Play();
			v10:Create(v39, v4.Theme.Dark.TweenInfo, {Size=UDim2.new(0, 439, 0, 326)}):Play();
			v10:Create(v39, v4.Theme.Dark.TweenInfo, {Position=UDim2.new(0.13, 0, 0.021, 0)}):Play();
		end
	end);
	local v45 = {};
	v45.Notify = function(v62, v63, v64, v65, v66)
		spawn(function()
			v16.Main.Notifications.Visible = true;
			local v86 = ((typeof(v63) == "table") and v63.Duration) or v65 or v1;
			local v87 = v16.Main.Notifications.Template;
			v87.Parent = v16.Notifications;
			v87.Duration.Text = v86;
			v87.Parent = v16.Main.Notifications;
			v87.Visible = true;
			for v121, v122 in pairs(v87.Actions:GetChildren()) do
				if ((v122.Name ~= "ButtonTemplate") and not v122:IsA("UIListLayout")) then
					v122:Destroy();
				end
			end
			v87.Actions.ButtonTemplate.Visible = false;
			if (((typeof(v63) == "table") and v63.Actions) or v66) then
				for v322, v323 in pairs(((typeof(v63) == "table") and v63.Actions) or v66) do
					local v324 = v87.Actions.ButtonTemplate:Clone();
					v324.Name = v323.Name;
					v324.Visible = true;
					v324.Parent = v87.Actions;
					v324.Text = v323.Name;
					v324.Size = UDim2.new(0, v324.TextBounds.X + 27, 1, 0);
					v324.MouseButton1Click:Connect(function()
						local v357, v358 = pcall(v323.Callback);
					end);
				end
			end
			v87.Title.Text = ((typeof(v63) == "table") and v63.Title) or v63 or "Unknown";
			v87.Description.Text = ((typeof(v63) == "table") and v63.Content) or v64 or "Unknown";
			while v86 >= 0 do
				v87.Duration.Text = v86;
				wait(1);
				v86 = v86 - 1;
			end
			v16.Main.Notifications.Visible = false;
			for v124, v125 in pairs(v87.Actions:GetChildren()) do
				if ((v125.Name ~= "ButtonTemplate") and not v125:IsA("UIListLayout")) then
					v125:Destroy();
				end
			end
		end);
	end;
	v45.CreateTab = function(v67, v68, v69)
		if not v68 then
			return;
		end
		local v70 = v38.Template:Clone();
		v70.ImageLabel.Image = ((typeof(v68) == "table") and v68.Icon) or v69 or "rbxassetid://11432859220";
		v70.TextLabel.Text = ((typeof(v68) == "table") and v68.Title) or v68 or "Unknown";
		v70.Visible = true;
		v70.Parent = v38;
		local v75 = v39.Template:Clone();
		v75.Parent = v39;
		v75.Name = ((typeof(v68) == "table") and v68.Title) or v68 or "Unknown";
		v75.Visible = true;
		v75.LayoutOrder = #v39:GetChildren();
		for v96, v97 in ipairs(v75:GetChildren()) do
			if (v97.ClassName == "Frame") then
				v97:Destroy();
			end
		end
		v70.MouseButton1Click:Connect(function()
			for v126, v127 in ipairs(v39:GetChildren()) do
				if ((v127.Name ~= "Template") and (v127.ClassName == "Frame") and (v127 ~= v70)) then
				end
			end
			if (v39.UIPageLayout.CurrentPage ~= v75) then
				v39.UIPageLayout:JumpTo(v75);
			end
		end);
		local v80 = {};
		v80.CreateSection = function(v98, v99, v100)
			local v101 = {};
			local v102;
			if (v100 == "Normal") then
				v102 = v39.Template.SectionTitle:Clone();
				v102.Name = v99;
				v102.Title.Text = v99;
				v102.Visible = true;
				v102.Parent = v75;
			elseif (v100 == "Foldable") then
				v102 = v39.Template.FoldableSectionTitle:Clone();
				v102.Name = v99;
				v102.Title.Text = v99;
				v102.Visible = true;
				v102.Parent = v75;
			end
			v102.Title.TextTransparency = 1;
			v10:Create(v102.Title, TweenInfo.new(0.7, Enum.EasingStyle.Quint), {TextTransparency=0}):Play();
			v101.SetName = function(v128, v129)
				v102.Title.Text = v129;
			end;
			local function v105()
				local v131 = v102.UIListLayout.AbsoluteContentSize;
				v102.Size = UDim2.new(1, 0, 0, v131.Y);
			end
			if (v100 == "Foldable") then
				local v257 = true;
				v102.Title.TextButton.MouseButton1Click:Connect(function()
					if v257 then
						v257 = false;
						for v435, v436 in ipairs(v102:GetChildren()) do
							if ((v436.Name ~= "UIListLayout") and (v436.Name ~= "UIPadding") and not v436:IsA("TextLabel")) then
								v436.Visible = false;
							end
						end
					else
						v257 = true;
						for v437, v438 in ipairs(v102:GetChildren()) do
							if ((v438.Name ~= "UIListLayout") and (v438.Name ~= "UIPadding") and not v438:IsA("TextLabel")) then
								v438.Visible = true;
							end
						end
					end
					v105();
				end);
			end
			v101.CreateButton = function(v133, v134)
				local v135 = {Func=v134.Callback};
				local v136 = v39.Template.Button:Clone();
				v136.Name = v134.Name or "Undefined";
				v136.Title.Text = v134.Name or "Undefined";
				v136.Visible = true;
				v136.Parent = v102;
				v105();
				v136.Interact.MouseButton1Click:Connect(function()
					local v258, v259 = pcall(v135.Func);
					if not v258 then
						local v363 = v136.Size;
						v10:Create(v136, v4.Theme.Dark.TweenInfo, {Size=UDim2.new(0.992, -10, 0, 35)}):Play();
						v10:Create(v136, v4.Theme.Dark.TweenInfo, {BackgroundColor3=Color3.fromRGB(103, 0, 0)}):Play();
						v136.Title.Text = "Error occurred";
						print("[AuraIS]: An error occurred: " .. tostring(v259));
						wait(0.5);
						v136.Title.Text = v134.Name;
						v10:Create(v136, v4.Theme.Dark.TweenInfo, {Size=v363}):Play();
						v10:Create(v136, v4.Theme.Dark.TweenInfo, {BackgroundColor3=v4.Theme.Dark.SecondaryColor}):Play();
					else
						local v366 = v136.Size;
						v10:Create(v136, v4.Theme.Dark.TweenInfo, {Size=UDim2.new(0.992, -10, 0, 35)}):Play();
						wait(0.2);
						v10:Create(v136, v4.Theme.Dark.TweenInfo, {Size=v366}):Play();
					end
				end);
				v135.SetCallback = function(v260, v261)
					v135.Func = v261;
				end;
				v135.SetName = function(v263, v264)
					v136.Title.Text = v264;
					v136.Name = v264;
				end;
				return v135;
			end;
			v101.CreateToggle = function(v143, v144, v145)
				if (v144 == "Radio") then
					local v332 = {};
					local v333 = v39.Template.Toggle_Radio:Clone();
					local v334 = v333.Interact;
					local v335 = v333.Switch;
					local v336 = v335.Indicator;
					v336.BackgroundTransparency = 1;
					v336.BackgroundColor3 = Color3.fromRGB(170, 0, 255);
					v333.Name = v145.Name;
					v333.Title.Text = v145.Name;
					v333.Visible = true;
					v333.Parent = v102;
					v105();
					v333.Interact.MouseButton1Click:Connect(function()
						if v145.CurrentValue then
							v145.CurrentValue = false;
							v10:Create(v336, v4.Theme.Dark.TweenInfo, {BackgroundTransparency=1}):Play();
						else
							v145.CurrentValue = true;
							v10:Create(v336, v4.Theme.Dark.TweenInfo, {BackgroundTransparency=0}):Play();
						end
						local v367, v368 = pcall(function()
							v145.Callback(v145.CurrentValue);
						end);
						if not v367 then
							v10:Create(v333, v4.Theme.Dark.TweenInfo, {BackgroundColor3=Color3.fromRGB(103, 0, 0)}):Play();
							v333.Title.Text = "Error occurred";
							print("[AuraIS]: An error occurred: " .. tostring(v368));
							wait(0.5);
							v333.Title.Text = v145.Name;
							v10:Create(v333, v4.Theme.Dark.TweenInfo, {BackgroundColor3=v4.Theme.Dark.SecondaryColor}):Play();
						end
					end);
					return v145;
				elseif (v144 == "Normal") then
					local v400 = {};
					local v401 = v39.Template.Toggle:Clone();
					local v402 = v401.Interact;
					local v403 = v401.Switch;
					local v404 = v403.Indicator;
					v401.Name = v145.Name;
					v401.Title.Text = v145.Name;
					v401.Visible = true;
					v401.Parent = v102;
					v105();
					v401.Interact.MouseButton1Click:Connect(function()
						if v145.CurrentValue then
							v145.CurrentValue = false;
							v10:Create(v404, v4.Theme.Dark.TweenInfo, {BackgroundColor3=Color3.fromRGB(139, 139, 139)}):Play();
							v10:Create(v404, v4.Theme.Dark.TweenInfo, {Position=UDim2.new(0.07, 0, 0.5, 0)}):Play();
						else
							v145.CurrentValue = true;
							v10:Create(v404, v4.Theme.Dark.TweenInfo, {BackgroundColor3=Color3.fromRGB(170, 0, 255)}):Play();
							v10:Create(v404, v4.Theme.Dark.TweenInfo, {Position=UDim2.new(0.537, 0, 0.5, 0)}):Play();
						end
						local v443, v444 = pcall(function()
							v145.Callback(v145.CurrentValue);
						end);
						if not v443 then
							v10:Create(v401, v4.Theme.Dark.TweenInfo, {BackgroundColor3=Color3.fromRGB(103, 0, 0)}):Play();
							v401.Title.Text = "Error occurred";
							print("[AuraIS]: An error occurred: " .. tostring(v444));
							wait(0.5);
							v401.Title.Text = v145.Name;
							v10:Create(v401, v4.Theme.Dark.TweenInfo, {BackgroundColor3=v4.Theme.Dark.SecondaryColor}):Play();
						end
					end);
					v401.MouseEnter:Connect(function()
						v10:Create(v401, v4.Theme.Dark.TweenInfo, {BackgroundColor3=Color3.fromRGB(40, 40, 40)}):Play();
						v10:Create(v401, v4.Theme.Dark.TweenInfo, {Size=UDim2.new(1.011, -10, 0, 40)}):Play();
					end);
					v401.MouseLeave:Connect(function()
						v10:Create(v401, v4.Theme.Dark.TweenInfo, {BackgroundColor3=Color3.fromRGB(22, 22, 22)}):Play();
						v10:Create(v401, v4.Theme.Dark.TweenInfo, {Size=UDim2.new(1, -10, 0, 40)}):Play();
					end);
					return v145;
				end
			end;
			v101.CreateColorPicker = function(v146, v147)
				local v148 = v39.Template.ColorPicker:Clone();
				local v149 = v148.Switch;
				local v150 = v148['RGB'];
				local v151 = v148.Color;
				local v152 = v151.SliderPoint;
				local v153 = v148.Darkness;
				local v154 = v153.SliderPoint;
				v148.Name = v147.Name;
				v148.Title.Text = v147.Name;
				v148.Visible = true;
				v148.Parent = v102;
				local v160 = {1,1,1};
				local v161 = false;
				local v162 = false;
				local v163;
				local v164 = v147.Callback;
				v105();
				local function v165(v267)
					return math.acos(math.cos(v267 * math.pi)) / math.pi;
				end
				counter = 0;
				local function v166()
					return game.Players.LocalPlayer:GetMouse();
				end
				local function v167()
					if v161 then
						local v369 = math.clamp(v15.X - v151.AbsolutePosition.X, 0, v151.AbsoluteSize.X);
						local v370 = math.clamp(v15.Y - v151.AbsolutePosition.Y, 0, v151.AbsoluteSize.Y);
						local v371 = math.floor(v151.AbsoluteSize.X);
						local v372 = math.floor(v151.AbsoluteSize.Y);
						if (v369 < 0) then
							v369 = 0;
						end
						if (v369 > v371) then
							v369 = v371;
						end
						if (v370 < 0) then
							v370 = 0;
						end
						if (v370 > v372) then
							v370 = v372;
						end
						v369 = v369 / v371;
						v370 = v370 / v372;
						local v373 = v152.AbsoluteSize.X / 2;
						local v374 = v152.AbsoluteSize.Y / 2;
						v152.Position = UDim2.new(math.min(v369, 1 - (v373 / v371)), 0, math.min(v370, 1 - (v374 / v372)), 0);
						v160 = {(1 - v369),(1 - v370),v160[3]};
						local v376 = Color3.fromHSV(v160[1], v160[2], v160[3]);
						v164(v376);
					end
					if v162 then
						local v377 = v166();
						local v378 = v377.Y - v153.AbsolutePosition.Y;
						local v379 = math.floor(v151.AbsoluteSize.Y) - 1;
						if (v378 < 0) then
							v378 = 0;
						end
						if (v378 > v379) then
							v378 = v379;
						end
						v378 = v378 / v379;
						local v380 = v154.AbsoluteSize.Y / 2;
						v154.Position = UDim2.new(0.5, 0, math.min(v378, 1 - (v380 / v379)), 0);
						v154.ImageColor3 = Color3.fromHSV(0, 0, v378);
						v160 = {v160[1],v160[2],(1 - v378)};
						local v383 = Color3.fromHSV(v160[1], v160[2], v160[3]);
						v164(v383);
					end
				end
				local function v168(v268)
					local v269 = v152.AbsoluteSize.X / 2;
					local v270 = v152.AbsoluteSize.Y / 2;
					v160 = {v268[1],v268[2],v268[3]};
					v152.Position = UDim2.new(v160[1], -v269, v160[2] - 1, -v270);
					v154.Position = UDim2.new(0.5, 0, v160[3] - 1, -v270);
					local v273 = Color3.fromHSV(v160[1], v160[2], v160[3]);
				end
				local function v169(v274)
					local v275 = math.floor(v151.AbsoluteSize.X);
					local v276 = math.floor(v151.AbsoluteSize.Y);
					local v277 = v152.AbsoluteSize.X / 2;
					local v278 = v152.AbsoluteSize.Y / 2;
					v160 = {v274[1],v274[2],v160[3]};
					v152.Position = UDim2.new(math.min(v160[1], 1 - (v277 / v276)), 0, math.min(v160[2] - 1, 1 - (v278 / v276)));
					local v280 = Color3.fromHSV(v160[1], v160[2], v160[3]);
					v164(v280);
				end
				local function v170()
					if rainbow then
						v10:Create(v149.Indicator, v4.Theme.Dark.TweenInfo, {BackgroundTransparency=1}):Play();
						rainbow = false;
						v163:Disconnect();
					else
						v10:Create(v149.Indicator, v4.Theme.Dark.TweenInfo, {BackgroundTransparency=0}):Play();
						rainbow = true;
						v163 = game:GetService("RunService").RenderStepped:Connect(function()
							v169({v165(counter),1,1});
							counter = counter + 0.01;
						end);
					end
				end
				v149:FindFirstChildWhichIsA("TextButton").MouseButton1Click:Connect(v170);
				game.Players.LocalPlayer:GetMouse().Move:connect(v167);
				v151.MouseButton1Down:connect(function()
					v161 = true;
				end);
				v153.MouseButton1Down:connect(function()
					v162 = true;
				end);
				v9.InputEnded:Connect(function(v281)
					if ((v281.UserInputType == Enum.UserInputType.MouseButton1) or (v281.UserInputType == Enum.UserInputType.Touch)) then
						if v162 then
							v162 = false;
						end
						if v161 then
							v161 = false;
						end
					end
				end);
				return v147;
			end;
			v101.CreateSlider = function(v171, v172)
				local v173 = false;
				local v174 = v39.Template.Slider:Clone();
				v174.Name = v172.Name;
				v174.Title.Text = v172.Name;
				v174.Title.TextScaled = false;
				v174.Visible = true;
				v174.SizeConstraint = "RelativeXX";
				v174.Parent = v102;
				v105();
				v174.Main.Progress.Size = UDim2.new(0, ((((v174.Main.AbsoluteSize.X * (v172.CurrentValue + v172.Value[1])) / (v172.Value[2] - v172.Value[1])) > 5) and ((v174.Main.AbsoluteSize.X * v172.CurrentValue) / (v172.Value[2] - v172.Value[1]))) or 5, 1, 0);
				if not v172.Suffix then
					v174.Main.Information.Text = tostring(v172.CurrentValue);
				else
					v174.Main.Information.Text = tostring(v172.CurrentValue) .. " " .. v172.Suffix;
				end
				v174.Main.Interact.InputBegan:Connect(function(v282)
					if ((v282.UserInputType == Enum.UserInputType.MouseButton1) or (v282.UserInputType == Enum.UserInputType.Touch)) then
						v173 = true;
					end
				end);
				v174.Main.Interact.InputEnded:Connect(function(v283)
					if ((v283.UserInputType == Enum.UserInputType.MouseButton1) or (v283.UserInputType == Enum.UserInputType.Touch)) then
						v173 = false;
					end
				end);
				v174.Main.Interact.MouseButton1Down:Connect(function(v284)
					local v285 = v174.Main.Progress.AbsolutePosition.X + v174.Main.Progress.AbsoluteSize.X;
					local v286 = v285;
					local v287 = v284;
					local v288;
					v288 = v12.Stepped:Connect(function()
						if v173 then
							v287 = v9:GetMouseLocation().X;
							v285 = v287;
							if (v287 < v174.Main.AbsolutePosition.X) then
								v287 = v174.Main.AbsolutePosition.X;
							elseif (v287 > (v174.Main.AbsolutePosition.X + v174.Main.AbsoluteSize.X)) then
								v287 = v174.Main.AbsolutePosition.X + v174.Main.AbsoluteSize.X;
							end
							if (v285 < (v174.Main.AbsolutePosition.X + 5)) then
								v285 = v174.Main.AbsolutePosition.X + 5;
							elseif (v285 > (v174.Main.AbsolutePosition.X + v174.Main.AbsoluteSize.X)) then
								v285 = v174.Main.AbsolutePosition.X + v174.Main.AbsoluteSize.X;
							end
							if ((v285 <= v287) and ((v287 - v286) < 0)) then
								v286 = v287;
							elseif ((v285 >= v287) and ((v287 - v286) > 0)) then
								v286 = v287;
							end
							v174.Main.Progress.Size = UDim2.new(0, v285 - v174.Main.AbsolutePosition.X, 1, 0);
							local v412 = v172.Value[1] + (((v287 - v174.Main.AbsolutePosition.X) / v174.Main.AbsoluteSize.X) * (v172.Value[2] - v172.Value[1]));
							v412 = (math.floor((v412 / v172.Increment) + 0.5) * v172.Increment * 10000000) / 10000000;
							if not v172.Suffix then
								v174.Main.Information.Text = tostring(v412);
							else
								v174.Main.Information.Text = tostring(v412) .. " " .. v172.Suffix;
							end
							if (v172.CurrentValue ~= v412) then
								local v458, v459 = pcall(function()
									v172.Callback(v412);
								end);
								v172.CurrentValue = v412;
							end
						else
							v174.Main.Progress.Size = UDim2.new(0, (((v287 - v174.Main.AbsolutePosition.X) > 5) and (v287 - v174.Main.AbsolutePosition.X)) or 5, 1, 0);
							v288:Disconnect();
						end
					end);
				end);
				v172.Set = function(v289, v290)
					v174.Main.Progress.Size = UDim2.new(0, ((((v174.Main.AbsoluteSize.X * (v290 + v172.Value[1])) / (v172.Value[2] - v172.Value[1])) > 5) and ((v174.Main.AbsoluteSize.X * v290) / (v172.Value[2] - v172.Value[1]))) or 5, 1, 0);
					v174.Main.Information.Text = tostring(v290) .. " " .. v172.Suffix;
					local v293, v294 = pcall(function()
						v172.Callback(v290);
					end);
					v172.CurrentValue = v290;
				end;
				return v172;
			end;
			v101.CreateDropdown = function(v184, v185)
				local v186 = v39.Template.Dropdown:Clone();
				if string.find(v185.Name, "closed") then
					v186.Name = "Dropdown";
				else
					v186.Name = v185.Name;
				end
				v186.Title.Text = v185.Name;
				v186.Visible = true;
				v186.Parent = v102;
				v186.Size = UDim2.new(1, -10, 0, 45);
				v186.Interact.Size = UDim2.new(0, 429, 0, 45);
				v186.Interact.Position = UDim2.new(0, 214, 0, 22);
				v186.List.Visible = false;
				if (typeof(v185.CurrentOption) == "string") then
					v185.CurrentOption = {v185.CurrentOption};
				end
				if not v185.MultipleOptions then
					v185.CurrentOption = {v185.CurrentOption[1]};
				end
				if v185.MultipleOptions then
					if (#v185.CurrentOption == 1) then
						v186.Selected.Text = v185.CurrentOption[1];
					elseif (#v185.CurrentOption == 0) then
						v186.Selected.Text = "None";
					else
						v186.Selected.Text = "Various";
					end
				else
					v186.Selected.Text = v185.CurrentOption[1];
				end
				v186.BackgroundTransparency = 1;
				v186.UIStroke.Transparency = 1;
				v186.Title.TextTransparency = 1;
				v186.Size = UDim2.new(1, -10, 0, 45);
				v105();
				v10:Create(v186, TweenInfo.new(0.7, Enum.EasingStyle.Quint), {BackgroundTransparency=0}):Play();
				v10:Create(v186.UIStroke, TweenInfo.new(0.7, Enum.EasingStyle.Quint), {Transparency=0}):Play();
				v10:Create(v186.Title, TweenInfo.new(0.7, Enum.EasingStyle.Quint), {TextTransparency=0}):Play();
				for v296, v297 in ipairs(v186.List:GetChildren()) do
					if ((v297.ClassName == "Frame") and (v297.Name ~= "Placeholder")) then
						v297:Destroy();
					end
				end
				v186.Toggle.Rotation = 180;
				v186.Interact.MouseButton1Click:Connect(function()
					v10:Create(v186.UIStroke, TweenInfo.new(0.4, Enum.EasingStyle.Quint), {Transparency=1}):Play();
					wait(0.1);
					v10:Create(v186.UIStroke, TweenInfo.new(0.4, Enum.EasingStyle.Quint), {Transparency=0}):Play();
					if Debounce then
						return;
					end
					if v186.List.Visible then
						Debounce = true;
						local v384 = v10:Create(v186, TweenInfo.new(0.5, Enum.EasingStyle.Quint), {Size=UDim2.new(1, -10, 0, 45)});
						local v385 = pcall(function()
							v384:Play();
						end);
						local v386 = false;
						if v385 then
							v386 = true;
						end
						spawn(function()
							while v386 do
								v105();
								wait();
							end
						end);
						v384.Completed:Connect(function()
							v386 = false;
						end);
						for v416, v417 in ipairs(v186.List:GetChildren()) do
							if ((v417.ClassName == "Frame") and (v417.Name ~= "Placeholder")) then
								v10:Create(v417, TweenInfo.new(0.3, Enum.EasingStyle.Quint), {BackgroundTransparency=1}):Play();
								v10:Create(v417.UIStroke, TweenInfo.new(0.3, Enum.EasingStyle.Quint), {Transparency=1}):Play();
								v10:Create(v417.Title, TweenInfo.new(0.3, Enum.EasingStyle.Quint), {TextTransparency=1}):Play();
							end
						end
						v10:Create(v186.List, TweenInfo.new(0.3, Enum.EasingStyle.Quint), {ScrollBarImageTransparency=1}):Play();
						v10:Create(v186.Toggle, TweenInfo.new(0.7, Enum.EasingStyle.Quint), {Rotation=180}):Play();
						wait(0.35);
						v186.List.Visible = false;
						Debounce = false;
					else
						local v388 = v10:Create(v186, TweenInfo.new(0.5, Enum.EasingStyle.Quint), {Size=UDim2.new(1, -10, 0, 180)});
						local v389 = pcall(function()
							v388:Play();
						end);
						local v390 = false;
						if v389 then
							v390 = true;
						end
						spawn(function()
							while v390 do
								v105();
								wait();
							end
						end);
						v388.Completed:Connect(function()
							v390 = false;
						end);
						v186.List.Visible = true;
						v10:Create(v186.List, TweenInfo.new(0.3, Enum.EasingStyle.Quint), {ScrollBarImageTransparency=0.7}):Play();
						v10:Create(v186.Toggle, TweenInfo.new(0.7, Enum.EasingStyle.Quint), {Rotation=0}):Play();
						for v418, v419 in ipairs(v186.List:GetChildren()) do
							if ((v419.ClassName == "Frame") and (v419.Name ~= "Placeholder")) then
								v10:Create(v419, TweenInfo.new(0.3, Enum.EasingStyle.Quint), {BackgroundTransparency=0}):Play();
								v10:Create(v419.UIStroke, TweenInfo.new(0.3, Enum.EasingStyle.Quint), {Transparency=0}):Play();
								v10:Create(v419.Title, TweenInfo.new(0.3, Enum.EasingStyle.Quint), {TextTransparency=0}):Play();
							end
						end
					end
				end);
				for v298, v299 in ipairs(v185.Options) do
					local v300 = v39.Template.Dropdown.List.Template:Clone();
					v300.Name = v299;
					v300.Title.Text = v299;
					v300.Parent = v186.List;
					v300.Visible = true;
					if (v185.CurrentOption == v299) then
						v300.BackgroundColor3 = Color3.fromRGB(40, 40, 40);
					end
					v300.MouseEnter:Connect(function()
						v10:Create(v300, v4.Theme.Dark.TweenInfo, {BackgroundColor3=Color3.fromRGB(40, 40, 40)}):Play();
						v10:Create(v300, v4.Theme.Dark.TweenInfo, {Size=UDim2.new(0.921, 0, 0, 38)}):Play();
					end);
					v300.MouseLeave:Connect(function()
						v10:Create(v300, v4.Theme.Dark.TweenInfo, {BackgroundColor3=Color3.fromRGB(30, 30, 30)}):Play();
						v10:Create(v300, v4.Theme.Dark.TweenInfo, {Size=UDim2.new(0.921, 0, 0, 38)}):Play();
					end);
					v300.Interact.ZIndex = 50;
					v300.Interact.MouseButton1Click:Connect(function()
						if (not v185.MultipleOptions and table.find(v185.CurrentOption, v299)) then
							return;
						end
						if table.find(v185.CurrentOption, v299) then
							table.remove(v185.CurrentOption, table.find(v185.CurrentOption, v299));
							if v185.MultipleOptions then
								if (#v185.CurrentOption == 1) then
									v186.Selected.Text = v185.CurrentOption[1];
								elseif (#v185.CurrentOption == 0) then
									v186.Selected.Text = "None";
								else
									v186.Selected.Text = "Various";
								end
							else
								v186.Selected.Text = v185.CurrentOption[1];
							end
						else
							if not v185.MultipleOptions then
								table.clear(v185.CurrentOption);
							end
							table.insert(v185.CurrentOption, v299);
							if v185.MultipleOptions then
								if (#v185.CurrentOption == 1) then
									v186.Selected.Text = v185.CurrentOption[1];
								elseif (#v185.CurrentOption == 0) then
									v186.Selected.Text = "None";
								else
									v186.Selected.Text = "Various";
								end
							else
								v186.Selected.Text = v185.CurrentOption[1];
							end
							local v420 = v300.Size;
							v10:Create(v300, v4.Theme.Dark.TweenInfo, {Size=UDim2.new(0.875, 0, 0, 38)}):Play();
							v10:Create(v300, TweenInfo.new(0.3, Enum.EasingStyle.Quint), {BackgroundColor3=Color3.fromRGB(40, 40, 40)}):Play();
							Debounce = true;
							wait(0.2);
							v10:Create(v300, v4.Theme.Dark.TweenInfo, {Size=v420}):Play();
						end
						local v353, v354 = pcall(function()
							v185.Callback(((v185.MultipleOptions == false) and v185.CurrentOption[1]) or v185.CurrentOption);
						end);
						for v393, v394 in ipairs(v186.List:GetChildren()) do
							if ((v394.ClassName == "Frame") and (v394.Name ~= "Placeholder") and not table.find(v185.CurrentOption, v394.Name)) then
								v10:Create(v394, TweenInfo.new(0.3, Enum.EasingStyle.Quint), {BackgroundColor3=Color3.fromRGB(30, 30, 30)}):Play();
							end
						end
						if not v185.MultipleOptions then
							wait(0.1);
							local v421 = v10:Create(v186, TweenInfo.new(0.5, Enum.EasingStyle.Quint), {Size=UDim2.new(1, -10, 0, 45)});
							local v422 = pcall(function()
								v421:Play();
							end);
							local v423 = false;
							if v422 then
								v423 = true;
							end
							spawn(function()
								while v423 do
									v105();
									wait();
								end
							end);
							v421.Completed:Connect(function()
								v423 = false;
							end);
							for v445, v446 in ipairs(v186.List:GetChildren()) do
								if ((v446.ClassName == "Frame") and (v446.Name ~= "Placeholder")) then
									v10:Create(v446, TweenInfo.new(0.3, Enum.EasingStyle.Quint), {BackgroundTransparency=1}):Play();
									v10:Create(v446.UIStroke, TweenInfo.new(0.3, Enum.EasingStyle.Quint), {Transparency=1}):Play();
									v10:Create(v446.Title, TweenInfo.new(0.3, Enum.EasingStyle.Quint), {TextTransparency=1}):Play();
								end
							end
							v10:Create(v186.List, TweenInfo.new(0.3, Enum.EasingStyle.Quint), {ScrollBarImageTransparency=1}):Play();
							v10:Create(v186.Toggle, TweenInfo.new(0.7, Enum.EasingStyle.Quint), {Rotation=180}):Play();
							wait(0.35);
							v186.List.Visible = false;
						end
						Debounce = false;
					end);
				end
				for v307, v308 in ipairs(v186.List:GetChildren()) do
					if ((v308.ClassName == "Frame") and (v308.Name ~= "Placeholder")) then
						if not table.find(v185.CurrentOption, v308.Name) then
							v308.BackgroundColor3 = Color3.fromRGB(30, 30, 30);
						else
							v308.BackgroundColor3 = Color3.fromRGB(40, 40, 40);
						end
					end
				end
				v185.Set = function(v309, v310)
					v185.CurrentOption = v310;
					if (typeof(v185.CurrentOption) == "string") then
						v185.CurrentOption = {v185.CurrentOption};
					end
					if not v185.MultipleOptions then
						v185.CurrentOption = {v185.CurrentOption[1]};
					end
					if v185.MultipleOptions then
						if (#v185.CurrentOption == 1) then
							v186.Selected.Text = v185.CurrentOption[1];
						elseif (#v185.CurrentOption == 0) then
							v186.Selected.Text = "None";
						else
							v186.Selected.Text = "Various";
						end
					else
						v186.Selected.Text = v185.CurrentOption[1];
					end
					local v312, v313 = pcall(function()
						v185.Callback(v310);
					end);
					for v355, v356 in ipairs(v186.List:GetChildren()) do
						if ((v356.ClassName == "Frame") and (v356.Name ~= "Placeholder")) then
							if not table.find(v185.CurrentOption, v356.Name) then
								v356.BackgroundColor3 = Color3.fromRGB(30, 30, 30);
							else
								v356.BackgroundColor3 = Color3.fromRGB(40, 40, 40);
							end
						end
					end
				end;
				return v185;
			end;
			v101.CreateTextbox = function(v200, v201)
				local v202 = v39.Template.Input:Clone();
				v202.Name = v201.Name;
				v202.Title.Text = v201.Name;
				v202.Visible = true;
				v202.Parent = v102;
				v105();
				v202.InputFrame.InputBox.PlaceholderText = v201.PlaceholderText;
				v202.InputFrame.Size = UDim2.new(0, v202.InputFrame.InputBox.TextBounds.X + 24, 0, 30);
				v202.InputFrame.InputBox.FocusLost:Connect(function()
					local v314, v315 = pcall(function()
						v201.Callback(v202.InputFrame.InputBox.Text);
					end);
					if v201.RemoveTextAfterFocusLost then
						v202.InputFrame.InputBox.Text = "";
					end
					v202.InputFrame.Size = UDim2.new(0, v202.InputFrame.InputBox.TextBounds.X + 24, 0, 30);
				end);
				v202.InputFrame.InputBox:GetPropertyChangedSignal("Text"):Connect(function()
					v10:Create(v202.InputFrame, TweenInfo.new(0.55, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), {Size=UDim2.new(0, v202.InputFrame.InputBox.TextBounds.X + 24, 0, 30)}):Play();
				end);
				local v201 = {};
				v201.Set = function(v317, v318)
					v202.InputFrame.InputBox.Text = v318;
				end;
				return v201;
			end;
			v101.CreateParagraph = function(v212, v213)
				local v214 = v39.Template.Paragraph:Clone();
				v214.Name = v213.Title;
				v214.Title.Text = v213.Title;
				v214.Content.Text = v213.Description;
				v214.Visible = true;
				v214.Parent = v102;
				v105();
			end;
			v101.CreateLabel = function(v222, v223)
				local v224 = v39.Template.Label:Clone();
				v224.Name = v223.Description;
				v224.Title.Text = v223.Description;
				v224.Visible = true;
				v224.Parent = v102;
				v105();
			end;
            v101.InitiateExecutor = function()
                local fun = v39.Template.Executor:Clone()
                fun.Name = "Executor"
                fun.Parent = v102
                local monaco = loadstring(game:HttpGet("https://github.com/AnAvaragelilmemer/saturn/blob/main/assets/initiateexecutor.lua?raw=true"))()
                monaco = monaco.new(fun,20)
            end
			v101.CreateCard = function(v230, v231)
				local v232 = v39.Template.Card:Clone();
				v232.Name = v231.Title;
				v232.Title.Text = v231.Title;
				v232.Description.Text = v231.Description;
				v232.State.Text = v231.SecondaryTitle or "";
				v232.PreviewImage.Image = v231.Image or "rbxassetid://14167800463";
				v232.Parent = v102;
				v105();
				v232.Button1.Visible = false;
				v232.Button2.Visible = false;
				if v231.Buttons then
					if v231.Buttons.Button1 then
						local v425 = v232.Button1;
						v425.Visible = true;
						v425.Name = v231.Buttons.Button1.Name;
						v425.Text = v231.Buttons.Button1.Name;
						v425.MouseButton1Click:Connect(function()
							local v451, v452 = pcall(v231.Buttons.Button1.Callback);
						end);
					end
					if v231.Buttons.Button2 then
						local v430 = v232.Button2;
						v430.Visible = true;
						v430.Name = v231.Buttons.Button2.Name;
						v430.Text = v231.Buttons.Button2.Name;
						v430.MouseButton1Click:Connect(function()
							local v453, v454 = pcall(v231.Buttons.Button2.Callback);
						end);
					end
				end
			end;
			return v101;
		end;
		return v80;
	end;
	return v45;
end;
return v4;
