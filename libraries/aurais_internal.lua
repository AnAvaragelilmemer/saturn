--[=[
 d888b  db    db d888888b      .d888b.      db      db    db  .d8b.  
88' Y8b 88    88   `88'        VP  `8D      88      88    88 d8' `8b 
88      88    88    88            odD'      88      88    88 88ooo88 
88  ooo 88    88    88          .88'        88      88    88 88~~~88 
88. ~8~ 88b  d88   .88.        j88.         88booo. 88b  d88 88   88 
 Y888P  ~Y8888P' Y888888P      888888D      Y88888P ~Y8888P' YP   YP  CONVERTER
]=]

-- Instances: 259 | Scripts: 1 | Modules: 0
local G2L = {};

-- Workspace.UI_Library
G2L["1"] = Instance.new("ScreenGui", game.CoreGui);
G2L["1"]["Name"] = [[UI_Library]];
G2L["1"]["ZIndexBehavior"] = Enum.ZIndexBehavior.Sibling;
G2L["1"]["Enabled"] = false 
-- Workspace.UI_Library.Main
G2L["2"] = Instance.new("Frame", G2L["1"]);
G2L["2"]["BorderSizePixel"] = 0;
G2L["2"]["BackgroundColor3"] = Color3.fromRGB(17, 17, 17);
G2L["2"]["Size"] = UDim2.new(0, 514, 0, 339);
G2L["2"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["2"]["Position"] = UDim2.new(0.338828444480896, 0, 0.29012346267700195, 0);
G2L["2"]["Name"] = [[Main]];

-- Workspace.UI_Library.Main.UICorner
G2L["3"] = Instance.new("UICorner", G2L["2"]);


-- Workspace.UI_Library.Main.SideBar
G2L["4"] = Instance.new("Frame", G2L["2"]);
G2L["4"]["BorderSizePixel"] = 0;
G2L["4"]["BackgroundColor3"] = Color3.fromRGB(23, 23, 23);
G2L["4"]["Size"] = UDim2.new(0, 55, 1, 0);
G2L["4"]["ClipsDescendants"] = true;
G2L["4"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["4"]["Position"] = UDim2.new(-1.187454401474497e-07, 0, 0, 0);
G2L["4"]["Name"] = [[SideBar]];

-- Workspace.UI_Library.Main.SideBar.UICorner
G2L["5"] = Instance.new("UICorner", G2L["4"]);


-- Workspace.UI_Library.Main.SideBar.UICornerOverlay
G2L["6"] = Instance.new("Frame", G2L["4"]);
G2L["6"]["BorderSizePixel"] = 0;
G2L["6"]["BackgroundColor3"] = Color3.fromRGB(23, 23, 23);
G2L["6"]["Size"] = UDim2.new(0.5, 0, 1, 0);
G2L["6"]["BorderColor3"] = Color3.fromRGB(28, 43, 54);
G2L["6"]["Position"] = UDim2.new(0.5, 0, 0, 0);
G2L["6"]["Name"] = [[UICornerOverlay]];

-- Workspace.UI_Library.Main.SideBar.Icon
G2L["7"] = Instance.new("ImageLabel", G2L["4"]);
G2L["7"]["BorderSizePixel"] = 0;
G2L["7"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["7"]["Image"] = [[rbxassetid://12974454446]];
G2L["7"]["Size"] = UDim2.new(0, 30, 0, 30);
G2L["7"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["7"]["Name"] = [[Icon]];
G2L["7"]["BackgroundTransparency"] = 1;
G2L["7"]["Position"] = UDim2.new(0, 12, 0, 13);

-- Workspace.UI_Library.Main.SideBar.Minimize
G2L["8"] = Instance.new("TextButton", G2L["4"]);
G2L["8"]["Active"] = false;
G2L["8"]["BorderSizePixel"] = 0;
G2L["8"]["TextTransparency"] = 1;
G2L["8"]["BackgroundColor3"] = Color3.fromRGB(23, 23, 23);
G2L["8"]["Selectable"] = false;
G2L["8"]["AnchorPoint"] = Vector2.new(0.5, 1);
G2L["8"]["Size"] = UDim2.new(0, 30, 0, 30);
G2L["8"]["Name"] = [[Minimize]];
G2L["8"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["8"]["Position"] = UDim2.new(0, 27, 0, 326);

-- Workspace.UI_Library.Main.SideBar.Minimize.ImageLabel
G2L["9"] = Instance.new("ImageLabel", G2L["8"]);
G2L["9"]["BorderSizePixel"] = 0;
G2L["9"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["9"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["9"]["Image"] = [[rbxassetid://11419703997]];
G2L["9"]["Size"] = UDim2.new(0.6666666865348816, 0, 0.6666666865348816, 0);
G2L["9"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["9"]["BackgroundTransparency"] = 1;
G2L["9"]["Position"] = UDim2.new(0, 15, 0, 15);

-- Workspace.UI_Library.Main.SideBar.Minimize.UICorner
G2L["a"] = Instance.new("UICorner", G2L["8"]);
G2L["a"]["CornerRadius"] = UDim.new(0, 5);

-- Workspace.UI_Library.Main.SideBar.Buttons
G2L["b"] = Instance.new("ScrollingFrame", G2L["4"]);
G2L["b"]["BorderSizePixel"] = 0;
G2L["b"]["CanvasSize"] = UDim2.new(0, 0, 0, 0);
G2L["b"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["b"]["AutomaticCanvasSize"] = Enum.AutomaticSize.Y;
G2L["b"]["BackgroundTransparency"] = 1;
G2L["b"]["Size"] = UDim2.new(1, 0, 0, 216);
G2L["b"]["Selectable"] = false;
G2L["b"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["b"]["ScrollBarThickness"] = 0;
G2L["b"]["Position"] = UDim2.new(0.0000010899135531872162, 0, 0.1828908622264862, 0);
G2L["b"]["Name"] = [[Buttons]];

-- Workspace.UI_Library.Main.SideBar.Buttons.UIListLayout
G2L["c"] = Instance.new("UIListLayout", G2L["b"]);
G2L["c"]["Padding"] = UDim.new(0, 15);
G2L["c"]["SortOrder"] = Enum.SortOrder.LayoutOrder;

-- Workspace.UI_Library.Main.SideBar.Buttons.UIPadding
G2L["d"] = Instance.new("UIPadding", G2L["b"]);
G2L["d"]["PaddingLeft"] = UDim.new(0, 12);

-- Workspace.UI_Library.Main.SideBar.Buttons.Template
G2L["e"] = Instance.new("TextButton", G2L["b"]);
G2L["e"]["Active"] = false;
G2L["e"]["BorderSizePixel"] = 0;
G2L["e"]["Modal"] = true;
G2L["e"]["TextTransparency"] = 1;
G2L["e"]["BackgroundColor3"] = Color3.fromRGB(23, 23, 23);
G2L["e"]["Selectable"] = false;
G2L["e"]["Visible"] = false;
G2L["e"]["Size"] = UDim2.new(0, 30, 0, 30);
G2L["e"]["Name"] = [[Template]];
G2L["e"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["e"]["Position"] = UDim2.new(0.2857142984867096, 0, 0.4159291982650757, 0);

-- Workspace.UI_Library.Main.SideBar.Buttons.Template.UICorner
G2L["f"] = Instance.new("UICorner", G2L["e"]);
G2L["f"]["CornerRadius"] = UDim.new(0, 5);

-- Workspace.UI_Library.Main.SideBar.Buttons.Template.ImageLabel
G2L["10"] = Instance.new("ImageLabel", G2L["e"]);
G2L["10"]["BorderSizePixel"] = 0;
G2L["10"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["10"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["10"]["Image"] = [[rbxassetid://11432831839]];
G2L["10"]["Size"] = UDim2.new(0, 23, 0, 23);
G2L["10"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["10"]["BackgroundTransparency"] = 1;
G2L["10"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);

-- Workspace.UI_Library.Main.SideBar.Buttons.Template.TextLabel
G2L["11"] = Instance.new("TextLabel", G2L["e"]);
G2L["11"]["BorderSizePixel"] = 0;
G2L["11"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["11"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["11"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["11"]["TextSize"] = 14;
G2L["11"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["11"]["Size"] = UDim2.new(0, 86, 0, 30);
G2L["11"]["ClipsDescendants"] = true;
G2L["11"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["11"]["Text"] = [[Character]];
G2L["11"]["BackgroundTransparency"] = 1;
G2L["11"]["Position"] = UDim2.new(0, 44, 0, 0);

-- Workspace.UI_Library.Main.SideBar.Divider
G2L["12"] = Instance.new("Frame", G2L["4"]);
G2L["12"]["BorderSizePixel"] = 0;
G2L["12"]["BackgroundColor3"] = Color3.fromRGB(61, 61, 61);
G2L["12"]["Size"] = UDim2.new(0.6609999537467957, 0, 0.0029498524963855743, 0);
G2L["12"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["12"]["Position"] = UDim2.new(0.1607142835855484, 0, 0.1622418910264969, 0);
G2L["12"]["Name"] = [[Divider]];

-- Workspace.UI_Library.Main.SideBar.NameText
G2L["13"] = Instance.new("TextLabel", G2L["4"]);
G2L["13"]["BorderSizePixel"] = 0;
G2L["13"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["13"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["13"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["13"]["TextSize"] = 14;
G2L["13"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["13"]["Size"] = UDim2.new(0, 86, 0, 30);
G2L["13"]["ClipsDescendants"] = true;
G2L["13"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["13"]["Text"] = [[Cat Hub]];
G2L["13"]["Name"] = [[NameText]];
G2L["13"]["BackgroundTransparency"] = 1;
G2L["13"]["Position"] = UDim2.new(0, 55, 0, 12);

-- Workspace.UI_Library.Main.SideBar.MinimizeText
G2L["14"] = Instance.new("TextLabel", G2L["4"]);
G2L["14"]["BorderSizePixel"] = 0;
G2L["14"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["14"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["14"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["14"]["TextSize"] = 14;
G2L["14"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["14"]["Size"] = UDim2.new(0, 86, 0, 30);
G2L["14"]["ClipsDescendants"] = true;
G2L["14"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["14"]["Text"] = [[Minimize]];
G2L["14"]["Name"] = [[MinimizeText]];
G2L["14"]["BackgroundTransparency"] = 1;
G2L["14"]["Position"] = UDim2.new(0, 55, 0, 296);

-- Workspace.UI_Library.Main.SideBar.UIStroke
G2L["15"] = Instance.new("UIStroke", G2L["4"]);
G2L["15"]["Color"] = Color3.fromRGB(61, 61, 61);
G2L["15"]["Thickness"] = 1.25;

-- Workspace.UI_Library.Main.UIStroke
G2L["16"] = Instance.new("UIStroke", G2L["2"]);
G2L["16"]["Color"] = Color3.fromRGB(61, 61, 61);
G2L["16"]["Thickness"] = 1.25;
G2L["16"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;

-- Workspace.UI_Library.Main.TabContainer
G2L["17"] = Instance.new("Frame", G2L["2"]);
G2L["17"]["BorderSizePixel"] = 0;
G2L["17"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["17"]["BackgroundTransparency"] = 1;
G2L["17"]["Size"] = UDim2.new(0, 439, 0, 326);
G2L["17"]["ClipsDescendants"] = true;
G2L["17"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["17"]["Position"] = UDim2.new(0.12999999523162842, 0, 0.020999999716877937, 0);
G2L["17"]["Name"] = [[TabContainer]];

-- Workspace.UI_Library.Main.TabContainer.UIPageLayout
G2L["18"] = Instance.new("UIPageLayout", G2L["17"]);
G2L["18"]["TweenTime"] = 0.800000011920929;
G2L["18"]["FillDirection"] = Enum.FillDirection.Vertical;
G2L["18"]["HorizontalAlignment"] = Enum.HorizontalAlignment.Center;
G2L["18"]["EasingStyle"] = Enum.EasingStyle.Quint;
G2L["18"]["VerticalAlignment"] = Enum.VerticalAlignment.Center;
G2L["18"]["SortOrder"] = Enum.SortOrder.LayoutOrder;

-- Workspace.UI_Library.Main.TabContainer.Template
G2L["19"] = Instance.new("ScrollingFrame", G2L["17"]);
G2L["19"]["Active"] = true;
G2L["19"]["BorderSizePixel"] = 0;
G2L["19"]["CanvasSize"] = UDim2.new(0, 0, 0, 0);
G2L["19"]["ScrollBarImageTransparency"] = 1;
G2L["19"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["19"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["19"]["AutomaticCanvasSize"] = Enum.AutomaticSize.Y;
G2L["19"]["BackgroundTransparency"] = 1;
G2L["19"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["19"]["BorderColor3"] = Color3.fromRGB(28, 43, 54);
G2L["19"]["ScrollBarThickness"] = 0;
G2L["19"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);
G2L["19"]["Name"] = [[Template]];

-- Workspace.UI_Library.Main.TabContainer.Template.UIListLayout
G2L["1a"] = Instance.new("UIListLayout", G2L["19"]);
G2L["1a"]["HorizontalAlignment"] = Enum.HorizontalAlignment.Center;
G2L["1a"]["Padding"] = UDim.new(0, 6);
G2L["1a"]["SortOrder"] = Enum.SortOrder.LayoutOrder;

-- Workspace.UI_Library.Main.TabContainer.Template.SectionTitle
G2L["1b"] = Instance.new("Frame", G2L["19"]);
G2L["1b"]["BorderSizePixel"] = 0;
G2L["1b"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1b"]["BackgroundTransparency"] = 1;
G2L["1b"]["Size"] = UDim2.new(1, 0, 0, 15);
G2L["1b"]["BorderColor3"] = Color3.fromRGB(28, 43, 54);
G2L["1b"]["Name"] = [[SectionTitle]];

-- Workspace.UI_Library.Main.TabContainer.Template.SectionTitle.Title
G2L["1c"] = Instance.new("TextLabel", G2L["1b"]);
G2L["1c"]["TextWrapped"] = true;
G2L["1c"]["BorderSizePixel"] = 0;
G2L["1c"]["TextScaled"] = true;
G2L["1c"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1c"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["1c"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
G2L["1c"]["TextSize"] = 14;
G2L["1c"]["TextColor3"] = Color3.fromRGB(176, 176, 176);
G2L["1c"]["Size"] = UDim2.new(0.9808096289634705, 0, 0, 13);
G2L["1c"]["BorderColor3"] = Color3.fromRGB(28, 43, 54);
G2L["1c"]["Text"] = [[Elements]];
G2L["1c"]["Name"] = [[Title]];
G2L["1c"]["BackgroundTransparency"] = 1;
G2L["1c"]["Position"] = UDim2.new(0, 5, 0, 0);

-- Workspace.UI_Library.Main.TabContainer.Template.SectionTitle.Title.UITextSizeConstraint
G2L["1d"] = Instance.new("UITextSizeConstraint", G2L["1c"]);
G2L["1d"]["MaxTextSize"] = 13;

-- Workspace.UI_Library.Main.TabContainer.Template.SectionTitle.UIListLayout
G2L["1e"] = Instance.new("UIListLayout", G2L["1b"]);
G2L["1e"]["HorizontalAlignment"] = Enum.HorizontalAlignment.Center;
G2L["1e"]["Padding"] = UDim.new(0, 6);
G2L["1e"]["SortOrder"] = Enum.SortOrder.LayoutOrder;

-- Workspace.UI_Library.Main.TabContainer.Template.SectionTitle.UIPadding
G2L["1f"] = Instance.new("UIPadding", G2L["1b"]);
G2L["1f"]["PaddingBottom"] = UDim.new(0, 5);

-- Workspace.UI_Library.Main.TabContainer.Template.Dropdown
G2L["20"] = Instance.new("Frame", G2L["19"]);
G2L["20"]["BorderSizePixel"] = 0;
G2L["20"]["BackgroundColor3"] = Color3.fromRGB(23, 23, 23);
G2L["20"]["Size"] = UDim2.new(1, -10, 0, 180);
G2L["20"]["BorderColor3"] = Color3.fromRGB(28, 43, 54);
G2L["20"]["Position"] = UDim2.new(0.01138952188193798, 0, 0.06542056053876877, 0);
G2L["20"]["Name"] = [[Dropdown]];

-- Workspace.UI_Library.Main.TabContainer.Template.Dropdown.UICorner
G2L["21"] = Instance.new("UICorner", G2L["20"]);
G2L["21"]["CornerRadius"] = UDim.new(0, 4);

-- Workspace.UI_Library.Main.TabContainer.Template.Dropdown.Title
G2L["22"] = Instance.new("TextLabel", G2L["20"]);
G2L["22"]["TextWrapped"] = true;
G2L["22"]["ZIndex"] = 3;
G2L["22"]["BorderSizePixel"] = 0;
G2L["22"]["TextScaled"] = true;
G2L["22"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["22"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["22"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
G2L["22"]["TextSize"] = 14;
G2L["22"]["TextColor3"] = Color3.fromRGB(241, 241, 241);
G2L["22"]["AnchorPoint"] = Vector2.new(0, 0.5);
G2L["22"]["Size"] = UDim2.new(0, 234, 0, 14);
G2L["22"]["BorderColor3"] = Color3.fromRGB(28, 43, 54);
G2L["22"]["Text"] = [[Dropdown]];
G2L["22"]["Name"] = [[Title]];
G2L["22"]["BackgroundTransparency"] = 1;
G2L["22"]["Position"] = UDim2.new(0, 14, 0, 22);

-- Workspace.UI_Library.Main.TabContainer.Template.Dropdown.Title.UITextSizeConstraint
G2L["23"] = Instance.new("UITextSizeConstraint", G2L["22"]);
G2L["23"]["MaxTextSize"] = 14;

-- Workspace.UI_Library.Main.TabContainer.Template.Dropdown.UIStroke
G2L["24"] = Instance.new("UIStroke", G2L["20"]);
G2L["24"]["Color"] = Color3.fromRGB(51, 51, 51);

-- Workspace.UI_Library.Main.TabContainer.Template.Dropdown.List
G2L["25"] = Instance.new("ScrollingFrame", G2L["20"]);
G2L["25"]["Active"] = true;
G2L["25"]["BorderSizePixel"] = 0;
G2L["25"]["CanvasSize"] = UDim2.new(0, 0, 0, 0);
G2L["25"]["ScrollBarImageTransparency"] = 0.699999988079071;
G2L["25"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["25"]["AutomaticCanvasSize"] = Enum.AutomaticSize.Y;
G2L["25"]["BackgroundTransparency"] = 1;
G2L["25"]["Size"] = UDim2.new(1, 0, 0.699999988079071, 0);
G2L["25"]["ScrollBarImageColor3"] = Color3.fromRGB(241, 241, 241);
G2L["25"]["BorderColor3"] = Color3.fromRGB(28, 43, 54);
G2L["25"]["ScrollBarThickness"] = 3;
G2L["25"]["Position"] = UDim2.new(0, 0, 0.21111111342906952, 0);
G2L["25"]["Name"] = [[List]];

-- Workspace.UI_Library.Main.TabContainer.Template.Dropdown.List.UIListLayout
G2L["26"] = Instance.new("UIListLayout", G2L["25"]);
G2L["26"]["HorizontalAlignment"] = Enum.HorizontalAlignment.Center;
G2L["26"]["Padding"] = UDim.new(0, 5);
G2L["26"]["SortOrder"] = Enum.SortOrder.LayoutOrder;

-- Workspace.UI_Library.Main.TabContainer.Template.Dropdown.List.Placeholder
G2L["27"] = Instance.new("Frame", G2L["25"]);
G2L["27"]["BorderSizePixel"] = 0;
G2L["27"]["BackgroundColor3"] = Color3.fromRGB(31, 31, 31);
G2L["27"]["LayoutOrder"] = -100;
G2L["27"]["BorderColor3"] = Color3.fromRGB(28, 43, 54);
G2L["27"]["Position"] = UDim2.new(0.39247313141822815, 0, 0, 0);
G2L["27"]["Name"] = [[Placeholder]];

-- Workspace.UI_Library.Main.TabContainer.Template.Dropdown.List.Template
G2L["28"] = Instance.new("Frame", G2L["25"]);
G2L["28"]["BorderSizePixel"] = 0;
G2L["28"]["BackgroundColor3"] = Color3.fromRGB(31, 31, 31);
G2L["28"]["Size"] = UDim2.new(0.9077202081680298, 0, 0, 38);
G2L["28"]["BorderColor3"] = Color3.fromRGB(28, 43, 54);
G2L["28"]["Position"] = UDim2.new(0.015713507309556007, 0, 0.0396825410425663, 0);
G2L["28"]["Name"] = [[Template]];

-- Workspace.UI_Library.Main.TabContainer.Template.Dropdown.List.Template.UICorner
G2L["29"] = Instance.new("UICorner", G2L["28"]);
G2L["29"]["CornerRadius"] = UDim.new(0, 5);

-- Workspace.UI_Library.Main.TabContainer.Template.Dropdown.List.Template.UIStroke
G2L["2a"] = Instance.new("UIStroke", G2L["28"]);
G2L["2a"]["Color"] = Color3.fromRGB(51, 51, 51);

-- Workspace.UI_Library.Main.TabContainer.Template.Dropdown.List.Template.Title
G2L["2b"] = Instance.new("TextLabel", G2L["28"]);
G2L["2b"]["TextWrapped"] = true;
G2L["2b"]["BorderSizePixel"] = 0;
G2L["2b"]["TextScaled"] = true;
G2L["2b"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["2b"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["2b"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
G2L["2b"]["TextSize"] = 14;
G2L["2b"]["TextColor3"] = Color3.fromRGB(241, 241, 241);
G2L["2b"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["2b"]["Size"] = UDim2.new(0.8077143430709839, 0, 0.3684210479259491, 0);
G2L["2b"]["BorderColor3"] = Color3.fromRGB(28, 43, 54);
G2L["2b"]["Text"] = [[Option]];
G2L["2b"]["Name"] = [[Title]];
G2L["2b"]["BackgroundTransparency"] = 1;
G2L["2b"]["Position"] = UDim2.new(0.4419000744819641, 0, 0.4736842215061188, 0);

-- Workspace.UI_Library.Main.TabContainer.Template.Dropdown.List.Template.Title.UITextSizeConstraint
G2L["2c"] = Instance.new("UITextSizeConstraint", G2L["2b"]);
G2L["2c"]["MaxTextSize"] = 14;

-- Workspace.UI_Library.Main.TabContainer.Template.Dropdown.List.Template.Interact
G2L["2d"] = Instance.new("TextButton", G2L["28"]);
G2L["2d"]["TextWrapped"] = true;
G2L["2d"]["ZIndex"] = 5;
G2L["2d"]["BorderSizePixel"] = 0;
G2L["2d"]["TextScaled"] = true;
G2L["2d"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["2d"]["TextSize"] = 1;
G2L["2d"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["2d"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
G2L["2d"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["2d"]["Name"] = [[Interact]];
G2L["2d"]["BorderColor3"] = Color3.fromRGB(28, 43, 54);
G2L["2d"]["Text"] = [[]];
G2L["2d"]["BackgroundTransparency"] = 1;

-- Workspace.UI_Library.Main.TabContainer.Template.Dropdown.List.Template.Interact.UITextSizeConstraint
G2L["2e"] = Instance.new("UITextSizeConstraint", G2L["2d"]);
G2L["2e"]["MaxTextSize"] = 1;

-- Workspace.UI_Library.Main.TabContainer.Template.Dropdown.Selected
G2L["2f"] = Instance.new("TextLabel", G2L["20"]);
G2L["2f"]["TextWrapped"] = true;
G2L["2f"]["BorderSizePixel"] = 0;
G2L["2f"]["TextScaled"] = true;
G2L["2f"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["2f"]["TextXAlignment"] = Enum.TextXAlignment.Right;
G2L["2f"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
G2L["2f"]["TextSize"] = 14;
G2L["2f"]["TextColor3"] = Color3.fromRGB(151, 151, 151);
G2L["2f"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["2f"]["Size"] = UDim2.new(0, 167, 0, 14);
G2L["2f"]["BorderColor3"] = Color3.fromRGB(28, 43, 54);
G2L["2f"]["Text"] = [[Option #1]];
G2L["2f"]["Name"] = [[Selected]];
G2L["2f"]["BackgroundTransparency"] = 1;
G2L["2f"]["Position"] = UDim2.new(0, 306, 0, 22);

-- Workspace.UI_Library.Main.TabContainer.Template.Dropdown.Selected.UITextSizeConstraint
G2L["30"] = Instance.new("UITextSizeConstraint", G2L["2f"]);
G2L["30"]["MaxTextSize"] = 14;

-- Workspace.UI_Library.Main.TabContainer.Template.Dropdown.Toggle
G2L["31"] = Instance.new("ImageButton", G2L["20"]);
G2L["31"]["BorderSizePixel"] = 0;
G2L["31"]["ImageColor3"] = Color3.fromRGB(151, 151, 151);
G2L["31"]["LayoutOrder"] = 9;
G2L["31"]["AnchorPoint"] = Vector2.new(1, 0.5);
G2L["31"]["Image"] = [[rbxassetid://3926305904]];
G2L["31"]["ImageRectSize"] = Vector2.new(36, 36);
G2L["31"]["Size"] = UDim2.new(0, 31, 0, 28);
G2L["31"]["Name"] = [[Toggle]];
G2L["31"]["BorderColor3"] = Color3.fromRGB(28, 43, 54);
G2L["31"]["ImageRectOffset"] = Vector2.new(564, 284);
G2L["31"]["Position"] = UDim2.new(0, 423, 0, 22);
G2L["31"]["BackgroundTransparency"] = 1;

-- Workspace.UI_Library.Main.TabContainer.Template.Dropdown.Interact
G2L["32"] = Instance.new("TextButton", G2L["20"]);
G2L["32"]["TextWrapped"] = true;
G2L["32"]["ZIndex"] = 5;
G2L["32"]["BorderSizePixel"] = 0;
G2L["32"]["TextTransparency"] = 1;
G2L["32"]["TextScaled"] = true;
G2L["32"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["32"]["TextSize"] = 14;
G2L["32"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["32"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
G2L["32"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["32"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["32"]["Name"] = [[Interact]];
G2L["32"]["BorderColor3"] = Color3.fromRGB(28, 43, 54);
G2L["32"]["Text"] = [[]];
G2L["32"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);
G2L["32"]["BackgroundTransparency"] = 1;

-- Workspace.UI_Library.Main.TabContainer.Template.Dropdown.Interact.UITextSizeConstraint
G2L["33"] = Instance.new("UITextSizeConstraint", G2L["32"]);
G2L["33"]["MaxTextSize"] = 14;

-- Workspace.UI_Library.Main.TabContainer.Template.Button
G2L["34"] = Instance.new("Frame", G2L["19"]);
G2L["34"]["BorderSizePixel"] = 0;
G2L["34"]["BackgroundColor3"] = Color3.fromRGB(23, 23, 23);
G2L["34"]["Size"] = UDim2.new(0.9957878589630127, -10, 0, 35);
G2L["34"]["BorderColor3"] = Color3.fromRGB(28, 43, 54);
G2L["34"]["Position"] = UDim2.new(0.015601642429828644, 0, 0.644859790802002, 0);
G2L["34"]["Name"] = [[Button]];

-- Workspace.UI_Library.Main.TabContainer.Template.Button.UICorner
G2L["35"] = Instance.new("UICorner", G2L["34"]);
G2L["35"]["CornerRadius"] = UDim.new(0, 4);

-- Workspace.UI_Library.Main.TabContainer.Template.Button.UIStroke
G2L["36"] = Instance.new("UIStroke", G2L["34"]);
G2L["36"]["Color"] = Color3.fromRGB(51, 51, 51);

-- Workspace.UI_Library.Main.TabContainer.Template.Button.Interact
G2L["37"] = Instance.new("TextButton", G2L["34"]);
G2L["37"]["TextWrapped"] = true;
G2L["37"]["ZIndex"] = 5;
G2L["37"]["BorderSizePixel"] = 0;
G2L["37"]["TextTransparency"] = 1;
G2L["37"]["TextScaled"] = true;
G2L["37"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["37"]["TextSize"] = 14;
G2L["37"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["37"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
G2L["37"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["37"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["37"]["Name"] = [[Interact]];
G2L["37"]["BorderColor3"] = Color3.fromRGB(28, 43, 54);
G2L["37"]["Text"] = [[]];
G2L["37"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);
G2L["37"]["BackgroundTransparency"] = 1;

-- Workspace.UI_Library.Main.TabContainer.Template.Button.Interact.UITextSizeConstraint
G2L["38"] = Instance.new("UITextSizeConstraint", G2L["37"]);
G2L["38"]["MaxTextSize"] = 14;

-- Workspace.UI_Library.Main.TabContainer.Template.Button.Title
G2L["39"] = Instance.new("TextLabel", G2L["34"]);
G2L["39"]["TextWrapped"] = true;
G2L["39"]["BorderSizePixel"] = 0;
G2L["39"]["TextScaled"] = true;
G2L["39"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["39"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["39"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
G2L["39"]["TextSize"] = 14;
G2L["39"]["TextColor3"] = Color3.fromRGB(241, 241, 241);
G2L["39"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["39"]["Size"] = UDim2.new(0.7308584451675415, 0, 0.4000000059604645, 0);
G2L["39"]["BorderColor3"] = Color3.fromRGB(28, 43, 54);
G2L["39"]["Text"] = [[Button]];
G2L["39"]["Name"] = [[Title]];
G2L["39"]["BackgroundTransparency"] = 1;
G2L["39"]["Position"] = UDim2.new(0.4014981687068939, 0, 0.5, 0);

-- Workspace.UI_Library.Main.TabContainer.Template.Button.Title.UITextSizeConstraint
G2L["3a"] = Instance.new("UITextSizeConstraint", G2L["39"]);
G2L["3a"]["MaxTextSize"] = 14;

-- Workspace.UI_Library.Main.TabContainer.Template.Button.Icon
G2L["3b"] = Instance.new("ImageLabel", G2L["34"]);
G2L["3b"]["BorderSizePixel"] = 0;
G2L["3b"]["ScaleType"] = Enum.ScaleType.Fit;
G2L["3b"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["3b"]["ImageTransparency"] = 0.6000000238418579;
G2L["3b"]["AnchorPoint"] = Vector2.new(1, 0.5);
G2L["3b"]["Image"] = [[rbxassetid://11432848110]];
G2L["3b"]["Size"] = UDim2.new(0.05336426943540573, 0, 0.6571428775787354, 0);
G2L["3b"]["BorderColor3"] = Color3.fromRGB(28, 43, 54);
G2L["3b"]["Name"] = [[Icon]];
G2L["3b"]["BackgroundTransparency"] = 1;
G2L["3b"]["Position"] = UDim2.new(0.9791181087493896, 0, 0.5, 0);

-- Workspace.UI_Library.Main.TabContainer.Template.Toggle
G2L["3c"] = Instance.new("Frame", G2L["19"]);
G2L["3c"]["BorderSizePixel"] = 0;
G2L["3c"]["BackgroundColor3"] = Color3.fromRGB(23, 23, 23);
G2L["3c"]["Size"] = UDim2.new(1, -10, 0, 40);
G2L["3c"]["BorderColor3"] = Color3.fromRGB(28, 43, 54);
G2L["3c"]["Name"] = [[Toggle]];

-- Workspace.UI_Library.Main.TabContainer.Template.Toggle.UICorner
G2L["3d"] = Instance.new("UICorner", G2L["3c"]);
G2L["3d"]["CornerRadius"] = UDim.new(0, 4);

-- Workspace.UI_Library.Main.TabContainer.Template.Toggle.UIStroke
G2L["3e"] = Instance.new("UIStroke", G2L["3c"]);
G2L["3e"]["Color"] = Color3.fromRGB(51, 51, 51);

-- Workspace.UI_Library.Main.TabContainer.Template.Toggle.Interact
G2L["3f"] = Instance.new("TextButton", G2L["3c"]);
G2L["3f"]["TextWrapped"] = true;
G2L["3f"]["ZIndex"] = 5;
G2L["3f"]["BorderSizePixel"] = 0;
G2L["3f"]["TextTransparency"] = 1;
G2L["3f"]["TextScaled"] = true;
G2L["3f"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["3f"]["TextSize"] = 14;
G2L["3f"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["3f"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
G2L["3f"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["3f"]["Size"] = UDim2.new(1.0003985166549683, 0, 1, 0);
G2L["3f"]["Name"] = [[Interact]];
G2L["3f"]["BorderColor3"] = Color3.fromRGB(28, 43, 54);
G2L["3f"]["Text"] = [[]];
G2L["3f"]["Position"] = UDim2.new(0.49980059266090393, 0, 0.5, 0);
G2L["3f"]["BackgroundTransparency"] = 1;

-- Workspace.UI_Library.Main.TabContainer.Template.Toggle.Interact.UITextSizeConstraint
G2L["40"] = Instance.new("UITextSizeConstraint", G2L["3f"]);
G2L["40"]["MaxTextSize"] = 14;

-- Workspace.UI_Library.Main.TabContainer.Template.Toggle.Switch
G2L["41"] = Instance.new("Frame", G2L["3c"]);
G2L["41"]["BorderSizePixel"] = 0;
G2L["41"]["BackgroundColor3"] = Color3.fromRGB(31, 31, 31);
G2L["41"]["AnchorPoint"] = Vector2.new(1, 0.5);
G2L["41"]["Size"] = UDim2.new(0.09976798295974731, 0, 0.5249999761581421, 0);
G2L["41"]["BorderColor3"] = Color3.fromRGB(28, 43, 54);
G2L["41"]["Position"] = UDim2.new(0.9767981171607971, 0, 0.5, 0);
G2L["41"]["Name"] = [[Switch]];

-- Workspace.UI_Library.Main.TabContainer.Template.Toggle.Switch.UICorner
G2L["42"] = Instance.new("UICorner", G2L["41"]);
G2L["42"]["CornerRadius"] = UDim.new(0, 15);

-- Workspace.UI_Library.Main.TabContainer.Template.Toggle.Switch.Indicator
G2L["43"] = Instance.new("Frame", G2L["41"]);
G2L["43"]["BorderSizePixel"] = 0;
G2L["43"]["BackgroundColor3"] = Color3.fromRGB(140, 140, 140);
G2L["43"]["AnchorPoint"] = Vector2.new(0, 0.5);
G2L["43"]["Size"] = UDim2.new(0.39534884691238403, 0, 0.8095238208770752, 0);
G2L["43"]["BorderColor3"] = Color3.fromRGB(28, 43, 54);
G2L["43"]["Position"] = UDim2.new(0.06976744532585144, 0, 0.5, 0);
G2L["43"]["Name"] = [[Indicator]];

-- Workspace.UI_Library.Main.TabContainer.Template.Toggle.Switch.Indicator.UICorner
G2L["44"] = Instance.new("UICorner", G2L["43"]);
G2L["44"]["CornerRadius"] = UDim.new(1, 0);

-- Workspace.UI_Library.Main.TabContainer.Template.Toggle.Switch.UIStroke
G2L["45"] = Instance.new("UIStroke", G2L["41"]);
G2L["45"]["Color"] = Color3.fromRGB(66, 66, 66);

-- Workspace.UI_Library.Main.TabContainer.Template.Toggle.Title
G2L["46"] = Instance.new("TextLabel", G2L["3c"]);
G2L["46"]["TextWrapped"] = true;
G2L["46"]["BorderSizePixel"] = 0;
G2L["46"]["TextScaled"] = true;
G2L["46"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["46"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["46"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
G2L["46"]["TextSize"] = 14;
G2L["46"]["TextColor3"] = Color3.fromRGB(241, 241, 241);
G2L["46"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["46"]["Size"] = UDim2.new(0.7308584451675415, 0, 0.3499999940395355, 0);
G2L["46"]["BorderColor3"] = Color3.fromRGB(28, 43, 54);
G2L["46"]["Text"] = [[Toggle]];
G2L["46"]["Name"] = [[Title]];
G2L["46"]["BackgroundTransparency"] = 1;
G2L["46"]["Position"] = UDim2.new(0.4014981687068939, 0, 0.5, 0);

-- Workspace.UI_Library.Main.TabContainer.Template.Toggle.Title.UITextSizeConstraint
G2L["47"] = Instance.new("UITextSizeConstraint", G2L["46"]);
G2L["47"]["MaxTextSize"] = 14;

-- Workspace.UI_Library.Main.TabContainer.Template.Toggle.LocalScript
G2L["48"] = Instance.new("LocalScript", G2L["3c"]);


-- Workspace.UI_Library.Main.TabContainer.Template.Toggle_Radio
G2L["49"] = Instance.new("Frame", G2L["19"]);
G2L["49"]["BorderSizePixel"] = 0;
G2L["49"]["BackgroundColor3"] = Color3.fromRGB(23, 23, 23);
G2L["49"]["Size"] = UDim2.new(1, -10, 0, 40);
G2L["49"]["BorderColor3"] = Color3.fromRGB(28, 43, 54);
G2L["49"]["Name"] = [[Toggle_Radio]];

-- Workspace.UI_Library.Main.TabContainer.Template.Toggle_Radio.UICorner
G2L["4a"] = Instance.new("UICorner", G2L["49"]);
G2L["4a"]["CornerRadius"] = UDim.new(0, 4);

-- Workspace.UI_Library.Main.TabContainer.Template.Toggle_Radio.UIStroke
G2L["4b"] = Instance.new("UIStroke", G2L["49"]);
G2L["4b"]["Color"] = Color3.fromRGB(51, 51, 51);

-- Workspace.UI_Library.Main.TabContainer.Template.Toggle_Radio.Interact
G2L["4c"] = Instance.new("TextButton", G2L["49"]);
G2L["4c"]["TextWrapped"] = true;
G2L["4c"]["ZIndex"] = 5;
G2L["4c"]["BorderSizePixel"] = 0;
G2L["4c"]["TextTransparency"] = 1;
G2L["4c"]["TextScaled"] = true;
G2L["4c"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["4c"]["TextSize"] = 14;
G2L["4c"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["4c"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
G2L["4c"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["4c"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["4c"]["Name"] = [[Interact]];
G2L["4c"]["BorderColor3"] = Color3.fromRGB(28, 43, 54);
G2L["4c"]["Text"] = [[]];
G2L["4c"]["Position"] = UDim2.new(0.5010775327682495, 0, 0.5, 0);
G2L["4c"]["BackgroundTransparency"] = 1;

-- Workspace.UI_Library.Main.TabContainer.Template.Toggle_Radio.Interact.UITextSizeConstraint
G2L["4d"] = Instance.new("UITextSizeConstraint", G2L["4c"]);
G2L["4d"]["MaxTextSize"] = 14;

-- Workspace.UI_Library.Main.TabContainer.Template.Toggle_Radio.Switch
G2L["4e"] = Instance.new("Frame", G2L["49"]);
G2L["4e"]["BorderSizePixel"] = 0;
G2L["4e"]["BackgroundColor3"] = Color3.fromRGB(31, 31, 31);
G2L["4e"]["AnchorPoint"] = Vector2.new(1, 0.5);
G2L["4e"]["Size"] = UDim2.new(0.05336426943540573, 0, 0.574999988079071, 0);
G2L["4e"]["BorderColor3"] = Color3.fromRGB(28, 43, 54);
G2L["4e"]["Position"] = UDim2.new(0.9767979979515076, 0, 0.5, 0);
G2L["4e"]["Name"] = [[Switch]];

-- Workspace.UI_Library.Main.TabContainer.Template.Toggle_Radio.Switch.UICorner
G2L["4f"] = Instance.new("UICorner", G2L["4e"]);
G2L["4f"]["CornerRadius"] = UDim.new(0, 15);

-- Workspace.UI_Library.Main.TabContainer.Template.Toggle_Radio.Switch.UIStroke
G2L["50"] = Instance.new("UIStroke", G2L["4e"]);
G2L["50"]["Color"] = Color3.fromRGB(66, 66, 66);

-- Workspace.UI_Library.Main.TabContainer.Template.Toggle_Radio.Switch.Indicator
G2L["51"] = Instance.new("Frame", G2L["4e"]);
G2L["51"]["BorderSizePixel"] = 0;
G2L["51"]["BackgroundColor3"] = Color3.fromRGB(140, 140, 140);
G2L["51"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["51"]["Size"] = UDim2.new(0.739130437374115, 0, 0.739130437374115, 0);
G2L["51"]["BorderColor3"] = Color3.fromRGB(28, 43, 54);
G2L["51"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);
G2L["51"]["Name"] = [[Indicator]];

-- Workspace.UI_Library.Main.TabContainer.Template.Toggle_Radio.Switch.Indicator.UICorner
G2L["52"] = Instance.new("UICorner", G2L["51"]);
G2L["52"]["CornerRadius"] = UDim.new(1, 0);

-- Workspace.UI_Library.Main.TabContainer.Template.Toggle_Radio.Title
G2L["53"] = Instance.new("TextLabel", G2L["49"]);
G2L["53"]["TextWrapped"] = true;
G2L["53"]["BorderSizePixel"] = 0;
G2L["53"]["TextScaled"] = true;
G2L["53"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["53"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["53"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
G2L["53"]["TextSize"] = 14;
G2L["53"]["TextColor3"] = Color3.fromRGB(241, 241, 241);
G2L["53"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["53"]["Size"] = UDim2.new(0.7308584451675415, 0, 0.3499999940395355, 0);
G2L["53"]["BorderColor3"] = Color3.fromRGB(28, 43, 54);
G2L["53"]["Text"] = [[Toggle Radio]];
G2L["53"]["Name"] = [[Title]];
G2L["53"]["BackgroundTransparency"] = 1;
G2L["53"]["Position"] = UDim2.new(0.4014981687068939, 0, 0.5, 0);

-- Workspace.UI_Library.Main.TabContainer.Template.Toggle_Radio.Title.UITextSizeConstraint
G2L["54"] = Instance.new("UITextSizeConstraint", G2L["53"]);
G2L["54"]["MaxTextSize"] = 14;

-- Workspace.UI_Library.Main.TabContainer.Template.Input
G2L["55"] = Instance.new("Frame", G2L["19"]);
G2L["55"]["BorderSizePixel"] = 0;
G2L["55"]["BackgroundColor3"] = Color3.fromRGB(23, 23, 23);
G2L["55"]["Size"] = UDim2.new(1, -10, 0, 40);
G2L["55"]["BorderColor3"] = Color3.fromRGB(28, 43, 54);
G2L["55"]["Position"] = UDim2.new(0.010526316240429878, 0, 0.669211208820343, 0);
G2L["55"]["Name"] = [[Input]];

-- Workspace.UI_Library.Main.TabContainer.Template.Input.UICorner
G2L["56"] = Instance.new("UICorner", G2L["55"]);
G2L["56"]["CornerRadius"] = UDim.new(0, 4);

-- Workspace.UI_Library.Main.TabContainer.Template.Input.UIStroke
G2L["57"] = Instance.new("UIStroke", G2L["55"]);
G2L["57"]["Color"] = Color3.fromRGB(51, 51, 51);

-- Workspace.UI_Library.Main.TabContainer.Template.Input.InputFrame
G2L["58"] = Instance.new("Frame", G2L["55"]);
G2L["58"]["BorderSizePixel"] = 0;
G2L["58"]["BackgroundColor3"] = Color3.fromRGB(31, 31, 31);
G2L["58"]["AnchorPoint"] = Vector2.new(1, 0.5);
G2L["58"]["Size"] = UDim2.new(0.21577726304531097, 0, 0.6499999761581421, 0);
G2L["58"]["BorderColor3"] = Color3.fromRGB(28, 43, 54);
G2L["58"]["Position"] = UDim2.new(0.9744778275489807, 0, 0.5, 0);
G2L["58"]["Name"] = [[InputFrame]];

-- Workspace.UI_Library.Main.TabContainer.Template.Input.InputFrame.InputBox
G2L["59"] = Instance.new("TextBox", G2L["58"]);
G2L["59"]["BorderSizePixel"] = 0;
G2L["59"]["TextSize"] = 14;
G2L["59"]["TextWrapped"] = true;
G2L["59"]["TextScaled"] = true;
G2L["59"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["59"]["TextColor3"] = Color3.fromRGB(241, 241, 241);
G2L["59"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
G2L["59"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["59"]["BackgroundTransparency"] = 1;
G2L["59"]["PlaceholderText"] = [[Input]];
G2L["59"]["Size"] = UDim2.new(0.8387096524238586, 0, 0.5384615659713745, 0);
G2L["59"]["BorderColor3"] = Color3.fromRGB(28, 43, 54);
G2L["59"]["Text"] = [[]];
G2L["59"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);
G2L["59"]["Name"] = [[InputBox]];
G2L["59"]["ClearTextOnFocus"] = false;

-- Workspace.UI_Library.Main.TabContainer.Template.Input.InputFrame.InputBox.UITextSizeConstraint
G2L["5a"] = Instance.new("UITextSizeConstraint", G2L["59"]);
G2L["5a"]["MaxTextSize"] = 14;

-- Workspace.UI_Library.Main.TabContainer.Template.Input.InputFrame.UIStroke
G2L["5b"] = Instance.new("UIStroke", G2L["58"]);
G2L["5b"]["Color"] = Color3.fromRGB(66, 66, 66);

-- Workspace.UI_Library.Main.TabContainer.Template.Input.InputFrame.UICorner
G2L["5c"] = Instance.new("UICorner", G2L["58"]);
G2L["5c"]["CornerRadius"] = UDim.new(0, 5);

-- Workspace.UI_Library.Main.TabContainer.Template.Input.Title
G2L["5d"] = Instance.new("TextLabel", G2L["55"]);
G2L["5d"]["TextWrapped"] = true;
G2L["5d"]["BorderSizePixel"] = 0;
G2L["5d"]["TextScaled"] = true;
G2L["5d"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["5d"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["5d"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
G2L["5d"]["TextSize"] = 14;
G2L["5d"]["TextColor3"] = Color3.fromRGB(241, 241, 241);
G2L["5d"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["5d"]["Size"] = UDim2.new(0.7308584451675415, 0, 0.3499999940395355, 0);
G2L["5d"]["BorderColor3"] = Color3.fromRGB(28, 43, 54);
G2L["5d"]["Text"] = [[Input (Text, Number, Idk)]];
G2L["5d"]["Name"] = [[Title]];
G2L["5d"]["BackgroundTransparency"] = 1;
G2L["5d"]["Position"] = UDim2.new(0.4014981687068939, 0, 0.5, 0);

-- Workspace.UI_Library.Main.TabContainer.Template.Input.Title.UITextSizeConstraint
G2L["5e"] = Instance.new("UITextSizeConstraint", G2L["5d"]);
G2L["5e"]["MaxTextSize"] = 14;

-- Workspace.UI_Library.Main.TabContainer.Template.Keybind
G2L["5f"] = Instance.new("Frame", G2L["19"]);
G2L["5f"]["BorderSizePixel"] = 0;
G2L["5f"]["BackgroundColor3"] = Color3.fromRGB(23, 23, 23);
G2L["5f"]["Size"] = UDim2.new(1, -10, 0, 40);
G2L["5f"]["BorderColor3"] = Color3.fromRGB(28, 43, 54);
G2L["5f"]["Position"] = UDim2.new(0.010526316240429878, 0, 0.669211208820343, 0);
G2L["5f"]["Name"] = [[Keybind]];

-- Workspace.UI_Library.Main.TabContainer.Template.Keybind.UICorner
G2L["60"] = Instance.new("UICorner", G2L["5f"]);
G2L["60"]["CornerRadius"] = UDim.new(0, 4);

-- Workspace.UI_Library.Main.TabContainer.Template.Keybind.UIStroke
G2L["61"] = Instance.new("UIStroke", G2L["5f"]);
G2L["61"]["Color"] = Color3.fromRGB(51, 51, 51);

-- Workspace.UI_Library.Main.TabContainer.Template.Keybind.KeybindFrame
G2L["62"] = Instance.new("Frame", G2L["5f"]);
G2L["62"]["BorderSizePixel"] = 0;
G2L["62"]["BackgroundColor3"] = Color3.fromRGB(31, 31, 31);
G2L["62"]["AnchorPoint"] = Vector2.new(1, 0.5);
G2L["62"]["Size"] = UDim2.new(0.07888630777597427, 0, 0.6499999761581421, 0);
G2L["62"]["BorderColor3"] = Color3.fromRGB(28, 43, 54);
G2L["62"]["Position"] = UDim2.new(0.9744778275489807, 0, 0.5, 0);
G2L["62"]["Name"] = [[KeybindFrame]];

-- Workspace.UI_Library.Main.TabContainer.Template.Keybind.KeybindFrame.KeybindBox
G2L["63"] = Instance.new("TextBox", G2L["62"]);
G2L["63"]["BorderSizePixel"] = 0;
G2L["63"]["TextSize"] = 14;
G2L["63"]["TextWrapped"] = true;
G2L["63"]["TextScaled"] = true;
G2L["63"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["63"]["TextColor3"] = Color3.fromRGB(241, 241, 241);
G2L["63"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
G2L["63"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["63"]["BackgroundTransparency"] = 1;
G2L["63"]["PlaceholderText"] = [[Keybind]];
G2L["63"]["Size"] = UDim2.new(0.5588235259056091, 0, 0.5384615659713745, 0);
G2L["63"]["BorderColor3"] = Color3.fromRGB(28, 43, 54);
G2L["63"]["Text"] = [[...]];
G2L["63"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);
G2L["63"]["Name"] = [[KeybindBox]];
G2L["63"]["ClearTextOnFocus"] = false;

-- Workspace.UI_Library.Main.TabContainer.Template.Keybind.KeybindFrame.KeybindBox.UITextSizeConstraint
G2L["64"] = Instance.new("UITextSizeConstraint", G2L["63"]);
G2L["64"]["MaxTextSize"] = 14;

-- Workspace.UI_Library.Main.TabContainer.Template.Keybind.KeybindFrame.UIStroke
G2L["65"] = Instance.new("UIStroke", G2L["62"]);
G2L["65"]["Color"] = Color3.fromRGB(66, 66, 66);

-- Workspace.UI_Library.Main.TabContainer.Template.Keybind.KeybindFrame.UICorner
G2L["66"] = Instance.new("UICorner", G2L["62"]);
G2L["66"]["CornerRadius"] = UDim.new(0, 5);

-- Workspace.UI_Library.Main.TabContainer.Template.Keybind.Title
G2L["67"] = Instance.new("TextLabel", G2L["5f"]);
G2L["67"]["TextWrapped"] = true;
G2L["67"]["BorderSizePixel"] = 0;
G2L["67"]["TextScaled"] = true;
G2L["67"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["67"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["67"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
G2L["67"]["TextSize"] = 14;
G2L["67"]["TextColor3"] = Color3.fromRGB(241, 241, 241);
G2L["67"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["67"]["Size"] = UDim2.new(0.7308584451675415, 0, 0.3499999940395355, 0);
G2L["67"]["BorderColor3"] = Color3.fromRGB(28, 43, 54);
G2L["67"]["Text"] = [[Keybind]];
G2L["67"]["Name"] = [[Title]];
G2L["67"]["BackgroundTransparency"] = 1;
G2L["67"]["Position"] = UDim2.new(0.4014981687068939, 0, 0.5, 0);

-- Workspace.UI_Library.Main.TabContainer.Template.Keybind.Title.UITextSizeConstraint
G2L["68"] = Instance.new("UITextSizeConstraint", G2L["67"]);
G2L["68"]["MaxTextSize"] = 14;

-- Workspace.UI_Library.Main.TabContainer.Template.Label
G2L["69"] = Instance.new("Frame", G2L["19"]);
G2L["69"]["BorderSizePixel"] = 0;
G2L["69"]["BackgroundColor3"] = Color3.fromRGB(23, 23, 23);
G2L["69"]["Size"] = UDim2.new(1, -10, 0, 35);
G2L["69"]["BorderColor3"] = Color3.fromRGB(28, 43, 54);
G2L["69"]["Name"] = [[Label]];

-- Workspace.UI_Library.Main.TabContainer.Template.Label.UICorner
G2L["6a"] = Instance.new("UICorner", G2L["69"]);
G2L["6a"]["CornerRadius"] = UDim.new(0, 4);

-- Workspace.UI_Library.Main.TabContainer.Template.Label.UIStroke
G2L["6b"] = Instance.new("UIStroke", G2L["69"]);
G2L["6b"]["Color"] = Color3.fromRGB(41, 41, 41);

-- Workspace.UI_Library.Main.TabContainer.Template.Label.Title
G2L["6c"] = Instance.new("TextLabel", G2L["69"]);
G2L["6c"]["TextWrapped"] = true;
G2L["6c"]["BorderSizePixel"] = 0;
G2L["6c"]["TextScaled"] = true;
G2L["6c"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["6c"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["6c"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
G2L["6c"]["TextSize"] = 14;
G2L["6c"]["TextColor3"] = Color3.fromRGB(241, 241, 241);
G2L["6c"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["6c"]["Size"] = UDim2.new(0.9489558935165405, 0, 0.4000000059604645, 0);
G2L["6c"]["BorderColor3"] = Color3.fromRGB(28, 43, 54);
G2L["6c"]["Text"] = [[Last Week I Touched Grass]];
G2L["6c"]["Name"] = [[Title]];
G2L["6c"]["BackgroundTransparency"] = 1;
G2L["6c"]["Position"] = UDim2.new(0.5110738277435303, 0, 0.5, 0);

-- Workspace.UI_Library.Main.TabContainer.Template.Label.Title.UITextSizeConstraint
G2L["6d"] = Instance.new("UITextSizeConstraint", G2L["6c"]);
G2L["6d"]["MaxTextSize"] = 14;

-- Workspace.UI_Library.Main.TabContainer.Template.Label.ElementIndicator
G2L["6e"] = Instance.new("ImageLabel", G2L["69"]);
G2L["6e"]["BorderSizePixel"] = 0;
G2L["6e"]["ScaleType"] = Enum.ScaleType.Fit;
G2L["6e"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["6e"]["ImageTransparency"] = 0.6000000238418579;
G2L["6e"]["AnchorPoint"] = Vector2.new(1, 0.5);
G2L["6e"]["Image"] = [[rbxassetid://12974281519]];
G2L["6e"]["Size"] = UDim2.new(0.046371135860681534, 0, 0.5142859816551208, 0);
G2L["6e"]["BorderColor3"] = Color3.fromRGB(28, 43, 54);
G2L["6e"]["Name"] = [[ElementIndicator]];
G2L["6e"]["BackgroundTransparency"] = 1;
G2L["6e"]["Position"] = UDim2.new(0.9698048830032349, 0, 0.557142972946167, 0);

-- Workspace.UI_Library.Main.TabContainer.Template.UIPadding
G2L["6f"] = Instance.new("UIPadding", G2L["19"]);
G2L["6f"]["PaddingBottom"] = UDim.new(0, 5);

-- Workspace.UI_Library.Main.TabContainer.Template.ColorPicker
G2L["70"] = Instance.new("Frame", G2L["19"]);
G2L["70"]["BorderSizePixel"] = 0;
G2L["70"]["BackgroundColor3"] = Color3.fromRGB(23, 23, 23);
G2L["70"]["Size"] = UDim2.new(1, -10, 0, 120);
G2L["70"]["BorderColor3"] = Color3.fromRGB(28, 43, 54);
G2L["70"]["Position"] = UDim2.new(0.010526316240429878, 0, 0.5737704634666443, 0);
G2L["70"]["Name"] = [[ColorPicker]];

-- Workspace.UI_Library.Main.TabContainer.Template.ColorPicker.UICorner
G2L["71"] = Instance.new("UICorner", G2L["70"]);
G2L["71"]["CornerRadius"] = UDim.new(0, 4);

-- Workspace.UI_Library.Main.TabContainer.Template.ColorPicker.Darkness
G2L["72"] = Instance.new("ImageButton", G2L["70"]);
G2L["72"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["72"]["AnchorPoint"] = Vector2.new(1, 1);
G2L["72"]["Image"] = [[http://www.roblox.com/asset/?id=6523291212]];
G2L["72"]["Size"] = UDim2.new(0.03030303120613098, 0, 0.8583333492279053, 0);
G2L["72"]["Name"] = [[Darkness]];
G2L["72"]["ClipsDescendants"] = true;
G2L["72"]["BorderColor3"] = Color3.fromRGB(28, 43, 54);
G2L["72"]["Position"] = UDim2.new(0.9767979979515076, 0, 0.925000011920929, 0);
G2L["72"]["BackgroundTransparency"] = 1;

-- Workspace.UI_Library.Main.TabContainer.Template.ColorPicker.Darkness.SliderPoint
G2L["73"] = Instance.new("ImageButton", G2L["72"]);
G2L["73"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["73"]["ImageColor3"] = Color3.fromRGB(0, 0, 0);
G2L["73"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["73"]["Image"] = [[rbxassetid://3926309567]];
G2L["73"]["ImageRectSize"] = Vector2.new(48, 48);
G2L["73"]["Size"] = UDim2.new(0.7692307829856873, 0, 0.09708737581968307, 0);
G2L["73"]["Name"] = [[SliderPoint]];
G2L["73"]["BorderColor3"] = Color3.fromRGB(28, 43, 54);
G2L["73"]["ImageRectOffset"] = Vector2.new(628, 420);
G2L["73"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);
G2L["73"]["BackgroundTransparency"] = 1;

-- Workspace.UI_Library.Main.TabContainer.Template.ColorPicker.Darkness.UICorner
G2L["74"] = Instance.new("UICorner", G2L["72"]);
G2L["74"]["CornerRadius"] = UDim.new(0, 6);

-- Workspace.UI_Library.Main.TabContainer.Template.ColorPicker.Darkness.TintAdder
G2L["75"] = Instance.new("TextLabel", G2L["72"]);
G2L["75"]["TextWrapped"] = true;
G2L["75"]["TextScaled"] = true;
G2L["75"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["75"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["75"]["TextSize"] = 14;
G2L["75"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
G2L["75"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["75"]["BorderColor3"] = Color3.fromRGB(28, 43, 54);
G2L["75"]["Text"] = [[]];
G2L["75"]["Name"] = [[TintAdder]];
G2L["75"]["BackgroundTransparency"] = 0.800000011920929;

-- Workspace.UI_Library.Main.TabContainer.Template.ColorPicker.Darkness.TintAdder.UICorner
G2L["76"] = Instance.new("UICorner", G2L["75"]);
G2L["76"]["CornerRadius"] = UDim.new(0, 6);

-- Workspace.UI_Library.Main.TabContainer.Template.ColorPicker.Darkness.TintAdder.UITextSizeConstraint
G2L["77"] = Instance.new("UITextSizeConstraint", G2L["75"]);
G2L["77"]["MaxTextSize"] = 14;

-- Workspace.UI_Library.Main.TabContainer.Template.ColorPicker.Darkness.UIStroke
G2L["78"] = Instance.new("UIStroke", G2L["72"]);
G2L["78"]["Color"] = Color3.fromRGB(51, 51, 51);

-- Workspace.UI_Library.Main.TabContainer.Template.ColorPicker.Title
G2L["79"] = Instance.new("TextLabel", G2L["70"]);
G2L["79"]["TextWrapped"] = true;
G2L["79"]["ZIndex"] = 3;
G2L["79"]["BorderSizePixel"] = 0;
G2L["79"]["TextScaled"] = true;
G2L["79"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["79"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["79"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
G2L["79"]["TextSize"] = 14;
G2L["79"]["TextColor3"] = Color3.fromRGB(241, 241, 241);
G2L["79"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["79"]["Size"] = UDim2.new(0.5498839616775513, 0, 0.11666666716337204, 0);
G2L["79"]["BorderColor3"] = Color3.fromRGB(28, 43, 54);
G2L["79"]["Text"] = [[Color Picker]];
G2L["79"]["Name"] = [[Title]];
G2L["79"]["BackgroundTransparency"] = 1;
G2L["79"]["Position"] = UDim2.new(0.31322506070137024, 0, 0.18333333730697632, 0);

-- Workspace.UI_Library.Main.TabContainer.Template.ColorPicker.Title.UITextSizeConstraint
G2L["7a"] = Instance.new("UITextSizeConstraint", G2L["79"]);
G2L["7a"]["MaxTextSize"] = 14;

-- Workspace.UI_Library.Main.TabContainer.Template.ColorPicker.RGB
G2L["7b"] = Instance.new("Frame", G2L["70"]);
G2L["7b"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["7b"]["BackgroundTransparency"] = 1;
G2L["7b"]["Size"] = UDim2.new(0.5382830500602722, 0, 0.24166665971279144, 0);
G2L["7b"]["BorderColor3"] = Color3.fromRGB(28, 43, 54);
G2L["7b"]["Position"] = UDim2.new(0.03944315388798714, 0, 0.3333333432674408, 0);
G2L["7b"]["Name"] = [[RGB]];

-- Workspace.UI_Library.Main.TabContainer.Template.ColorPicker.RGB.UIListLayout
G2L["7c"] = Instance.new("UIListLayout", G2L["7b"]);
G2L["7c"]["FillDirection"] = Enum.FillDirection.Horizontal;
G2L["7c"]["Padding"] = UDim.new(0, 5);
G2L["7c"]["SortOrder"] = Enum.SortOrder.LayoutOrder;

-- Workspace.UI_Library.Main.TabContainer.Template.ColorPicker.RGB.GInput
G2L["7d"] = Instance.new("Frame", G2L["7b"]);
G2L["7d"]["ZIndex"] = 10;
G2L["7d"]["BorderSizePixel"] = 0;
G2L["7d"]["BackgroundColor3"] = Color3.fromRGB(31, 31, 31);
G2L["7d"]["AnchorPoint"] = Vector2.new(1, 0.5);
G2L["7d"]["LayoutOrder"] = 1;
G2L["7d"]["Size"] = UDim2.new(0.23275862634181976, 0, 0.931034505367279, 0);
G2L["7d"]["BorderColor3"] = Color3.fromRGB(28, 43, 54);
G2L["7d"]["Position"] = UDim2.new(0.3296017348766327, 0, 0.4958333373069763, 0);
G2L["7d"]["Name"] = [[GInput]];

-- Workspace.UI_Library.Main.TabContainer.Template.ColorPicker.RGB.GInput.UICorner
G2L["7e"] = Instance.new("UICorner", G2L["7d"]);
G2L["7e"]["CornerRadius"] = UDim.new(0, 5);

-- Workspace.UI_Library.Main.TabContainer.Template.ColorPicker.RGB.GInput.InputBox
G2L["7f"] = Instance.new("TextBox", G2L["7d"]);
G2L["7f"]["ZIndex"] = 10;
G2L["7f"]["BorderSizePixel"] = 0;
G2L["7f"]["TextSize"] = 12;
G2L["7f"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["7f"]["TextWrapped"] = true;
G2L["7f"]["TextScaled"] = true;
G2L["7f"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["7f"]["TextColor3"] = Color3.fromRGB(201, 201, 201);
G2L["7f"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
G2L["7f"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["7f"]["BackgroundTransparency"] = 1;
G2L["7f"]["PlaceholderText"] = [[G]];
G2L["7f"]["Size"] = UDim2.new(0.5962222218513489, 0, 0.5185185074806213, 0);
G2L["7f"]["BorderColor3"] = Color3.fromRGB(28, 43, 54);
G2L["7f"]["Text"] = [[]];
G2L["7f"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);
G2L["7f"]["Name"] = [[InputBox]];
G2L["7f"]["ClearTextOnFocus"] = false;

-- Workspace.UI_Library.Main.TabContainer.Template.ColorPicker.RGB.GInput.InputBox.UITextSizeConstraint
G2L["80"] = Instance.new("UITextSizeConstraint", G2L["7f"]);
G2L["80"]["MaxTextSize"] = 12;

-- Workspace.UI_Library.Main.TabContainer.Template.ColorPicker.RGB.GInput.UIStroke
G2L["81"] = Instance.new("UIStroke", G2L["7d"]);
G2L["81"]["Color"] = Color3.fromRGB(61, 61, 61);

-- Workspace.UI_Library.Main.TabContainer.Template.ColorPicker.RGB.RInput
G2L["82"] = Instance.new("Frame", G2L["7b"]);
G2L["82"]["ZIndex"] = 10;
G2L["82"]["BorderSizePixel"] = 0;
G2L["82"]["BackgroundColor3"] = Color3.fromRGB(31, 31, 31);
G2L["82"]["AnchorPoint"] = Vector2.new(1, 0.5);
G2L["82"]["Size"] = UDim2.new(0.23275862634181976, 0, 0.931034505367279, 0);
G2L["82"]["BorderColor3"] = Color3.fromRGB(28, 43, 54);
G2L["82"]["Position"] = UDim2.new(0.159964457154274, 0, 0.4958333373069763, 0);
G2L["82"]["Name"] = [[RInput]];

-- Workspace.UI_Library.Main.TabContainer.Template.ColorPicker.RGB.RInput.UICorner
G2L["83"] = Instance.new("UICorner", G2L["82"]);
G2L["83"]["CornerRadius"] = UDim.new(0, 5);

-- Workspace.UI_Library.Main.TabContainer.Template.ColorPicker.RGB.RInput.UIStroke
G2L["84"] = Instance.new("UIStroke", G2L["82"]);
G2L["84"]["Color"] = Color3.fromRGB(61, 61, 61);

-- Workspace.UI_Library.Main.TabContainer.Template.ColorPicker.RGB.RInput.InputBox
G2L["85"] = Instance.new("TextBox", G2L["82"]);
G2L["85"]["ZIndex"] = 11;
G2L["85"]["BorderSizePixel"] = 0;
G2L["85"]["TextSize"] = 12;
G2L["85"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["85"]["TextWrapped"] = true;
G2L["85"]["TextScaled"] = true;
G2L["85"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["85"]["TextColor3"] = Color3.fromRGB(201, 201, 201);
G2L["85"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
G2L["85"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["85"]["BackgroundTransparency"] = 1;
G2L["85"]["PlaceholderText"] = [[R]];
G2L["85"]["Size"] = UDim2.new(0.5959380269050598, 0, 0.5185185074806213, 0);
G2L["85"]["BorderColor3"] = Color3.fromRGB(28, 43, 54);
G2L["85"]["Text"] = [[]];
G2L["85"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);
G2L["85"]["Name"] = [[InputBox]];
G2L["85"]["ClearTextOnFocus"] = false;

-- Workspace.UI_Library.Main.TabContainer.Template.ColorPicker.RGB.RInput.InputBox.UITextSizeConstraint
G2L["86"] = Instance.new("UITextSizeConstraint", G2L["85"]);
G2L["86"]["MaxTextSize"] = 12;

-- Workspace.UI_Library.Main.TabContainer.Template.ColorPicker.RGB.BInput
G2L["87"] = Instance.new("Frame", G2L["7b"]);
G2L["87"]["ZIndex"] = 10;
G2L["87"]["BorderSizePixel"] = 0;
G2L["87"]["BackgroundColor3"] = Color3.fromRGB(31, 31, 31);
G2L["87"]["AnchorPoint"] = Vector2.new(1, 0.5);
G2L["87"]["LayoutOrder"] = 2;
G2L["87"]["Size"] = UDim2.new(0.23275862634181976, 0, 0.931034505367279, 0);
G2L["87"]["BorderColor3"] = Color3.fromRGB(28, 43, 54);
G2L["87"]["Position"] = UDim2.new(0.90625, 0, 0.4655172526836395, 0);
G2L["87"]["Name"] = [[BInput]];

-- Workspace.UI_Library.Main.TabContainer.Template.ColorPicker.RGB.BInput.UICorner
G2L["88"] = Instance.new("UICorner", G2L["87"]);
G2L["88"]["CornerRadius"] = UDim.new(0, 5);

-- Workspace.UI_Library.Main.TabContainer.Template.ColorPicker.RGB.BInput.InputBox
G2L["89"] = Instance.new("TextBox", G2L["87"]);
G2L["89"]["ZIndex"] = 10;
G2L["89"]["BorderSizePixel"] = 0;
G2L["89"]["TextSize"] = 12;
G2L["89"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["89"]["TextWrapped"] = true;
G2L["89"]["TextScaled"] = true;
G2L["89"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["89"]["TextColor3"] = Color3.fromRGB(201, 201, 201);
G2L["89"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
G2L["89"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["89"]["BackgroundTransparency"] = 1;
G2L["89"]["PlaceholderText"] = [[B]];
G2L["89"]["Size"] = UDim2.new(0.5962222218513489, 0, 0.5185185074806213, 0);
G2L["89"]["BorderColor3"] = Color3.fromRGB(28, 43, 54);
G2L["89"]["Text"] = [[]];
G2L["89"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);
G2L["89"]["Name"] = [[InputBox]];
G2L["89"]["ClearTextOnFocus"] = false;

-- Workspace.UI_Library.Main.TabContainer.Template.ColorPicker.RGB.BInput.InputBox.UITextSizeConstraint
G2L["8a"] = Instance.new("UITextSizeConstraint", G2L["89"]);
G2L["8a"]["MaxTextSize"] = 12;

-- Workspace.UI_Library.Main.TabContainer.Template.ColorPicker.RGB.BInput.UIStroke
G2L["8b"] = Instance.new("UIStroke", G2L["87"]);
G2L["8b"]["Color"] = Color3.fromRGB(61, 61, 61);

-- Workspace.UI_Library.Main.TabContainer.Template.ColorPicker.UIStroke
G2L["8c"] = Instance.new("UIStroke", G2L["70"]);
G2L["8c"]["Color"] = Color3.fromRGB(51, 51, 51);

-- Workspace.UI_Library.Main.TabContainer.Template.ColorPicker.Color
G2L["8d"] = Instance.new("ImageButton", G2L["70"]);
G2L["8d"]["Active"] = false;
G2L["8d"]["BorderSizePixel"] = 0;
G2L["8d"]["BackgroundColor3"] = Color3.fromRGB(99, 255, 0);
G2L["8d"]["Selectable"] = false;
G2L["8d"]["AnchorPoint"] = Vector2.new(1, 0.5);
G2L["8d"]["Image"] = [[http://www.roblox.com/asset/?id=6523286724]];
G2L["8d"]["Size"] = UDim2.new(0.3473193347454071, 0, 0.8583333492279053, 0);
G2L["8d"]["Name"] = [[Color]];
G2L["8d"]["BorderColor3"] = Color3.fromRGB(28, 43, 54);
G2L["8d"]["Position"] = UDim2.new(0.9234337210655212, 0, 0.4958333373069763, 0);
G2L["8d"]["BackgroundTransparency"] = 1;

-- Workspace.UI_Library.Main.TabContainer.Template.ColorPicker.Color.UICorner
G2L["8e"] = Instance.new("UICorner", G2L["8d"]);
G2L["8e"]["CornerRadius"] = UDim.new(0, 6);

-- Workspace.UI_Library.Main.TabContainer.Template.ColorPicker.Color.SliderPoint
G2L["8f"] = Instance.new("ImageButton", G2L["8d"]);
G2L["8f"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["8f"]["ImageColor3"] = Color3.fromRGB(0, 0, 0);
G2L["8f"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["8f"]["Image"] = [[rbxassetid://3926309567]];
G2L["8f"]["ImageRectSize"] = Vector2.new(48, 48);
G2L["8f"]["Size"] = UDim2.new(0.06711409240961075, 0, 0.09708737581968307, 0);
G2L["8f"]["Name"] = [[SliderPoint]];
G2L["8f"]["BorderColor3"] = Color3.fromRGB(28, 43, 54);
G2L["8f"]["ImageRectOffset"] = Vector2.new(628, 420);
G2L["8f"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);
G2L["8f"]["BackgroundTransparency"] = 1;

-- Workspace.UI_Library.Main.TabContainer.Template.ColorPicker.Color.TintAdder
G2L["90"] = Instance.new("TextLabel", G2L["8d"]);
G2L["90"]["TextWrapped"] = true;
G2L["90"]["TextScaled"] = true;
G2L["90"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["90"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["90"]["TextSize"] = 14;
G2L["90"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
G2L["90"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["90"]["BorderColor3"] = Color3.fromRGB(28, 43, 54);
G2L["90"]["Text"] = [[]];
G2L["90"]["Name"] = [[TintAdder]];
G2L["90"]["BackgroundTransparency"] = 0.800000011920929;

-- Workspace.UI_Library.Main.TabContainer.Template.ColorPicker.Color.TintAdder.UICorner
G2L["91"] = Instance.new("UICorner", G2L["90"]);
G2L["91"]["CornerRadius"] = UDim.new(0, 6);

-- Workspace.UI_Library.Main.TabContainer.Template.ColorPicker.Color.TintAdder.UITextSizeConstraint
G2L["92"] = Instance.new("UITextSizeConstraint", G2L["90"]);
G2L["92"]["MaxTextSize"] = 14;

-- Workspace.UI_Library.Main.TabContainer.Template.ColorPicker.Color.UIStroke
G2L["93"] = Instance.new("UIStroke", G2L["8d"]);
G2L["93"]["Color"] = Color3.fromRGB(51, 51, 51);

-- Workspace.UI_Library.Main.TabContainer.Template.ColorPicker.Rainbow
G2L["94"] = Instance.new("TextLabel", G2L["70"]);
G2L["94"]["TextWrapped"] = true;
G2L["94"]["ZIndex"] = 3;
G2L["94"]["BorderSizePixel"] = 0;
G2L["94"]["TextScaled"] = true;
G2L["94"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["94"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["94"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
G2L["94"]["TextSize"] = 14;
G2L["94"]["TextColor3"] = Color3.fromRGB(241, 241, 241);
G2L["94"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["94"]["Size"] = UDim2.new(0.40371230244636536, 0, 0.11666666716337204, 0);
G2L["94"]["BorderColor3"] = Color3.fromRGB(28, 43, 54);
G2L["94"]["Text"] = [[Rainbow]];
G2L["94"]["Name"] = [[Rainbow]];
G2L["94"]["BackgroundTransparency"] = 1;
G2L["94"]["Position"] = UDim2.new(0.32714617252349854, 0, 0.75, 0);

-- Workspace.UI_Library.Main.TabContainer.Template.ColorPicker.Rainbow.UITextSizeConstraint
G2L["95"] = Instance.new("UITextSizeConstraint", G2L["94"]);
G2L["95"]["MaxTextSize"] = 14;

-- Workspace.UI_Library.Main.TabContainer.Template.ColorPicker.Switch
G2L["96"] = Instance.new("Frame", G2L["70"]);
G2L["96"]["BorderSizePixel"] = 0;
G2L["96"]["BackgroundColor3"] = Color3.fromRGB(31, 31, 31);
G2L["96"]["AnchorPoint"] = Vector2.new(1, 0.5);
G2L["96"]["Size"] = UDim2.new(0.05336426943540573, 0, 0.19166666269302368, 0);
G2L["96"]["BorderColor3"] = Color3.fromRGB(28, 43, 54);
G2L["96"]["Position"] = UDim2.new(0.08816691488027573, 0, 0.75, 0);
G2L["96"]["Name"] = [[Switch]];

-- Workspace.UI_Library.Main.TabContainer.Template.ColorPicker.Switch.UICorner
G2L["97"] = Instance.new("UICorner", G2L["96"]);
G2L["97"]["CornerRadius"] = UDim.new(0, 15);

-- Workspace.UI_Library.Main.TabContainer.Template.ColorPicker.Switch.UIStroke
G2L["98"] = Instance.new("UIStroke", G2L["96"]);
G2L["98"]["Color"] = Color3.fromRGB(66, 66, 66);

-- Workspace.UI_Library.Main.TabContainer.Template.ColorPicker.Switch.Indicator
G2L["99"] = Instance.new("Frame", G2L["96"]);
G2L["99"]["BorderSizePixel"] = 0;
G2L["99"]["BackgroundColor3"] = Color3.fromRGB(140, 140, 140);
G2L["99"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["99"]["BackgroundTransparency"] = 1;
G2L["99"]["Size"] = UDim2.new(0.739130437374115, 0, 0.739130437374115, 0);
G2L["99"]["BorderColor3"] = Color3.fromRGB(28, 43, 54);
G2L["99"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);
G2L["99"]["Name"] = [[Indicator]];

-- Workspace.UI_Library.Main.TabContainer.Template.ColorPicker.Switch.Indicator.UICorner
G2L["9a"] = Instance.new("UICorner", G2L["99"]);
G2L["9a"]["CornerRadius"] = UDim.new(1, 0);

-- Workspace.UI_Library.Main.TabContainer.Template.ColorPicker.Switch.TextButton
G2L["9b"] = Instance.new("TextButton", G2L["96"]);
G2L["9b"]["BorderSizePixel"] = 0;
G2L["9b"]["TextTransparency"] = 1;
G2L["9b"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["9b"]["TextSize"] = 14;
G2L["9b"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["9b"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
G2L["9b"]["Size"] = UDim2.new(1.0046619176864624, 0, 1.04347825050354, 0);
G2L["9b"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["9b"]["Position"] = UDim2.new(0.000007998221917659976, 0, 0, 0);
G2L["9b"]["BackgroundTransparency"] = 1;

-- Workspace.UI_Library.Main.TabContainer.Template.Slider
G2L["9c"] = Instance.new("Frame", G2L["19"]);
G2L["9c"]["BorderSizePixel"] = 0;
G2L["9c"]["BackgroundColor3"] = Color3.fromRGB(23, 23, 23);
G2L["9c"]["Size"] = UDim2.new(1, -10, 0.060359157621860504, 35);
G2L["9c"]["BorderColor3"] = Color3.fromRGB(28, 43, 54);
G2L["9c"]["Position"] = UDim2.new(0.011337868869304657, 0, 0.3648744523525238, 0);
G2L["9c"]["Name"] = [[Slider]];

-- Workspace.UI_Library.Main.TabContainer.Template.Slider.UICorner
G2L["9d"] = Instance.new("UICorner", G2L["9c"]);
G2L["9d"]["CornerRadius"] = UDim.new(0, 4);

-- Workspace.UI_Library.Main.TabContainer.Template.Slider.UIStroke
G2L["9e"] = Instance.new("UIStroke", G2L["9c"]);
G2L["9e"]["Color"] = Color3.fromRGB(51, 51, 51);

-- Workspace.UI_Library.Main.TabContainer.Template.Slider.Main
G2L["9f"] = Instance.new("Frame", G2L["9c"]);
G2L["9f"]["BorderSizePixel"] = 0;
G2L["9f"]["BackgroundColor3"] = Color3.fromRGB(171, 0, 255);
G2L["9f"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["9f"]["BackgroundTransparency"] = 0.800000011920929;
G2L["9f"]["Size"] = UDim2.new(0.49651971459388733, 0, 0.2560487687587738, 0);
G2L["9f"]["BorderColor3"] = Color3.fromRGB(28, 43, 54);
G2L["9f"]["Position"] = UDim2.new(0.7279685735702515, 0, 0.6281291246414185, 0);
G2L["9f"]["Name"] = [[Main]];

-- Workspace.UI_Library.Main.TabContainer.Template.Slider.Main.UICorner
G2L["a0"] = Instance.new("UICorner", G2L["9f"]);
G2L["a0"]["CornerRadius"] = UDim.new(0, 6);

-- Workspace.UI_Library.Main.TabContainer.Template.Slider.Main.Progress
G2L["a1"] = Instance.new("Frame", G2L["9f"]);
G2L["a1"]["BorderSizePixel"] = 0;
G2L["a1"]["BackgroundColor3"] = Color3.fromRGB(171, 0, 255);
G2L["a1"]["Size"] = UDim2.new(0.8009684681892395, 0, 1, 0);
G2L["a1"]["BorderColor3"] = Color3.fromRGB(28, 43, 54);
G2L["a1"]["Name"] = [[Progress]];

-- Workspace.UI_Library.Main.TabContainer.Template.Slider.Main.Progress.UICorner
G2L["a2"] = Instance.new("UICorner", G2L["a1"]);
G2L["a2"]["CornerRadius"] = UDim.new(0, 6);

-- Workspace.UI_Library.Main.TabContainer.Template.Slider.Main.Information
G2L["a3"] = Instance.new("TextLabel", G2L["9f"]);
G2L["a3"]["TextWrapped"] = true;
G2L["a3"]["ZIndex"] = 5;
G2L["a3"]["BorderSizePixel"] = 0;
G2L["a3"]["TextScaled"] = true;
G2L["a3"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["a3"]["TextXAlignment"] = Enum.TextXAlignment.Right;
G2L["a3"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
G2L["a3"]["TextTransparency"] = 0.4000000059604645;
G2L["a3"]["TextSize"] = 14;
G2L["a3"]["TextColor3"] = Color3.fromRGB(241, 241, 241);
G2L["a3"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["a3"]["Size"] = UDim2.new(0.7850467562675476, 0, 1.0714285373687744, 0);
G2L["a3"]["BorderColor3"] = Color3.fromRGB(28, 43, 54);
G2L["a3"]["Text"] = [[70]];
G2L["a3"]["Name"] = [[Information]];
G2L["a3"]["BackgroundTransparency"] = 1;
G2L["a3"]["Position"] = UDim2.new(0.6031308770179749, 0, -0.7857142686843872, 0);

-- Workspace.UI_Library.Main.TabContainer.Template.Slider.Main.Information.UITextSizeConstraint
G2L["a4"] = Instance.new("UITextSizeConstraint", G2L["a3"]);
G2L["a4"]["MaxTextSize"] = 15;

-- Workspace.UI_Library.Main.TabContainer.Template.Slider.Main.Interact
G2L["a5"] = Instance.new("TextButton", G2L["9f"]);
G2L["a5"]["TextWrapped"] = true;
G2L["a5"]["ZIndex"] = 10;
G2L["a5"]["BorderSizePixel"] = 0;
G2L["a5"]["TextScaled"] = true;
G2L["a5"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["a5"]["TextSize"] = 14;
G2L["a5"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["a5"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
G2L["a5"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["a5"]["Name"] = [[Interact]];
G2L["a5"]["BorderColor3"] = Color3.fromRGB(28, 43, 54);
G2L["a5"]["Text"] = [[]];
G2L["a5"]["BackgroundTransparency"] = 1;

-- Workspace.UI_Library.Main.TabContainer.Template.Slider.Main.Interact.UITextSizeConstraint
G2L["a6"] = Instance.new("UITextSizeConstraint", G2L["a5"]);
G2L["a6"]["MaxTextSize"] = 14;

-- Workspace.UI_Library.Main.TabContainer.Template.Slider.Title
G2L["a7"] = Instance.new("TextLabel", G2L["9c"]);
G2L["a7"]["TextWrapped"] = true;
G2L["a7"]["BorderSizePixel"] = 0;
G2L["a7"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["a7"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["a7"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
G2L["a7"]["TextSize"] = 14;
G2L["a7"]["TextColor3"] = Color3.fromRGB(241, 241, 241);
G2L["a7"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["a7"]["Size"] = UDim2.new(0.7308584451675415, 0, 0.2560487687587738, 0);
G2L["a7"]["BorderColor3"] = Color3.fromRGB(28, 43, 54);
G2L["a7"]["Text"] = [[Slider]];
G2L["a7"]["Name"] = [[Title]];
G2L["a7"]["BackgroundTransparency"] = 1;
G2L["a7"]["Position"] = UDim2.new(0.4014981687068939, 0, 0.5, 0);

-- Workspace.UI_Library.Main.TabContainer.Template.Slider.Title.UITextSizeConstraint
G2L["a8"] = Instance.new("UITextSizeConstraint", G2L["a7"]);
G2L["a8"]["MaxTextSize"] = 14;

-- Workspace.UI_Library.Main.TabContainer.Template.Card
G2L["a9"] = Instance.new("Frame", G2L["19"]);
G2L["a9"]["BorderSizePixel"] = 0;
G2L["a9"]["BackgroundColor3"] = Color3.fromRGB(23, 23, 23);
G2L["a9"]["Size"] = UDim2.new(1, -10, 0, 180);
G2L["a9"]["BorderColor3"] = Color3.fromRGB(28, 43, 54);
G2L["a9"]["Position"] = UDim2.new(0.011337868869304657, 0, 0.06542056053876877, 0);
G2L["a9"]["Name"] = [[Card]];

-- Workspace.UI_Library.Main.TabContainer.Template.Card.UICorner
G2L["aa"] = Instance.new("UICorner", G2L["a9"]);
G2L["aa"]["CornerRadius"] = UDim.new(0, 4);

-- Workspace.UI_Library.Main.TabContainer.Template.Card.Title
G2L["ab"] = Instance.new("TextLabel", G2L["a9"]);
G2L["ab"]["TextWrapped"] = true;
G2L["ab"]["ZIndex"] = 3;
G2L["ab"]["BorderSizePixel"] = 0;
G2L["ab"]["TextScaled"] = true;
G2L["ab"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["ab"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["ab"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
G2L["ab"]["TextSize"] = 14;
G2L["ab"]["TextColor3"] = Color3.fromRGB(241, 241, 241);
G2L["ab"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["ab"]["Size"] = UDim2.new(0.5498839616775513, 0, 0.07777778059244156, 0);
G2L["ab"]["BorderColor3"] = Color3.fromRGB(28, 43, 54);
G2L["ab"]["Text"] = [[Card]];
G2L["ab"]["Name"] = [[Title]];
G2L["ab"]["BackgroundTransparency"] = 1;
G2L["ab"]["Position"] = UDim2.new(0.31322506070137024, 0, 0.1111111119389534, 0);

-- Workspace.UI_Library.Main.TabContainer.Template.Card.Title.UITextSizeConstraint
G2L["ac"] = Instance.new("UITextSizeConstraint", G2L["ab"]);
G2L["ac"]["MaxTextSize"] = 14;

-- Workspace.UI_Library.Main.TabContainer.Template.Card.UIStroke
G2L["ad"] = Instance.new("UIStroke", G2L["a9"]);
G2L["ad"]["Color"] = Color3.fromRGB(51, 51, 51);

-- Workspace.UI_Library.Main.TabContainer.Template.Card.State
G2L["ae"] = Instance.new("TextLabel", G2L["a9"]);
G2L["ae"]["TextWrapped"] = true;
G2L["ae"]["ZIndex"] = 5;
G2L["ae"]["BorderSizePixel"] = 0;
G2L["ae"]["TextScaled"] = true;
G2L["ae"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["ae"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["ae"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
G2L["ae"]["TextTransparency"] = 0.20000000298023224;
G2L["ae"]["TextSize"] = 15;
G2L["ae"]["TextColor3"] = Color3.fromRGB(182, 182, 182);
G2L["ae"]["AnchorPoint"] = Vector2.new(1, 0);
G2L["ae"]["Size"] = UDim2.new(0.43619489669799805, 0, 0.06111111119389534, 0);
G2L["ae"]["BorderColor3"] = Color3.fromRGB(28, 43, 54);
G2L["ae"]["Text"] = [[Secondary Title (Optional)]];
G2L["ae"]["Name"] = [[State]];
G2L["ae"]["BackgroundTransparency"] = 1;
G2L["ae"]["Position"] = UDim2.new(0.4733177423477173, 0, 0.17777778208255768, 0);

-- Workspace.UI_Library.Main.TabContainer.Template.Card.State.UITextSizeConstraint
G2L["af"] = Instance.new("UITextSizeConstraint", G2L["ae"]);
G2L["af"]["MaxTextSize"] = 11;

-- Workspace.UI_Library.Main.TabContainer.Template.Card.PreviewImage
G2L["b0"] = Instance.new("ImageLabel", G2L["a9"]);
G2L["b0"]["ZIndex"] = 5;
G2L["b0"]["ScaleType"] = Enum.ScaleType.Fit;
G2L["b0"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["b0"]["AnchorPoint"] = Vector2.new(1, 0);
G2L["b0"]["Image"] = [[rbxassetid://14167800463]];
G2L["b0"]["Size"] = UDim2.new(0.43619489669799805, 0, 0.5888888835906982, 0);
G2L["b0"]["BorderColor3"] = Color3.fromRGB(28, 43, 54);
G2L["b0"]["Name"] = [[PreviewImage]];
G2L["b0"]["BackgroundTransparency"] = 1;
G2L["b0"]["Position"] = UDim2.new(0.4733177423477173, 0, 0.2944444417953491, 0);

-- Workspace.UI_Library.Main.TabContainer.Template.Card.PreviewImage.UIStroke
G2L["b1"] = Instance.new("UIStroke", G2L["b0"]);
G2L["b1"]["Color"] = Color3.fromRGB(51, 51, 51);

-- Workspace.UI_Library.Main.TabContainer.Template.Card.PreviewImage.UICorner
G2L["b2"] = Instance.new("UICorner", G2L["b0"]);
G2L["b2"]["CornerRadius"] = UDim.new(0, 4);

-- Workspace.UI_Library.Main.TabContainer.Template.Card.Description
G2L["b3"] = Instance.new("TextLabel", G2L["a9"]);
G2L["b3"]["TextWrapped"] = true;
G2L["b3"]["ZIndex"] = 5;
G2L["b3"]["BorderSizePixel"] = 0;
G2L["b3"]["TextYAlignment"] = Enum.TextYAlignment.Top;
G2L["b3"]["TextScaled"] = true;
G2L["b3"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["b3"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["b3"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["b3"]["TextSize"] = 14;
G2L["b3"]["TextColor3"] = Color3.fromRGB(211, 211, 211);
G2L["b3"]["AnchorPoint"] = Vector2.new(1, 0);
G2L["b3"]["Size"] = UDim2.new(0.43619489669799805, 0, 0.35555556416511536, 0);
G2L["b3"]["BorderColor3"] = Color3.fromRGB(28, 43, 54);
G2L["b3"]["Text"] = [[Card Description]];
G2L["b3"]["Name"] = [[Description]];
G2L["b3"]["BackgroundTransparency"] = 1;
G2L["b3"]["Position"] = UDim2.new(0.9443153738975525, 0, 0.3499999940395355, 0);

-- Workspace.UI_Library.Main.TabContainer.Template.Card.Description.UITextSizeConstraint
G2L["b4"] = Instance.new("UITextSizeConstraint", G2L["b3"]);
G2L["b4"]["MaxTextSize"] = 14;

-- Workspace.UI_Library.Main.TabContainer.Template.Card.Button2
G2L["b5"] = Instance.new("TextButton", G2L["a9"]);
G2L["b5"]["TextWrapped"] = true;
G2L["b5"]["ZIndex"] = 106;
G2L["b5"]["BorderSizePixel"] = 0;
G2L["b5"]["AutoButtonColor"] = false;
G2L["b5"]["TextScaled"] = true;
G2L["b5"]["BackgroundColor3"] = Color3.fromRGB(231, 231, 231);
G2L["b5"]["TextSize"] = 14;
G2L["b5"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["b5"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
G2L["b5"]["Size"] = UDim2.new(0.21577729284763336, 0, 0.1599205881357193, 0);
G2L["b5"]["Name"] = [[Button2]];
G2L["b5"]["BorderColor3"] = Color3.fromRGB(9, 13, 16);
G2L["b5"]["Text"] = [[Contact]];
G2L["b5"]["Position"] = UDim2.new(0.7517401576042175, 0, 0.730555534362793, 0);
G2L["b5"]["BackgroundTransparency"] = 0.20000000298023224;

-- Workspace.UI_Library.Main.TabContainer.Template.Card.Button2.UICorner
G2L["b6"] = Instance.new("UICorner", G2L["b5"]);
G2L["b6"]["CornerRadius"] = UDim.new(0, 6);

-- Workspace.UI_Library.Main.TabContainer.Template.Card.Button2.UITextSizeConstraint
G2L["b7"] = Instance.new("UITextSizeConstraint", G2L["b5"]);
G2L["b7"]["MaxTextSize"] = 14;

-- Workspace.UI_Library.Main.TabContainer.Template.Card.Button1
G2L["b8"] = Instance.new("TextButton", G2L["a9"]);
G2L["b8"]["TextWrapped"] = true;
G2L["b8"]["ZIndex"] = 106;
G2L["b8"]["BorderSizePixel"] = 0;
G2L["b8"]["AutoButtonColor"] = false;
G2L["b8"]["TextScaled"] = true;
G2L["b8"]["BackgroundColor3"] = Color3.fromRGB(231, 231, 231);
G2L["b8"]["TextSize"] = 14;
G2L["b8"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["b8"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
G2L["b8"]["Size"] = UDim2.new(0.21561485528945923, 0, 0.1599999964237213, 0);
G2L["b8"]["Name"] = [[Button1]];
G2L["b8"]["BorderColor3"] = Color3.fromRGB(9, 13, 16);
G2L["b8"]["Text"] = [[Close]];
G2L["b8"]["Position"] = UDim2.new(0.5058004856109619, 0, 0.730555534362793, 0);
G2L["b8"]["BackgroundTransparency"] = 0.20000000298023224;

-- Workspace.UI_Library.Main.TabContainer.Template.Card.Button1.UICorner
G2L["b9"] = Instance.new("UICorner", G2L["b8"]);
G2L["b9"]["CornerRadius"] = UDim.new(0, 6);

-- Workspace.UI_Library.Main.TabContainer.Template.Card.Button1.UITextSizeConstraint
G2L["ba"] = Instance.new("UITextSizeConstraint", G2L["b8"]);
G2L["ba"]["MaxTextSize"] = 14;

-- Workspace.UI_Library.Main.TabContainer.Template.FoldableSectionTitle
G2L["bb"] = Instance.new("Frame", G2L["19"]);
G2L["bb"]["BorderSizePixel"] = 0;
G2L["bb"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["bb"]["BackgroundTransparency"] = 1;
G2L["bb"]["Size"] = UDim2.new(1, 0, 0, 15);
G2L["bb"]["BorderColor3"] = Color3.fromRGB(28, 43, 54);
G2L["bb"]["Name"] = [[FoldableSectionTitle]];

-- Workspace.UI_Library.Main.TabContainer.Template.FoldableSectionTitle.UIPadding
G2L["bc"] = Instance.new("UIPadding", G2L["bb"]);
G2L["bc"]["PaddingBottom"] = UDim.new(0, 5);

-- Workspace.UI_Library.Main.TabContainer.Template.FoldableSectionTitle.UIListLayout
G2L["bd"] = Instance.new("UIListLayout", G2L["bb"]);
G2L["bd"]["HorizontalAlignment"] = Enum.HorizontalAlignment.Center;
G2L["bd"]["Padding"] = UDim.new(0, 6);
G2L["bd"]["SortOrder"] = Enum.SortOrder.LayoutOrder;

-- Workspace.UI_Library.Main.TabContainer.Template.FoldableSectionTitle.Title
G2L["be"] = Instance.new("TextLabel", G2L["bb"]);
G2L["be"]["TextWrapped"] = true;
G2L["be"]["BorderSizePixel"] = 0;
G2L["be"]["TextScaled"] = true;
G2L["be"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["be"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["be"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
G2L["be"]["TextSize"] = 14;
G2L["be"]["TextColor3"] = Color3.fromRGB(176, 176, 176);
G2L["be"]["Size"] = UDim2.new(0.9808096289634705, 0, 0, 13);
G2L["be"]["BorderColor3"] = Color3.fromRGB(28, 43, 54);
G2L["be"]["Text"] = [[Elements]];
G2L["be"]["Name"] = [[Title]];
G2L["be"]["BackgroundTransparency"] = 1;
G2L["be"]["Position"] = UDim2.new(0, 5, 0, 0);

-- Workspace.UI_Library.Main.TabContainer.Template.FoldableSectionTitle.Title.UITextSizeConstraint
G2L["bf"] = Instance.new("UITextSizeConstraint", G2L["be"]);
G2L["bf"]["MaxTextSize"] = 13;

-- Workspace.UI_Library.Main.TabContainer.Template.FoldableSectionTitle.Title.TextButton
G2L["c0"] = Instance.new("TextButton", G2L["be"]);
G2L["c0"]["TextWrapped"] = true;
G2L["c0"]["BorderSizePixel"] = 0;
G2L["c0"]["TextTransparency"] = 1;
G2L["c0"]["TextScaled"] = true;
G2L["c0"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["c0"]["TextSize"] = 14;
G2L["c0"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["c0"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
G2L["c0"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["c0"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["c0"]["BackgroundTransparency"] = 1;

-- Workspace.UI_Library.Main.TabContainer.Template.FoldableSectionTitle.Title.TextButton.UITextSizeConstraint
G2L["c1"] = Instance.new("UITextSizeConstraint", G2L["c0"]);
G2L["c1"]["MaxTextSize"] = 14;

-- Workspace.UI_Library.Main.TabContainer.Template.FoldableSectionTitle.Title.ImageLabel
G2L["c2"] = Instance.new("ImageLabel", G2L["be"]);
G2L["c2"]["BorderSizePixel"] = 0;
G2L["c2"]["ScaleType"] = Enum.ScaleType.Fit;
G2L["c2"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["c2"]["AnchorPoint"] = Vector2.new(1, 0.5);
G2L["c2"]["Image"] = [[rbxassetid://11421095840]];
G2L["c2"]["Size"] = UDim2.new(0.0317460335791111, 0, 0.9333333373069763, 0);
G2L["c2"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["c2"]["BackgroundTransparency"] = 1;
G2L["c2"]["Position"] = UDim2.new(0.9841268658638, 0, 0.5, 0);

-- Workspace.UI_Library.Main.TabContainer.Template.Executor
G2L["c3"] = Instance.new("Frame", G2L["19"]);
G2L["c3"]["BorderSizePixel"] = 0;
G2L["c3"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["c3"]["BackgroundTransparency"] = 1;
G2L["c3"]["Size"] = UDim2.new(0, 432, 0, 177);
G2L["c3"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["c3"]["Position"] = UDim2.new(0.007972665131092072, 0, 0.5461115837097168, 0);
G2L["c3"]["Name"] = [[Executor]];

-- Workspace.UI_Library.Main.TabContainer.Template.Paragraph
G2L["c4"] = Instance.new("Frame", G2L["19"]);
G2L["c4"]["BorderSizePixel"] = 0;
G2L["c4"]["BackgroundColor3"] = Color3.fromRGB(23, 23, 23);
G2L["c4"]["Size"] = UDim2.new(1, -10, 0, 130);
G2L["c4"]["BorderColor3"] = Color3.fromRGB(28, 43, 54);
G2L["c4"]["Position"] = UDim2.new(0.010526316240429878, 0, 0.3149792551994324, 0);
G2L["c4"]["Name"] = [[Paragraph]];

-- Workspace.UI_Library.Main.TabContainer.Template.Paragraph.UICorner
G2L["c5"] = Instance.new("UICorner", G2L["c4"]);
G2L["c5"]["CornerRadius"] = UDim.new(0, 4);

-- Workspace.UI_Library.Main.TabContainer.Template.Paragraph.UIStroke
G2L["c6"] = Instance.new("UIStroke", G2L["c4"]);
G2L["c6"]["Color"] = Color3.fromRGB(41, 41, 41);

-- Workspace.UI_Library.Main.TabContainer.Template.Paragraph.Content
G2L["c7"] = Instance.new("TextLabel", G2L["c4"]);
G2L["c7"]["TextWrapped"] = true;
G2L["c7"]["BorderSizePixel"] = 0;
G2L["c7"]["TextYAlignment"] = Enum.TextYAlignment.Top;
G2L["c7"]["TextScaled"] = true;
G2L["c7"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["c7"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["c7"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
G2L["c7"]["TextSize"] = 13;
G2L["c7"]["TextColor3"] = Color3.fromRGB(181, 181, 181);
G2L["c7"]["AnchorPoint"] = Vector2.new(1, 0.5);
G2L["c7"]["Size"] = UDim2.new(0.94199538230896, 0, 0.7384615540504456, 0);
G2L["c7"]["BorderColor3"] = Color3.fromRGB(28, 43, 54);
G2L["c7"]["Text"] = [[The Message Goes Here]];
G2L["c7"]["Name"] = [[Content]];
G2L["c7"]["BackgroundTransparency"] = 1;
G2L["c7"]["Position"] = UDim2.new(0.9767979979515076, 0, 0.6211538314819336, 0);

-- Workspace.UI_Library.Main.TabContainer.Template.Paragraph.Content.UITextSizeConstraint
G2L["c8"] = Instance.new("UITextSizeConstraint", G2L["c7"]);
G2L["c8"]["MaxTextSize"] = 13;

-- Workspace.UI_Library.Main.TabContainer.Template.Paragraph.Title
G2L["c9"] = Instance.new("TextLabel", G2L["c4"]);
G2L["c9"]["TextWrapped"] = true;
G2L["c9"]["BorderSizePixel"] = 0;
G2L["c9"]["TextScaled"] = true;
G2L["c9"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["c9"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["c9"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
G2L["c9"]["TextSize"] = 14;
G2L["c9"]["TextColor3"] = Color3.fromRGB(241, 241, 241);
G2L["c9"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["c9"]["Size"] = UDim2.new(0.7308584451675415, 0, 0.10769230872392654, 0);
G2L["c9"]["BorderColor3"] = Color3.fromRGB(28, 43, 54);
G2L["c9"]["Text"] = [[Title]];
G2L["c9"]["Name"] = [[Title]];
G2L["c9"]["BackgroundTransparency"] = 1;
G2L["c9"]["Position"] = UDim2.new(0.4014981687068939, 0, 0.13846154510974884, 0);

-- Workspace.UI_Library.Main.TabContainer.Template.Paragraph.Title.UITextSizeConstraint
G2L["ca"] = Instance.new("UITextSizeConstraint", G2L["c9"]);
G2L["ca"]["MaxTextSize"] = 14;

-- Workspace.UI_Library.Main.TabContainer.Template.Paragraph.ElementIndicator
G2L["cb"] = Instance.new("ImageLabel", G2L["c4"]);
G2L["cb"]["BorderSizePixel"] = 0;
G2L["cb"]["ScaleType"] = Enum.ScaleType.Fit;
G2L["cb"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["cb"]["ImageTransparency"] = 0.6000000238418579;
G2L["cb"]["AnchorPoint"] = Vector2.new(1, 0.5);
G2L["cb"]["Image"] = [[rbxassetid://12974281519]];
G2L["cb"]["Size"] = UDim2.new(0.05336426943540573, 0, 0.17692308127880096, 0);
G2L["cb"]["BorderColor3"] = Color3.fromRGB(28, 43, 54);
G2L["cb"]["Name"] = [[ElementIndicator]];
G2L["cb"]["BackgroundTransparency"] = 1;
G2L["cb"]["Position"] = UDim2.new(0.9767979979515076, 0, 0.16153846681118011, 0);

-- Workspace.UI_Library.Main.Shadow
G2L["cc"] = Instance.new("Frame", G2L["2"]);
G2L["cc"]["ZIndex"] = 0;
G2L["cc"]["BorderSizePixel"] = 0;
G2L["cc"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["cc"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["cc"]["BackgroundTransparency"] = 1;
G2L["cc"]["Size"] = UDim2.new(1, 35, 1, 35);
G2L["cc"]["BorderColor3"] = Color3.fromRGB(28, 43, 54);
G2L["cc"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);
G2L["cc"]["Name"] = [[Shadow]];
-- Attributes
G2L["cc"]:SetAttribute([[InitialTransparency]], 1);

-- Workspace.UI_Library.Main.Shadow.Image
G2L["cd"] = Instance.new("ImageLabel", G2L["cc"]);
G2L["cd"]["ZIndex"] = 0;
G2L["cd"]["BorderSizePixel"] = 0;
G2L["cd"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["cd"]["ImageColor3"] = Color3.fromRGB(21, 21, 21);
G2L["cd"]["ImageTransparency"] = 0.4000000059604645;
G2L["cd"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["cd"]["Image"] = [[rbxassetid://5587865193]];
G2L["cd"]["Size"] = UDim2.new(1.600000023841858, 0, 1.2999999523162842, 0);
G2L["cd"]["BorderColor3"] = Color3.fromRGB(28, 43, 54);
G2L["cd"]["Name"] = [[Image]];
G2L["cd"]["BackgroundTransparency"] = 1;
G2L["cd"]["Position"] = UDim2.new(0.49836915731430054, 0, 0.5124777555465698, 0);
-- Attributes
G2L["cd"]:SetAttribute([[InitialTransparency]], 0.5);

-- Workspace.UI_Library.Main.Notifications
G2L["ce"] = Instance.new("Frame", G2L["2"]);
G2L["ce"]["BorderSizePixel"] = 0;
G2L["ce"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["ce"]["BackgroundTransparency"] = 0.4000000059604645;
G2L["ce"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["ce"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["ce"]["Visible"] = false;
G2L["ce"]["Name"] = [[Notifications]];

-- Workspace.UI_Library.Main.Notifications.Template
G2L["cf"] = Instance.new("Frame", G2L["ce"]);
G2L["cf"]["BorderSizePixel"] = 0;
G2L["cf"]["BackgroundColor3"] = Color3.fromRGB(17, 17, 17);
G2L["cf"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["cf"]["Size"] = UDim2.new(0, 288, 0, 166);
G2L["cf"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["cf"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);
G2L["cf"]["Name"] = [[Template]];

-- Workspace.UI_Library.Main.Notifications.Template.UIStroke
G2L["d0"] = Instance.new("UIStroke", G2L["cf"]);
G2L["d0"]["Color"] = Color3.fromRGB(61, 61, 61);
G2L["d0"]["Thickness"] = 1.25;
G2L["d0"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;

-- Workspace.UI_Library.Main.Notifications.Template.UICorner
G2L["d1"] = Instance.new("UICorner", G2L["cf"]);


-- Workspace.UI_Library.Main.Notifications.Template.Title
G2L["d2"] = Instance.new("TextLabel", G2L["cf"]);
G2L["d2"]["TextWrapped"] = true;
G2L["d2"]["ZIndex"] = 105;
G2L["d2"]["BorderSizePixel"] = 0;
G2L["d2"]["TextScaled"] = true;
G2L["d2"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["d2"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["d2"]["TextSize"] = 14;
G2L["d2"]["TextColor3"] = Color3.fromRGB(241, 241, 241);
G2L["d2"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["d2"]["Size"] = UDim2.new(0, 238, 0, 15);
G2L["d2"]["BorderColor3"] = Color3.fromRGB(28, 43, 54);
G2L["d2"]["Text"] = [[This Feature Is W.I.P]];
G2L["d2"]["Name"] = [[Title]];
G2L["d2"]["BackgroundTransparency"] = 1;
G2L["d2"]["Position"] = UDim2.new(0, 144, 0, 27);

-- Workspace.UI_Library.Main.Notifications.Template.Description
G2L["d3"] = Instance.new("TextLabel", G2L["cf"]);
G2L["d3"]["TextWrapped"] = true;
G2L["d3"]["ZIndex"] = 105;
G2L["d3"]["BorderSizePixel"] = 0;
G2L["d3"]["TextYAlignment"] = Enum.TextYAlignment.Top;
G2L["d3"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["d3"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
G2L["d3"]["TextTransparency"] = 0.20000000298023224;
G2L["d3"]["TextSize"] = 14;
G2L["d3"]["TextColor3"] = Color3.fromRGB(241, 241, 241);
G2L["d3"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["d3"]["Size"] = UDim2.new(0, 244, 0, 70);
G2L["d3"]["BorderColor3"] = Color3.fromRGB(28, 43, 54);
G2L["d3"]["Text"] = [[This feature is still in progress do you wish to continue]];
G2L["d3"]["Name"] = [[Description]];
G2L["d3"]["BackgroundTransparency"] = 1;
G2L["d3"]["Position"] = UDim2.new(0, 144, 0, 78);

-- Workspace.UI_Library.Main.Notifications.Template.Duration
G2L["d4"] = Instance.new("TextLabel", G2L["cf"]);
G2L["d4"]["TextWrapped"] = true;
G2L["d4"]["ZIndex"] = 105;
G2L["d4"]["BorderSizePixel"] = 0;
G2L["d4"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["d4"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["d4"]["TextSize"] = 14;
G2L["d4"]["TextColor3"] = Color3.fromRGB(241, 241, 241);
G2L["d4"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["d4"]["Size"] = UDim2.new(0, 21, 0, 15);
G2L["d4"]["BorderColor3"] = Color3.fromRGB(28, 43, 54);
G2L["d4"]["Text"] = [[5]];
G2L["d4"]["Name"] = [[Duration]];
G2L["d4"]["BackgroundTransparency"] = 1;
G2L["d4"]["Position"] = UDim2.new(0, 270, 0, 17);

-- Workspace.UI_Library.Main.Notifications.Template.Actions
G2L["d5"] = Instance.new("ScrollingFrame", G2L["cf"]);
G2L["d5"]["Active"] = true;
G2L["d5"]["ScrollingDirection"] = Enum.ScrollingDirection.X;
G2L["d5"]["ZIndex"] = 105;
G2L["d5"]["BorderSizePixel"] = 0;
G2L["d5"]["CanvasSize"] = UDim2.new(0, 0, 0, 0);
G2L["d5"]["ScrollBarImageTransparency"] = 1;
G2L["d5"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["d5"]["AutomaticCanvasSize"] = Enum.AutomaticSize.X;
G2L["d5"]["BackgroundTransparency"] = 1;
G2L["d5"]["Size"] = UDim2.new(0, 268, 0, 22);
G2L["d5"]["ScrollBarImageColor3"] = Color3.fromRGB(0, 0, 0);
G2L["d5"]["BorderColor3"] = Color3.fromRGB(28, 43, 54);
G2L["d5"]["ScrollBarThickness"] = 0;
G2L["d5"]["Position"] = UDim2.new(0.029694663360714912, 0, 0.7637817859649658, 0);
G2L["d5"]["Name"] = [[Actions]];

-- Workspace.UI_Library.Main.Notifications.Template.Actions.ButtonTemplate
G2L["d6"] = Instance.new("TextButton", G2L["d5"]);
G2L["d6"]["TextWrapped"] = true;
G2L["d6"]["ZIndex"] = 106;
G2L["d6"]["BorderSizePixel"] = 0;
G2L["d6"]["AutoButtonColor"] = false;
G2L["d6"]["BackgroundColor3"] = Color3.fromRGB(231, 231, 231);
G2L["d6"]["TextSize"] = 14;
G2L["d6"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["d6"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
G2L["d6"]["Size"] = UDim2.new(0, 80, 1, 0);
G2L["d6"]["Name"] = [[ButtonTemplate]];
G2L["d6"]["BorderColor3"] = Color3.fromRGB(9, 13, 16);
G2L["d6"]["Text"] = [[Contact]];
G2L["d6"]["Position"] = UDim2.new(0, 0, -0.1428571492433548, 0);
G2L["d6"]["BackgroundTransparency"] = 0.20000000298023224;

-- Workspace.UI_Library.Main.Notifications.Template.Actions.ButtonTemplate.UICorner
G2L["d7"] = Instance.new("UICorner", G2L["d6"]);
G2L["d7"]["CornerRadius"] = UDim.new(0, 6);

-- Workspace.UI_Library.Main.Notifications.Template.Actions.UIListLayout
G2L["d8"] = Instance.new("UIListLayout", G2L["d5"]);
G2L["d8"]["FillDirection"] = Enum.FillDirection.Horizontal;
G2L["d8"]["HorizontalAlignment"] = Enum.HorizontalAlignment.Center;
G2L["d8"]["Padding"] = UDim.new(0, 5);
G2L["d8"]["SortOrder"] = Enum.SortOrder.LayoutOrder;

-- Workspace.UI_Library.Main.Notifications.UIStroke
G2L["d9"] = Instance.new("UIStroke", G2L["ce"]);
G2L["d9"]["Color"] = Color3.fromRGB(61, 61, 61);
G2L["d9"]["Thickness"] = 1.25;
G2L["d9"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;

-- Workspace.UI_Library.Main.Notifications.UICorner
G2L["da"] = Instance.new("UICorner", G2L["ce"]);


-- Workspace.UI_Library.Notifications
G2L["db"] = Instance.new("Frame", G2L["1"]);
G2L["db"]["BorderSizePixel"] = 0;
G2L["db"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["db"]["AnchorPoint"] = Vector2.new(1, 1);
G2L["db"]["BackgroundTransparency"] = 1;
G2L["db"]["Size"] = UDim2.new(0, 296, 0, 536);
G2L["db"]["ClipsDescendants"] = true;
G2L["db"]["BorderColor3"] = Color3.fromRGB(28, 43, 54);
G2L["db"]["Position"] = UDim2.new(1, -25, 1, -25);
G2L["db"]["Name"] = [[Notifications]];

-- Workspace.UI_Library.Notifications.UIListLayout
G2L["dc"] = Instance.new("UIListLayout", G2L["db"]);
G2L["dc"]["VerticalAlignment"] = Enum.VerticalAlignment.Bottom;
G2L["dc"]["HorizontalAlignment"] = Enum.HorizontalAlignment.Center;
G2L["dc"]["Padding"] = UDim.new(0, 4);
G2L["dc"]["SortOrder"] = Enum.SortOrder.LayoutOrder;

-- Workspace.UI_Library.Notifications.Error
G2L["dd"] = Instance.new("Frame", G2L["db"]);
G2L["dd"]["ZIndex"] = 100;
G2L["dd"]["BorderSizePixel"] = 0;
G2L["dd"]["BackgroundColor3"] = Color3.fromRGB(17, 17, 17);
G2L["dd"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["dd"]["Size"] = UDim2.new(0, 295, 0, 115);
G2L["dd"]["BorderColor3"] = Color3.fromRGB(28, 43, 54);
G2L["dd"]["Position"] = UDim2.new(0.5, 0, 0.8924853205680847, 0);
G2L["dd"]["Visible"] = false;
G2L["dd"]["Name"] = [[Error]];

-- Workspace.UI_Library.Notifications.Error.UICorner
G2L["de"] = Instance.new("UICorner", G2L["dd"]);


-- Workspace.UI_Library.Notifications.Error.Title
G2L["df"] = Instance.new("TextLabel", G2L["dd"]);
G2L["df"]["TextWrapped"] = true;
G2L["df"]["ZIndex"] = 105;
G2L["df"]["BorderSizePixel"] = 0;
G2L["df"]["TextScaled"] = true;
G2L["df"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["df"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["df"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["df"]["TextSize"] = 14;
G2L["df"]["TextColor3"] = Color3.fromRGB(255, 79, 56);
G2L["df"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["df"]["Size"] = UDim2.new(0, 233, 0, 15);
G2L["df"]["BorderColor3"] = Color3.fromRGB(28, 43, 54);
G2L["df"]["Text"] = [[Error]];
G2L["df"]["Name"] = [[Title]];
G2L["df"]["BackgroundTransparency"] = 1;
G2L["df"]["Position"] = UDim2.new(0, 159, 0, 21);

-- Workspace.UI_Library.Notifications.Error.Description
G2L["e0"] = Instance.new("TextLabel", G2L["dd"]);
G2L["e0"]["TextWrapped"] = true;
G2L["e0"]["ZIndex"] = 105;
G2L["e0"]["BorderSizePixel"] = 0;
G2L["e0"]["TextYAlignment"] = Enum.TextYAlignment.Top;
G2L["e0"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["e0"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["e0"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
G2L["e0"]["TextTransparency"] = 0.20000000298023224;
G2L["e0"]["TextSize"] = 14;
G2L["e0"]["TextColor3"] = Color3.fromRGB(241, 241, 241);
G2L["e0"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["e0"]["Size"] = UDim2.new(0, 269, 0, 38);
G2L["e0"]["BorderColor3"] = Color3.fromRGB(28, 43, 54);
G2L["e0"]["Text"] = [[Failed Loading UI Library]];
G2L["e0"]["Name"] = [[Description]];
G2L["e0"]["BackgroundTransparency"] = 1;
G2L["e0"]["Position"] = UDim2.new(0, 149, 0, 57);

-- Workspace.UI_Library.Notifications.Error.Icon
G2L["e1"] = Instance.new("ImageButton", G2L["dd"]);
G2L["e1"]["ZIndex"] = 105;
G2L["e1"]["BorderSizePixel"] = 0;
G2L["e1"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["e1"]["ImageColor3"] = Color3.fromRGB(255, 79, 56);
G2L["e1"]["LayoutOrder"] = 5;
G2L["e1"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["e1"]["Image"] = [[rbxassetid://11419713314]];
G2L["e1"]["Size"] = UDim2.new(0, 20, 0, 20);
G2L["e1"]["Name"] = [[Icon]];
G2L["e1"]["BorderColor3"] = Color3.fromRGB(28, 43, 54);
G2L["e1"]["Position"] = UDim2.new(0, 25, 0, 21);
G2L["e1"]["BackgroundTransparency"] = 1;

-- Workspace.UI_Library.Notifications.Error.Actions
G2L["e2"] = Instance.new("ScrollingFrame", G2L["dd"]);
G2L["e2"]["Active"] = true;
G2L["e2"]["ScrollingDirection"] = Enum.ScrollingDirection.X;
G2L["e2"]["ZIndex"] = 105;
G2L["e2"]["BorderSizePixel"] = 0;
G2L["e2"]["CanvasSize"] = UDim2.new(0, 0, 0, 0);
G2L["e2"]["ScrollBarImageTransparency"] = 1;
G2L["e2"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["e2"]["AutomaticCanvasSize"] = Enum.AutomaticSize.X;
G2L["e2"]["BackgroundTransparency"] = 1;
G2L["e2"]["Size"] = UDim2.new(0, 268, 0, 22);
G2L["e2"]["ScrollBarImageColor3"] = Color3.fromRGB(0, 0, 0);
G2L["e2"]["BorderColor3"] = Color3.fromRGB(28, 43, 54);
G2L["e2"]["ScrollBarThickness"] = 0;
G2L["e2"]["Position"] = UDim2.new(0.05400018021464348, 0, 0.7095649838447571, 0);
G2L["e2"]["Name"] = [[Actions]];

-- Workspace.UI_Library.Notifications.Error.Actions.ButtonTemplate
G2L["e3"] = Instance.new("TextButton", G2L["e2"]);
G2L["e3"]["TextWrapped"] = true;
G2L["e3"]["ZIndex"] = 106;
G2L["e3"]["BorderSizePixel"] = 0;
G2L["e3"]["BackgroundColor3"] = Color3.fromRGB(231, 231, 231);
G2L["e3"]["TextSize"] = 14;
G2L["e3"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["e3"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
G2L["e3"]["Size"] = UDim2.new(0, 80, 1, 0);
G2L["e3"]["Name"] = [[ButtonTemplate]];
G2L["e3"]["BorderColor3"] = Color3.fromRGB(9, 13, 16);
G2L["e3"]["Text"] = [[Contact]];
G2L["e3"]["Position"] = UDim2.new(0, 0, -0.1428571492433548, 0);
G2L["e3"]["BackgroundTransparency"] = 0.20000000298023224;

-- Workspace.UI_Library.Notifications.Error.Actions.ButtonTemplate.UICorner
G2L["e4"] = Instance.new("UICorner", G2L["e3"]);
G2L["e4"]["CornerRadius"] = UDim.new(0, 6);

-- Workspace.UI_Library.Notifications.Error.Actions.UIListLayout
G2L["e5"] = Instance.new("UIListLayout", G2L["e2"]);
G2L["e5"]["FillDirection"] = Enum.FillDirection.Horizontal;
G2L["e5"]["HorizontalAlignment"] = Enum.HorizontalAlignment.Right;
G2L["e5"]["Padding"] = UDim.new(0, 5);
G2L["e5"]["SortOrder"] = Enum.SortOrder.LayoutOrder;

-- Workspace.UI_Library.Notifications.Error.Shadow
G2L["e6"] = Instance.new("Frame", G2L["dd"]);
G2L["e6"]["ZIndex"] = 0;
G2L["e6"]["BorderSizePixel"] = 0;
G2L["e6"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["e6"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["e6"]["BackgroundTransparency"] = 1;
G2L["e6"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["e6"]["BorderColor3"] = Color3.fromRGB(28, 43, 54);
G2L["e6"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);
G2L["e6"]["Visible"] = false;
G2L["e6"]["Name"] = [[Shadow]];
-- Attributes
G2L["e6"]:SetAttribute([[InitialTransparency]], 1);

-- Workspace.UI_Library.Notifications.Error.Shadow.Image
G2L["e7"] = Instance.new("ImageLabel", G2L["e6"]);
G2L["e7"]["ZIndex"] = 0;
G2L["e7"]["BorderSizePixel"] = 0;
G2L["e7"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["e7"]["ImageColor3"] = Color3.fromRGB(21, 21, 21);
G2L["e7"]["ImageTransparency"] = 0.4000000059604645;
G2L["e7"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["e7"]["Image"] = [[rbxassetid://5587865193]];
G2L["e7"]["Size"] = UDim2.new(1.600000023841858, 0, 1.2999999523162842, 0);
G2L["e7"]["BorderColor3"] = Color3.fromRGB(28, 43, 54);
G2L["e7"]["Name"] = [[Image]];
G2L["e7"]["BackgroundTransparency"] = 1;
G2L["e7"]["Position"] = UDim2.new(0.5074766278266907, 0, 0.5098039507865906, 0);
-- Attributes
G2L["e7"]:SetAttribute([[InitialTransparency]], 0.5);

-- Workspace.UI_Library.Notifications.Error.Duration
G2L["e8"] = Instance.new("TextLabel", G2L["dd"]);
G2L["e8"]["TextWrapped"] = true;
G2L["e8"]["ZIndex"] = 105;
G2L["e8"]["BorderSizePixel"] = 0;
G2L["e8"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["e8"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["e8"]["TextSize"] = 14;
G2L["e8"]["TextColor3"] = Color3.fromRGB(241, 241, 241);
G2L["e8"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["e8"]["Size"] = UDim2.new(0, 21, 0, 15);
G2L["e8"]["BorderColor3"] = Color3.fromRGB(28, 43, 54);
G2L["e8"]["Text"] = [[5]];
G2L["e8"]["Name"] = [[Duration]];
G2L["e8"]["BackgroundTransparency"] = 1;
G2L["e8"]["Position"] = UDim2.new(0, 273, 0, 21);

-- Workspace.UI_Library.Notifications.Error.UIStroke
G2L["e9"] = Instance.new("UIStroke", G2L["dd"]);
G2L["e9"]["Color"] = Color3.fromRGB(61, 61, 61);
G2L["e9"]["Thickness"] = 1.25;
G2L["e9"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;

-- Workspace.UI_Library.Notifications.Warning
G2L["ea"] = Instance.new("Frame", G2L["db"]);
G2L["ea"]["ZIndex"] = 100;
G2L["ea"]["BorderSizePixel"] = 0;
G2L["ea"]["BackgroundColor3"] = Color3.fromRGB(17, 17, 17);
G2L["ea"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["ea"]["Size"] = UDim2.new(0, 295, 0, 115);
G2L["ea"]["BorderColor3"] = Color3.fromRGB(28, 43, 54);
G2L["ea"]["Position"] = UDim2.new(0.5, 0, 0.8924853205680847, 0);
G2L["ea"]["Visible"] = false;
G2L["ea"]["Name"] = [[Warning]];

-- Workspace.UI_Library.Notifications.Warning.UICorner
G2L["eb"] = Instance.new("UICorner", G2L["ea"]);


-- Workspace.UI_Library.Notifications.Warning.Title
G2L["ec"] = Instance.new("TextLabel", G2L["ea"]);
G2L["ec"]["TextWrapped"] = true;
G2L["ec"]["ZIndex"] = 105;
G2L["ec"]["BorderSizePixel"] = 0;
G2L["ec"]["TextScaled"] = true;
G2L["ec"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["ec"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["ec"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["ec"]["TextSize"] = 14;
G2L["ec"]["TextColor3"] = Color3.fromRGB(241, 235, 54);
G2L["ec"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["ec"]["Size"] = UDim2.new(0, 233, 0, 15);
G2L["ec"]["BorderColor3"] = Color3.fromRGB(28, 43, 54);
G2L["ec"]["Text"] = [[Warning]];
G2L["ec"]["Name"] = [[Title]];
G2L["ec"]["BackgroundTransparency"] = 1;
return G2L
