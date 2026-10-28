repeat task.wait() until game:IsLoaded()
if getgenv().IS_SATURN_LOADED then
    return
end
getgenv().IS_SATURN_LOADED = true
getgenv().SATURN_FUNCTIONS = ""
getgenv().as = ""
local timetook = tick()
local api,AuraIS,ez,fe2,iconlib,fpsandping = loadstring(game:HttpGet("https://github.com/AnAvaragelilmemer/frameworker/blob/main/source.lua?raw=true"))(),loadstring(game:HttpGet("https://github.com/AnAvaragelilmemer/saturn/blob/main/libraries/AuraIS.lua?raw=true"))(),loadstring(game:HttpGet("https://github.com/AnAvaragelilmemer/saturn/blob/main/libraries/esp?raw=true"))(),loadstring(game:HttpGet("https://github.com/AnAvaragelilmemer/scripts/blob/main/fe2notif?raw=true"))(),loadstring(game:HttpGet("https://github.com/AnAvaragelilmemer/saturn/blob/main/assets/icons.lua?raw=true"))(),loadstring(game:HttpGet("https://github.com/AnAvaragelilmemer/saturn/blob/main/libraries/pingandfps.lua?raw=true"))()
getgenv().SATURNFPS.Enabled = false
getgenv().Ping.Enabled = false
if not toclipboard or not getclipboard then warn("Your Executor doesn't support toclipboard/getclipboard (executor: "..identifyexecutor()..")") end
local saturnfolder = {
    txt ={
    "Saturn_Client/HttpGetGrabber.txt",
    "Saturn_Client/antiwebhook.txt",
    },
    folders = {
    "Saturn_Client",
    "Saturn_Client/Music",
    "Saturn_Client/Assets",
    "Saturn_Client/Scripts",
    "Saturn_Client/Waypoints"
    },
    furina = {
    "Saturn_Client/Assets/furina1.jpg",
    "Saturn_Client/Assets/furina2.jpg",
    "Saturn_Client/Assets/furina3.jpg",
    },
}
if not isfolder("Saturn_Client") then
local function downloadfolders()
for i,v in next, saturnfolder.folders do
if not isfolder(v) then
game:GetService("StarterGui"):SetCore("SendNotification",{Title = "Saturn",Text = "Downloading "..v.."...",Duration=1})
makefolder(v)
end
end
for i,v in next, saturnfolder.txt do
if not isfile(v) then
game:GetService("StarterGui"):SetCore("SendNotification",{Title = "Saturn",Text = "Downloading "..v.."...",Duration=1})
if v == "Saturn_Client/HttpGetGrabber.txt" then
    writefile("Saturn_Client/HttpGetGrabber.txt","--dis where the webhooks go when you enable Save link as .txt\n \n")
elseif v == "Saturn_Client/antiwebhook.txt" then
    writefile("Saturn_Client/antiwebhook.txt","--dis where the webhooks go when you enable Save webhook as .txt\n \n")
end
end
end
for i,v in next, saturnfolder.furina do
if not isfile(v) then
    game:GetService("StarterGui"):SetCore("SendNotification",{Title = "Saturn",Text = "Downloading : "..v,Duration=1})
    for i = 1,3 do
    writefile("Saturn_Client/Assets/furina"..i..".jpg",game:HttpGet("https://github.com/AnAvaragelilmemer/saturn/blob/main/assets/furina"
            ..i..".jpg?raw=true"))
    end
end
end
end
task.spawn(downloadfolders)
end
ez.enabled = false;ez.tracer = false;ez.headdot = false;ez.tag = false;ez.rainbow = false;ez.rainbowspeed = 3;ez.teamcheck = false;ez.teamcolor = false;ez.renderrange = 1/0
if not game.Players.LocalPlayer.Character then
repeat task.wait(4) fe2.alert("Finding LocalPlayer's Character",nil,3,'rainbow') until game.Players.LocalPlayer.Character
end
local service = api.service
local flashbackp
local beforeflingposition
local lplr = service.Players.LocalPlayer
local RunService,lighting,tpservice,HttpService,Request,playerlist,metatable,viewport,AssetService = cloneref(service.RunService),cloneref(service.Lighting),cloneref(service.TeleportService),cloneref(service.HttpService),http_request or request,cloneref(service.Players),getrawmetatable(game),workspace.CurrentCamera.ViewportSize/2,service.AssetService
local oldnamecall = metatable.__namecall
local defaultshadows,defaultoutdoor,defaultbrightness,defaultfogcolor,defaultfogend,defaulttime,GetPlacesAsync = lighting.GlobalShadows,lighting.OutdoorAmbient,lighting.Brightness,lighting.FogColor,lighting.FogEnd,lighting.ClockTime,AssetService:GetGamePlacesAsync()
local grabmusicfromdirectory = listfiles("Saturn_Client/Music")
local requestthing 
local executor = tostring(identifyexecutor())
local combaticon = iconlib.icons.combat
local movementicon = iconlib.icons.movement
local supported_executors = {"Fluxus","Delta","Codex","Hydrogen","Wave"}
local flyhook = {"BodyVelocity","BodyGyro"}
local malicious_scripts = {"https://raw.githubusercontent.com/h4xal0t/wtf/main/BetterRobloxNotificationsUI.lua"}
local music = api.new("Sound",{Parent = service.CoreGui,SoundId = "rbxassetid://2865227271",Name = api:randomstring(),Looped = false})
local deathsound = api.new("Sound",{Parent = service.CoreGui,SoundId = "rbxassetid://2866718318",Name = api:randomstring(10)})
local function playmusic(id)
    if id == "REPLAYING" then
    music:Play()
    return
    elseif id == "STOPPING" then
    music:Stop()
    return
    elseif id == "onlyplaywhenmusicisntworking" then
    music.SoundId = "rbxassetid://7147226095"
    music:Play()
    return
end
if isfile("Saturn_Client/Music/"..id) then
for i =1,2 do 
    pcall(function()
    music.SoundId = getcustomasset("Saturn_Client/Music/"..id)
    music:Play()
    end)
    end
else
    music.SoundId = "rbxassetid://"..id
    music:Play()
end
end
local function teleport(cframe)
    lplr.Character.HumanoidRootPart.CFrame = cframe
end
local function lerp(cframe,time,duration)
local stopin = duration or 0.5
local timer = tick()
repeat task.wait()
lplr.Character.HumanoidRootPart.CFrame = lplr.Character.HumanoidRootPart.CFrame:Lerp(cframe,time)
until tick()-timer > stopin
end
local function tweenteleport(cframe,time) 
service.TweenService:Create(lplr.Character.HumanoidRootPart, TweenInfo.new(time), {CFrame = cframe}):Play() 
end
local function bloxfruittween(Pos)
    Distance = (Pos.Position - lplr.Character.HumanoidRootPart.Position).Magnitude
        if lplr.Character.Humanoid.Sit == true then lplr.Character.Humanoid.Sit = false end
        pcall(function() tween = game:GetService("TweenService"):Create(lplr.Character.HumanoidRootPart,TweenInfo.new(Distance/270,Enum.EasingStyle.Linear),{CFrame = Pos}) end)
        tween:Play()
        if Distance <= 110 then
            tween:Cancel()
            teleport(Pos)
        end
end
local playinganimation
local animation = Instance.new("Animation")
local motionblur = Instance.new("BlurEffect")
motionblur.Parent = lighting
motionblur.Name = api:randomstring()
motionblur.Enabled = false
local lv = Vector3.zero
local function playanimation(v)
animation.AnimationId = api:getasset(v)
    local succes,err = pcall(function() playinganimation = lplr.Character.Humanoid:LoadAnimation(animation) end)
	if succes then
    playinganimation.Looped = true
    playinganimation:Play()
	end
end
local camera = workspace.CurrentCamera
local SaturnSettings = {
    hitbox = false,
    teamcheck = false,
    hitboxcolor = Color3.new(1,1,1),
    hitboxsize = 15,
    hitboxtranparency = 0.5,
    obbygodmode = false,
    fullbright = false,
    timechanger = false,
    time = 14,
    FOV = false,
    defaultFOV = workspace.CurrentCamera.FieldOfView,
    FOVnumber = 70,
    speedtoggle = false,
    speed = 0,
    speedmethod = "TranslateBy",
    strafejump = false,
    strafepower = 7,
    fogenabled = false,
    fogcolor = Color3.new(1,1,1),
    fogend = 1000,
    brightnesstog = false,
    brightness = 0,
    speedtoggle = false,
    speed = 1,
    speedmethod = "TranslateBy",
    alwaysjump = false,
    alwaysjumpmethod = "Legit",
    alwaysjumpdivided = 2,
    jetpack = false,
    jetpackmethod = "Classic",
    noclip = false,
    spinbot = false,
    spinbotpitch = 0,
    spinbotyaw = 100,
    spinbotroll = 0,
    flashback = false,
    flashbackdelay = 1,
    blink = false,
    strafejump = false,
    strafejumpslow = 5,
    position = lplr.Character.HumanoidRootPart.CFrame,
    positionMethod = "Instant",
    positionTweenSpeed = 0.5,
    diemethod = "ChangeState",
    gotoMethod = "Instant",
    gotoTweenSpeed = 0.5,
    spamtoggle = false,
    spammessage = "hi",
    spamdelay = 2,
    ipp = false,
    autoreconnect = false,
    tweenteleportspeed = 3,
    tweenteleportstyle = "Linear",
    antifling = false,
    notif = false,
    developermode = false,
    playerjoiningnotif = false,
    playerleavingnotif = false,
    diedsound = false,
    clientantikick = false,
    antiafk = false,
    antirobuxstealer = false,
    antirobuxstealercopyurl = false,
    antiwebhook = false,
    antiwebhookcopyurl = false,
    aimbot = false,
    aimbotteamcheck = false,
    aimbotsmoothing = 0.5,
    targetpart = "Head",
    wallcheck = false,
    ippdelay = 0.1,
    antiwebhooksaving = false,
    coolerblur = false,
    coolerblurdisabled = false,
    flytoggle = false,
    flyspeed = 150,
    upbutton = false,
    antirobuxstealertxt = false,
    cfg = false,
    flymethod = "10% Detection rate",
    flyplatform = true,
    ServerHopMethod = "Random",
    topmost = false,
    anchored = false,
    WaypointMethod = "Instant",
    WaypointTweenSpeed = 0.5,
    WaypointIncludeGameName = false,
    autointeract = false,
    alivecheck = false
}
local function getClosest(cframe)
          local ray = Ray.new(cframe.Position, cframe.LookVector).Unit
          
          local target = nil
          local mag = math.huge
          
          for i,v in pairs(game.Players:GetPlayers()) do
              if v.Character and v.Character:FindFirstChild("Head") and v.Character:FindFirstChild("HumanoidRootPart") and v ~= game.Players.LocalPlayer and (v.Team ~= game.Players.LocalPlayer.Team or (not SaturnSettings.aimbotteamcheck)) then
                if SaturnSettings.wallcheck and #camera:GetPartsObscuringTarget({v.Character:FindFirstChild(SaturnSettings.targetpart).Position,v.Character,lplr.Character},{v.Character,lplr.Character}) > 0 then continue end
                  local magBuf = (v.Character.Head.Position - ray:ClosestPoint(v.Character.Head.Position)).Magnitude
                  
                  if magBuf < mag then
                      mag = magBuf
                      target = v
                  end
              end
          end
          
          return target
end
local line = Drawing.new("Line")
line.Visible = false
line.Transparency = 1
line.Color = Color3.fromRGB(255,255,255)
line.From = Vector2.new(viewport.X,viewport.Y - 10)
line.To = Vector2.new(viewport.X,viewport.Y + 10)
line.Thickness = 1
local line2 = Drawing.new("Line")
line2.Visible = false
line2.Transparency = 1
line2.Color = Color3.fromRGB(255,255,255)
line2.From = Vector2.new(viewport.X - 10,viewport.Y)
line2.To = Vector2.new(viewport.X + 10,viewport.Y)
line2.Thickness = 1
local FOVring = Drawing.new("Circle")
FOVring.Filled = false
FOVring.Visible = false
FOVring.Thickness = 1
FOVring.Radius = 100
FOVring.Transparency = 0.5
FOVring.Color = Color3.fromRGB(255,255,255)
FOVring.Position = workspace.CurrentCamera.ViewportSize/2
local newmusicdirectory = {"onlyplaywhenmusicisntworking"}
for i,v in pairs(grabmusicfromdirectory) do
    local newstrings = string.sub(v,21)
    table.insert(newmusicdirectory,newstrings)
end

local Library = AuraIS:CreateLibrary({
    Name = "Saturn <font transparency='0.5'>1.9G</font>",
    Icon = iconlib.icons.saturn
})
local function LibraryNotify(title,text,duration,buttonname,callback)
Library:Notify({ -- Notify Demo (Inside Tab)
			Title = title,
			Content = text,
			Duration = duration,
			Image = iconlib.icons.saturn,
			Actions = {
			   Ignore = {
				  Name = buttonname or "Okay!",
				  Callback = function()
				  if callback then
				  pcall(callback)()
				  end
			   end
			},
			Ignore2 = {
				  Name = "Close",
				  Callback = function()
				  service.CoreGui:FindFirstChild("UI_Library").Main.Notifications.Visible = false
			   end
			},
		 },
})
end
--game:GetService("CoreGui").UI_Library.Main.TabContainer.Visuals.Visuals-  ''
local Home,Combat,Visual,Movement,Misc,Scripts,executor = Library:CreateTab("Home",iconlib.icons.home),Library:CreateTab("Combat",combaticon),Library:CreateTab("Visuals",iconlib.icons.visuals),Library:CreateTab("Movement",movementicon),Library:CreateTab("Miscellaneous",iconlib.icons.misc),Library:CreateTab("Scripts","rbxassetid://14867698625"),Library:CreateTab("Executor","rbxassetid://10734982144")
service.CoreGui:FindFirstChild("UI_Library").Enabled = false
local Section = Home:CreateSection("Welcome, "..lplr.DisplayName.."!", "Normal")
local Section = Home:CreateSection("Credits", "Normal")
Section:CreateCard({
	Title = "Credits to:",
	Description = "irenaeuss: For making Saturn\nGamingScripter: for AuraIS\nPissware: For most features\nFurina: i love furina shes so silly\nshehajeez: for adlink bypasser API\nThis will be my final project before Byfron for mobile gets released.",
	SecondaryTitle = "this is furina, say hi!!!",
	Image = api:getasset("Saturn_Client/Assets/furina"..math.random(1,3)..".jpg")
})
local Section = Home:CreateSection("LocalPlayer Information", "Normal")
local your = api.service.HttpService:JSONDecode(Request({Url = "https://users.roblox.com/v1/users/"..lplr.UserId}).Body)
local place = api.service.HttpService:JSONDecode(Request({Url = "https://games.roblox.com/v1/games?universeIds="..api:GetPlaceUID(game.PlaceId)}).Body)
local placedata = place.data[1]
Section:CreateParagraph({
	Title = "Infomation for your roblox account:",
	Description = "Name: "..your.name.."\nDisplayName: "..your.displayName.."\nUserId: "..your.id.."\nAccount Created On: "..string.sub(your.created,1,10).."\nDesciption: "..your.description.."\nDevice: "..api:GetDevice().."\nExecutor: "..tostring(identifyexecutor()).." (supported for saturn)"
})
local Section = Home:CreateSection("Game Information", "Normal")
Section:CreateCard({
	Title = "Information about the current game.",
	Description = "PlaceId: "..placedata.id.."\nCurrent Players: "..placedata.playing.."\nVisits: "..placedata.visits.."\nFavorites: "..placedata.favoritedCount.."\nCreated on: "..string.sub(placedata.created,1,10).."\nUpdated on: "..string.sub(placedata.updated,1,10),
	SecondaryTitle = placedata.name,
	Image = "rbxthumb://type=GameThumbnail&id=" .. game.PlaceId .. "&w=768&h=432",
})
local Section = Home:CreateSection("Use only when you have an bug/feedback/suggestion.", "Normal")
local has_not_submitted_a_report = true
Section:CreateTextbox({
	Name = "Feedback/Bugs/Suggestion",
	PlaceholderText = "text here",
	RemoveTextAfterFocusLost = true,
	Callback = function(v)
	if has_not_submitted_a_report then
	local webhook2 = "https://discord.com/api/webhooks/1130085233132326982/7dGJ7IXgpgcenif8GtYgGtybRlxrklh6-BW57QhitHnwJNXDgl2QBOavczwRwSzICshm"
    local data = {
        ["content"] = "",
        ["embeds"] = {
            {
                ["title"] = "Some guy named: "..lplr.DisplayName.." submitted a report please read it.",
                ["description"] = v,
                ["type"] = "rich",
                ["color"] = tonumber(0x00ADFF),
            }
        }
    }
local newdata = game:GetService("HttpService"):JSONEncode(data)
local headers = {["content-type"] = "application/json"
    }
local abcdef = {Url = webhook2, Body = newdata, Method = "POST", Headers = headers}
request(abcdef)
has_not_submitted_a_report = false
else
LibraryNotify("Nuh uh!","You can only get to sumbit one feedback/bug per execution, this is to avoid destruction.",7)
end
	end,
})
local Section = Home:CreateSection("Update Logs", "Normal")
Section:CreateParagraph({
	Title = "V1.9A",
	Description = [[
	[+] Fixed AdLink Bypasser (BETA, IT MAY NOT WORK SINCE THE EXECUTOR THAT AM USING ISNT UPDATING RN)
	[+] Added more adlinks in the Supported AdLinks paragraph
	[+] Tiny executor updates
	[+] Added ConvertStringToCFrame in Frameworker, you shouldnt have any pain trying to add a waypoint system now
	"Adversity is the first path to truth."
	- Don Juan
	]]
})
Section:CreateParagraph({
	Title = "V1.8G",
	Description = [[
	[+] Updated executor to v1.1 
	[+] New syntax theme
	[+] New words added to suggestions
	[+] added AutoProximityPrompt in Miscellaneous tab
	"Its rather... poisoning, maybe its desired.. i still love iroha"
	-- irenaeuss
	]]
})
Section:CreateParagraph({
	Title = "V1.7X",
	Description = [[
	UpdateLog too long, please read at https://github.com/AnAvaragelilmemer/saturn/blob/main/updatelogs.md
	"I love Hu Tao <3"
	-- irenaeuss
	]]
})
Section:CreateParagraph({
	Title = "V1.6E",
	Description = [[
	[+] Added Fly methods.
	[+] Added Script saving in script tab
	[+] New downloader
	[+] Added New serverhop method: Smallest
	[+] Fixed AutoReconnect being enabled no matter what you do 
	Sorry for the late update! i was studying!
	]]
})
Section:CreateParagraph({
	Title = "V1.5D",
	Description = [[
	[+] Reworked anti malicious scripts to be a HttpGet Spy
	[+] Added ScriptHub, just scroll in the tabs to see it.
	]]
})
Section:CreateParagraph({
	Title = "Christmas Update // V1.4C",
	Description = [[
	[+] Framework now uses cache to reduce loadtime
	[+] Added CoolerBlur, this overlays other GUIS.
	[-] Removed grimace
	[+] Added Save webhook as .txt in Miscellaneous, you can find the file in workspace.
	[+] Added Fly in Movement tab, possibly the only script on mobile that supports Aimbot, Fly, and ESP!
	[+] Added Disable CoolerBlur in Miscellaneous
	[+] Added InstantProximityPrompt delay in Miscellaneous
	[+] Added auto execute saturn & remove auto execute saturn in Miscellaneous.
	[+] Added buffer.create bypass (Must be using Autoexecute to work)
	Enjoy my christmas gift to yall, sorry for delaying it. --irenaeuss
	]]
})
Section:CreateParagraph({
	Title = "Updated to version 1.3",
	Description = [[
	[+] Added Aimbot in combat tab
	[+] Added Crosshair in Visual tab
	[-] (KNOWN ISSUE) Patched Silders being large for no reason.
	[+] Added Aimbot settings 
	[+] Added Execute from clipboard in Miscellaneous tab.
	Enjoy! --irenaeuss
	]]
})
Section:CreateParagraph({
	Title = "Updated to version 1.2",
	Description = [[
	[+] Added feedback in home tab
	[+] Added Hitbox Transparency in combat tab
	[+] Revamped TimeChanger
	[+] Revamped BrightnessChanger
	[+] Added Playlist to MusicPlayer
	[+] Anti-AFK added on Miscellaneous
	[+] Added Anti webhook in Miscellaneous
	[+] Added Anti malicious scripts in Miscellaneous
	[+] Reworked FOVChanger
	[+] Fixed AutoReconnect not properly working
	]]
})
Section:CreateParagraph({
	Title = "Updated to version 1.1",
	Description = "Saturn is updated for version 1.1\n[+] Notify if Player has left\n[+] Notify if Player is joining\n[+] Play sound when died\n[+] Changed name to Saturn 1.1\n[+] Patched Adonis kicking you for stupid reasons"
})
Section:CreateParagraph({
	Title = "Saturn Has Been Released!",
	Description = "Hello, Saturn! A Feature-Rich Script using AuraIS."
})
local Section = Combat:CreateSection("Aimlock (Not for laggy users!)", "Normal") 
Section:CreateToggle("Normal", {
    Name = "Aimlock",
    Callback = function(v)
    FOVring.Visible = v
    end,
})
Section:CreateSlider({
	Name = "Aimlock speed",
	Value = {0.1, 1},
	Increment = 0.1,
	Suffix = "speed",
	CurrentValue = 0.5,
	Callback = function(v)
	SaturnSettings.aimbotsmoothing = v
	end,
})
Section:CreateToggle("Normal", {
    Name = "TeamCheck",
    Callback = function(v)
    SaturnSettings.aimbotteamcheck = v
    end,
})
Section:CreateToggle("Normal", {
    Name = "WallCheck",
    Callback = function(v)
    SaturnSettings.wallcheck = v
    end,
})
Section:CreateDropdown({
	Name = "Target Part",
	Options = {"Head","HumanoidRootPart"},
	CurrentOption = {"Head"},
	MultipleOptions = false,
	Callback = function(v)
	SaturnSettings.targetpart = v
	end,
})
Section:CreateSlider({
	Name = "FOV Radius",
	Value = {50, 1000},
	Increment = 50,
	Suffix = "Radius",
	CurrentValue = 100,
	Callback = function(v)
	FOVring.Radius = v
	end,
})
Section:CreateSlider({
	Name = "FOV Transparency",
	Value = {0, 1},
	Increment = 0.1,
	Suffix = "Transparency",
	CurrentValue = 0.5,
	Callback = function(v)
	FOVring.Transparency = v
	end,
})
Section:CreateSlider({
	Name = "FOV NumSides",
	Value = {3, 100},
	Increment = 1,
	Suffix = "NumSides",
	CurrentValue = 64,
	Callback = function(v)
	FOVring.NumSides = v
	end,
})
Section:CreateColorPicker({
    Name = "FOV Color",
    Callback = function(v)
        FOVring.Color = v
    end,
})
Section:CreateParagraph({
	Title = "note:",
	Description = "this is experimental, expect stuff to not work"
})
local Section = Combat:CreateSection("Hitbox Expander", "Normal") 

Section:CreateToggle("Normal", {
    Name = "Hitbox Expander",
    Callback = function(v)
    SaturnSettings.hitbox = v
    end,
})
Section:CreateSlider({
	Name = "Hitbox Size",
	Value = {0, 100},
	Increment = 1,
	Suffix = "Stud/s",
	CurrentValue = 7,
	--Flag = "Slider1", useless LOL
	Callback = function(v)
        SaturnSettings.hitboxsize = v
	end,
})
Section:CreateColorPicker({
    Name = "Hitbox Color",
    Callback = function(v)
        SaturnSettings.hitboxcolor = v
    end,
})
Section:CreateSlider({
	Name = "Hitbox Transparency",
	Value = {0, 1},
	Increment = 0.1,
	Suffix = "Transparency",
	CurrentValue = 0.5,
	Callback = function(v)
        SaturnSettings.hitboxtranparency = v
	end,
})
Section:CreateToggle("Normal", {
    Name = "TeamCheck",
    Callback = function(v)
    SaturnSettings.teamcheck = v
    end,
})
local Section = Combat:CreateSection("Obby Exploits", "Normal") 
Section:CreateToggle("Normal", {
    Name = "ObbyGodMode",
    Callback = function(v)
    SaturnSettings.obbygodmode = v
    end,
})
Section:CreateParagraph({
	Title = "Reminder:",
	Description = "ObbyGodMode can break checkpoints, meaning if you die you will return to the last checkpoint before OGM is enabled."
})
local Section = Visual:CreateSection("Visuals", "Normal") 
Section:CreateToggle("Normal", {
    Name = "FullBright",
    Callback = function(v)
    SaturnSettings.fullbright = v
    end,
})
Section:CreateToggle("Normal", {
    Name = "TimeChanger",
    Callback = function(v)
    SaturnSettings.timechanger = v
    end,
})
Section:CreateSlider({
	Name = "Time",
	Value = {1, 24},
	Increment = 1,
	Suffix = "Hours",
	CurrentValue = 7,
	Callback = function(v)
        SaturnSettings.time = v
	end,
})
Section:CreateToggle("Normal", {
    Name = "FOVChanger",
    Callback = function(v)
    SaturnSettings.FOV = v
    end,
})
Section:CreateSlider({
	Name = "FOV",
	Value = {45, 120},
	Increment = 1,
	Suffix = "Field Of View",
	CurrentValue = 70,
	Callback = function(v)
        SaturnSettings.FOVnumber = v
	end,
})
Section:CreateToggle("Normal", {
    Name = "X-Ray",
    Callback = function(v)
    if v then
    for i,v in pairs(workspace:GetDescendants()) do
    if v:IsA("BasePart") and not v.Parent.Parent:FindFirstChild("Humanoid") then
        v.Transparency = v.Transparency + 0.5 
    end
    end
        else
    for i,v in pairs(workspace:GetDescendants()) do
    if v:IsA("BasePart") and not v.Parent.Parent:FindFirstChild("Humanoid") then
        v.Transparency = v.Transparency - 0.5 
    end
    end
    end
    end,
})
Section:CreateToggle("Normal", {
    Name = "Earrape",
    Callback = function(e)
    getgenv().toggled = e
    while task.wait() and toggled do
    for i,v in pairs(workspace:GetDescendants()) do
    if v:IsA("Sound") then
    v:Play()
    end
    end
    end
    end,
})
Section:CreateToggle("Normal", {
    Name = "PauseAnimation",
    Callback = function(v)
    pcall(function()
        if v then
        lplr.Character.Animate.Disabled = true
        else
            lplr.Character.Animate.Disabled = false
        end
    end)
    end,
})
Section:CreateTextbox({
	Name = "AnimationPlayer",
	PlaceholderText = "123456789",
	RemoveTextAfterFocusLost = true,
	Callback = function(v)
    playanimation(v)
	end,
})
Section:CreateSlider({
	Name = "Animation Speed",
	Value = {1, 99},
	Increment = 1,
	Suffix = "Speed",
	CurrentValue = 1,
	Callback = function(v)
	if playinganimation then
              playinganimation:AdjustSpeed(v)
    end
	end,
})
Section:CreateButton({
    Name = "Stop Animation",
    Callback = function()
    if playinganimation then
       playinganimation:Stop()
   end
    end,
})
Section:CreateTextbox({
	Name = "MusicPlayer",
	PlaceholderText = "text.mp3/123456789",
	RemoveTextAfterFocusLost = true,
	Callback = function(v)
	fe2.alert("Now Playing: "..v,nil,5,"rainbow")
	playmusic(v)
	end,
})
Section:CreateDropdown({
	Name = "Playlist",
	Options = newmusicdirectory,
	CurrentOption = {"None"},
	MultipleOptions = false,
	Callback = function(v)
	fe2.alert("Now Playing: "..v,nil,5,"rainbow")
	playmusic(v)
	end,
})
Section:CreateToggle("Normal", {
    Name = "LoopMusic",
    Callback = function(v)
    music.Looped = v
    end,
})
Section:CreateButton({
    Name = "ReplaySound",
    Callback = function()
    playmusic("REPLAYING")
    end,
})
Section:CreateButton({
    Name = "StopSound",
    Callback = function()
    playingfromplaylist = false
    playmusic("STOPPING")
    end,
})
Section:CreateButton({
    Name = "FakeChatLag",
    Callback = function()
       if api:chatcheck() then
           api:chat("\0")
           else
        for i = 1,3 do
           api:chat("\0")
        end
       end
    end,
})
Section:CreateToggle("Normal", {
    Name = "FogChanger",
    Callback = function(v)
    SaturnSettings.fogenabled = v
    end,
})
Section:CreateSlider({
	Name = "Fog Intensity",
	Value = {45, 1000},
	Increment = 10,
	Suffix = "Intensity",
	CurrentValue = 1000,
	Callback = function(v)
        SaturnSettings.fogend = v
	end,
})
Section:CreateColorPicker({
    Name = "FogColor",
    Callback = function(v)
        SaturnSettings.fogcolor = v
    end,
})
Section:CreateToggle("Normal", {
    Name = "BrightnessChanger",
    Callback = function(v)
    SaturnSettings.brightnesstog = v
    end,
})
Section:CreateSlider({
	Name = "BrightnessIntensity",
	Value = {1, 99},
	Increment = 1,
	Suffix = "Intensity",
	CurrentValue = 100,
	Callback = function(v)
        SaturnSettings.brightness = v
	end,
})
Section:CreateToggle("Normal", {
    Name = "LowOutgoingKBPS",
    Callback = function(v)
    if v then
    service.NetworkClient:SetOutgoingKBPSLimit(1)
    else
    service.NetworkClient:SetOutgoingKBPSLimit(math.huge)
    end
    end,
})
Section:CreateToggle("Normal", {
    Name = "ReplicationLag",
    Callback = function(v)
    if v then
    settings().Network.IncomingReplicationLag = 9e9
    else
        settings().Network.IncomingReplicationLag = 0
    end
    end,
})
Section:CreateToggle("Normal", {
    Name = "BoundingBoxes",
    Callback = function(v)
    settings():GetService("RenderSettings").ShowBoundingBoxes = v
    end,
})
Section:CreateButton({
    Name = "FirstPerson",
    Callback = function()
    lplr.CameraMode = "LockFirstPerson"
    end,
})
Section:CreateButton({
    Name = "ThirdPerson",
    Callback = function()
    lplr.CameraMode = "Classic"
    end,
})
Section:CreateToggle("Normal", {
    Name = "CameraNoClip",
    Callback = function(v)
    if v then
        lplr.DevCameraOcclusionMode = "Invisicam"
        else
        lplr.DevCameraOcclusionMode = "Zoom"
    end
    end,
})
Section:CreateToggle("Normal", {
    Name = "NoRender",
    Callback = function(v)
    if v then
    RunService:Set3dRenderingEnabled(false)
    else
        RunService:Set3dRenderingEnabled(true)
    end
    end,
})
Section:CreateToggle("Normal", {
    Name = "MotionBlur",
    Callback = function(v)
   motionblur.Enabled = v
    end,
})
Section:CreateToggle("Normal", {
    Name = "Notify if player has left",
    Callback = function(v)
    SaturnSettings.playerleavingnotif = v
    end,
})
Section:CreateToggle("Normal", {
    Name = "Notify if player is joining",
    Callback = function(v)
    SaturnSettings.playerjoiningnotif = v
    end,
})
Section:CreateToggle("Normal", {
    Name = "Play sound when died",
    Callback = function(v)
    SaturnSettings.diedsound = v
    end,
})
Section:CreateDropdown({
	Name = "Death sound",
	Options = {"TF2", "TF2 2","Vine boom","Man dying","Flatline"},
	CurrentOption = {"TF2"},
	MultipleOptions = false,
	Callback = function(v)
	if v == "TF2" then
	deathsound.SoundId = "rbxassetid://2866718318"
	elseif v == "TF2 2" then
	deathsound.SoundId = "rbxassetid://2868331684"
	elseif v == "Vine boom" then
	deathsound.SoundId = "rbxassetid://7147226095"
	elseif v == "Man dying" then
	deathsound.SoundId = "rbxassetid://146565136"
	elseif v == "Flatline" then
	deathsound.SoundId = "rbxassetid://9102572727"
	end
	end,
})
Section:CreateTextbox({
	Name = "Custom Death Sound",
	PlaceholderText = ".mp3//rbxassetid",
	RemoveTextAfterFocusLost = true,
	Callback = function(v)
	if isfile(v) then
	    deathsound.SoundId = getcustomasset(v)
	else
	    deathsound.SoundId = "rbxassetid://"..v
	end
	end,
})
Section:CreateToggle("Normal", {
    Name = "Crosshair",
    Callback = function(v)
    line.Visible = v
    line2.Visible = v
    end,
})
Section:CreateColorPicker({
    Name = "Crosshair Color",
    Callback = function(v)
        line2.Color = v
        line.Color = v
    end,
})
Section:CreateSlider({
	Name = "Crosshair Thickness",
	Value = {1, 5},
	Increment = 1,
	Suffix = "Thickness",
	CurrentValue = 1,
	Callback = function(v)
        line2.Thickness = v
        line.Thickness = v
	end,
})
Section:CreateSlider({
	Name = "Crosshair Size",
	Value = {1, 100},
	Increment = 1,
	Suffix = "size",
	CurrentValue = 10,
	Callback = function(v)
    line.From = Vector2.new(viewport.X,viewport.Y - v)
    line.To = Vector2.new(viewport.X,viewport.Y +v)
    line2.From = Vector2.new(viewport.X - v,viewport.Y)
    line2.To = Vector2.new(viewport.X + v,viewport.Y)
	end,
})
Section:CreateToggle("Normal", {
    Name = "FPS UI",
    Callback = function(v)
    getgenv().SATURNFPS.Enabled = not getgenv().SATURNFPS.Enabled 
    end,
})
Section:CreateToggle("Normal", {
    Name = "Ping UI",
    Callback = function(v)
    getgenv().Ping.Enabled = not getgenv().Ping.Enabled 
    end,
})
local Section = Visual:CreateSection("ESP", "Normal") 

Section:CreateToggle("Normal", {
    Name = "Enable ESP",
    Callback = function(v)
    ez.enabled = v
    end,
})
Section:CreateToggle("Normal", {
    Name = "Tracers",
    Callback = function(v)
    ez.tracer = v
    end,
})
Section:CreateToggle("Normal", {
    Name = "HeadDot",
    Callback = function(v)
    ez.headdot = v
    end,
})
Section:CreateToggle("Normal", {
    Name = "NameTags (may not work)",
    Callback = function(v)
    ez.tag = v
    end,
})
Section:CreateToggle("Normal", {
    Name = "TeamCheck",
    Callback = function(v)
    ez.teamcheck = v
    end,
})
local Section = Movement:CreateSection("Speed", "Normal")
Section:CreateToggle("Normal", {
    Name = "Speed Toggle",
    Callback = function(v)
    SaturnSettings.speedtoggle = v
    end,
})
Section:CreateSlider({
	Name = "Speed",
	Value = {1, 200},
	Increment = 1,
	Suffix = "Stud/s",
	CurrentValue = 1,
	Callback = function(v)
	SaturnSettings.speed = v
	end,
})
Section:CreateDropdown({
	Name = "SpeedMethod",
	Options = {"TranslateBy", "CFrame", "Velocity"},
	CurrentOption = {"TranslateBy"},
	MultipleOptions = false,
	Callback = function(v)
	SaturnSettings.speedmethod = v
	end,
})
local Section = Movement:CreateSection("AlwaysJump", "Normal")
Section:CreateToggle("Normal", {
    Name = "AlwaysJump",
    Callback = function(v)
    SaturnSettings.alwaysjump = v
    end,
})
Section:CreateDropdown({
	Name = "AlwaysJump Method",
	Options = {"Legit", "Blatant"},
	CurrentOption = {"Legit"},
	MultipleOptions = false,
	Callback = function(v)
	SaturnSettings.alwaysjumpmethod = v
	end,
})
Section:CreateSlider({
	Name = "Blatant Method Height",
	Value = {1, 5},
	Increment = 1,
	Suffix = "Numerator",
	CurrentValue = 2,
	Callback = function(v)
	SaturnSettings.alwaysjumpdivided = v
	end,
})
local Section = Movement:CreateSection("Jetpack", "Normal")
Section:CreateToggle("Normal", {
    Name = "Jetpack",
    Callback = function(v)
    SaturnSettings.jetpack = v
    end,
})
Section:CreateDropdown({
	Name = "Jetpack Method",
	Options = {"Classic", "Press"},
	CurrentOption = {"Classic"},
	MultipleOptions = false,
	Callback = function(v)
	SaturnSettings.jetpackmethod = v
	end,
})
local Section = Movement:CreateSection("Lagback", "Normal")
local fallenp = workspace.FallenPartsDestroyHeight
Section:CreateToggle("Normal", {
    Name = "Lagback",
    Callback = function(v)
    if v then
    workspace.FallenPartsDestroyHeight = math.huge
    else
        workspace.FallenPartsDestroyHeight = fallenp
    end
    end,
})
local Section = Movement:CreateSection("Phase", "Normal")
Section:CreateToggle("Normal", {
    Name = "Phase",
    Callback = function(v)
    SaturnSettings.noclip = v
    end,
})
local Section = Movement:CreateSection("SpinBot", "Normal")
Section:CreateToggle("Normal", {
    Name = "Spinbot",
    Callback = function(v)
    SaturnSettings.spinbot = v
    end,
})
Section:CreateSlider({
	Name = "Pitch",
	Value = {1, 225},
	Increment = 1,
	Suffix = "Speed",
	CurrentValue = 0,
	Callback = function(v)
	SaturnSettings.spinbotpitch = math.rad(v)	end,
})
Section:CreateSlider({
	Name = "Yaw",
	Value = {1, 225},
	Increment = 1,
	Suffix = "Speed",
	CurrentValue = 100,
	Callback = function(v)
	SaturnSettings.spinbotyaw = math.rad(v)
	end,
})
Section:CreateSlider({
	Name = "Roll",
	Value = {1, 225},
	Increment = 1,
	Suffix = "Speed",
	CurrentValue = 0,
	Callback = function(v)
	SaturnSettings.spinbotroll = math.rad(v)
	end,
})
Section:CreateButton({
    Name = "Set Pitch and Roll to 0",
    Callback = function()
        SaturnSettings.spinbotroll = 0 
        SaturnSettings.spinbotpitch = 0
    end,
})
local Section = Movement:CreateSection("Flashback", "Normal")
Section:CreateToggle("Normal", {
    Name = "Flashback",
    Callback = function(v)
    SaturnSettings.flashback = v
    end,
})
Section:CreateSlider({
	Name = "Flashback Delay",
	Value = {0.1,1},
	Increment = 0.1,
	Suffix = "Seconds",
	CurrentValue = 0.2,
	Callback = function(v)
	SaturnSettings.flashbackdelay = v
	end,
})
local Section = Movement:CreateSection("Blink", "Normal")
Section:CreateToggle("Normal", {
    Name = "Blink",
    Callback = function(v)
    SaturnSettings.blink = v
    end,
})
local Section = Movement:CreateSection("StrafeJump", "Normal")
Section:CreateToggle("Normal", {
    Name = "StrafeJump",
    Callback = function(v)
    SaturnSettings.strafejump = v
    end,
})
Section:CreateSlider({
	Name = "StrafeJump Slowness",
	Value = {1,7},
	Increment = 1,
	Suffix = "Numerator",
	CurrentValue = 3,
	Callback = function(v)
	SaturnSettings.strafejumpslow = v
	end,
})
local Section = Movement:CreateSection("PositionSaver", "Normal")
Section:CreateButton({
    Name = "LoadPosition",
    Callback = function()
    if SaturnSettings.positionMethod == "Instant" and lplr.Character then
        teleport(SaturnSettings.position)
    elseif SaturnSettings.positionMethod == "Tween" and lplr.Character then
        tweenteleport(SaturnSettings.position,SaturnSettings.positionTweenSpeed)
    elseif SaturnSettings.positionMethod == "Lerp" then
        lerp(SaturnSettings.position,0.5,0.5)
    elseif SaturnSettings.positionMethod == "Blox Fruits" then
        bloxfruittween(SaturnSettings.position)
    end
    end,
})
Section:CreateButton({
    Name = "SavePosition",
    Callback = function()
    if lplr.Character then
    SaturnSettings.position = lplr.Character.HumanoidRootPart.CFrame
    end
    AuraIS:Notify("Normal" , {Title = "Position Saved!",Content = "Position is saved, press LoadPosition to teleport.",Duration = 3,Image = "rbxassetid://11419705585",})
    end,
})
Section:CreateDropdown({
	Name = "Teleport Method",
	Options = {"Instant", "Tween","Lerp","Blox Fruits"},
	CurrentOption = {"Instant"},
	MultipleOptions = false,
	Callback = function(v)
	SaturnSettings.positionMethod = v
	end,
})
Section:CreateSlider({
	Name = "Tween Duration",
	Value = {0.1,2},
	Increment = 0.1,
	Suffix = "Seconds",
	CurrentValue = 0.5,
	Callback = function(v)
	SaturnSettings.positionTweenSpeed = v
	end,
})
local Section = Movement:CreateSection("Reset", "Normal")
Section:CreateButton({
    Name = "Reset",
    Callback = function()
    if SaturnSettings.diemethod == "ChangeState" then
    lplr.Character.Humanoid:ChangeState("Dead")
    elseif SaturnSettings.diemethod == "DestroyHead" and lplr.Character:FindFirstChild("Head") then 
    lplr.Character.Head:Destroy()
    elseif SaturnSettings.diemethod == "BreakJoints" then
    lplr.Character:BreakJoints()
    elseif SaturnSettings.diemethod == "SetHPtoZero" then 
    lplr.Character.Humanoid.Health = 0
    end
    end,
})

Section:CreateDropdown({
	Name = "Reset Method",
	Options = {"ChangeState", "DestroyHead","BreakJoints","SetHPtoZero"},
	CurrentOption = {"ChangeState"},
	MultipleOptions = false,
	Callback = function(v)
	SaturnSettings.diemethod = v
	end,
})
local Section = Movement:CreateSection("GoTo", "Normal")
local player 
Section:CreateTextbox({
	Name = "GoTo",
	PlaceholderText = "player name",
	RemoveTextAfterFocusLost = true,
	Callback = function(v)
	player = api:GetPlayer(v)
	if SaturnSettings.developermode then
	    fe2.alert("Player: "..player.DisplayName,nil,5,'rainbow')
	end
	if player.Character:FindFirstChild("HumanoidRootPart") and SaturnSettings.gotoMethod == "Instant" then
	lplr.Character.HumanoidRootPart.AssemblyLinearVelocity = Vector3.new(0,0,0)
	teleport(player.Character.HumanoidRootPart.CFrame)
	elseif player.Character:FindFirstChild("HumanoidRootPart") and SaturnSettings.gotoMethod == "Tween" then
	lplr.Character.HumanoidRootPart.AssemblyLinearVelocity = Vector3.new(0,0,0)
	tweenteleport(player.Character.HumanoidRootPart.CFrame,SaturnSettings.gotoTweenSpeed)
	elseif player.Character:FindFirstChild("HumanoidRootPart") and SaturnSettings.gotoMethod == "Lerp" then
    lplr.Character.HumanoidRootPart.AssemblyLinearVelocity = Vector3.new(0,0,0)
	lerp(player.Character.HumanoidRootPart.CFrame,0.5,0.5)
	elseif player.Character:FindFirstChild("HumanoidRootPart") and SaturnSettings.gotoMethod == "Blox Fruits" then
	lplr.Character.HumanoidRootPart.AssemblyLinearVelocity = Vector3.new(0,0,0)
	bloxfruittween(player.Character.HumanoidRootPart.CFrame)
	else
	AuraIS:Notify("Warning" , {Title = "Warning",Content = "Player doesn't exist!",Duration = 3,Image = "rbxassetid://11419705585",})
	end
	end,
})
Section:CreateButton({
    Name = "Teleport to Random Player",
    Callback = function()
    player = api:GetPlayer("random")
    repeat player = api:GetPlayer("random") task.wait() until player.Name ~= lplr.Name
    if SaturnSettings.developermode then
	    fe2.alert("Player: "..player.DisplayName,nil,5,'rainbow')
	end
	if player.Character:FindFirstChild("HumanoidRootPart") and SaturnSettings.gotoMethod == "Instant" then
	lplr.Character.HumanoidRootPart.AssemblyLinearVelocity = Vector3.new(0,0,0)
	teleport(player.Character.HumanoidRootPart.CFrame)
	elseif player.Character:FindFirstChild("HumanoidRootPart") and SaturnSettings.gotoMethod == "Tween" then
	lplr.Character.HumanoidRootPart.AssemblyLinearVelocity = Vector3.new(0,0,0)
	tweenteleport(player.Character.HumanoidRootPart.CFrame,SaturnSettings.gotoTweenSpeed)
	elseif player.Character:FindFirstChild("HumanoidRootPart") and SaturnSettings.gotoMethod == "Lerp" then
    lplr.Character.HumanoidRootPart.AssemblyLinearVelocity = Vector3.new(0,0,0)
	lerp(player.Character.HumanoidRootPart.CFrame,0.5,0.5)
	elseif player.Character:FindFirstChild("HumanoidRootPart") and SaturnSettings.gotoMethod == "Blox Fruits" then
	lplr.Character.HumanoidRootPart.AssemblyLinearVelocity = Vector3.new(0,0,0)
	bloxfruittween(player.Character.HumanoidRootPart.CFrame)
	else
	AuraIS:Notify("Warning" , {Title = "Warning",Content = "Player doesn't exist!",Duration = 3,Image = "rbxassetid://11419705585",})
	return
	end
    end,
})
Section:CreateDropdown({
	Name = "Teleport Method",
	Options = {"Instant", "Tween","Lerp","Blox Fruits"},
	CurrentOption = {"Instant"},
	MultipleOptions = false,
	Callback = function(v)
	SaturnSettings.gotoMethod = v
	end,
})
Section:CreateSlider({
	Name = "Tween Duration",
	Value = {0.1,2},
	Increment = 0.1,
	Suffix = "Seconds",
	CurrentValue = 0.5,
	Callback = function(v)
	SaturnSettings.gotoTweenSpeed = v
	end,
})
Section:CreateParagraph({
	Title = "Tips:",
	Description = "You can use shortened names, Capital letters dont matter. Example:\nRoBlo, this will automatically get the player that is closest to RoBlo.\nPlayer Cases:\nrandom - gets random player, even you."
})
local Section = Movement:CreateSection("Flight", "Normal")
Section:CreateToggle("Normal", {
    Name = "Flight",
    Callback = function(v)
    SaturnSettings.flytoggle = v
    end,
})
Section:CreateSlider({
	Name = "Flight Speed",
	Value = {1,200},
	Increment = 1,
	Suffix = "Speed",
	CurrentValue = 150,
	Callback = function(v)
	SaturnSettings.flyspeed = v
	end,
})
Section:CreateDropdown({
	Name = "Fly Method",
	Options = {"10% Detection rate", "3% Detection rate"},
	CurrentOption = {"10% Detection rate"},
	MultipleOptions = false,
	Callback = function(v)
	SaturnSettings.flymethod = v
	end,
})
Section:CreateToggle("Normal", {
    Name = "PlatformStand",
    Callback = function(v)
    SaturnSettings.flyplatform = v
    end,
})
local Section = Movement:CreateSection("Anchor", "Normal")
Section:CreateToggle("Normal", {
    Name = "Anchor",
    Callback = function(v)
    SaturnSettings.anchored = v
    end,
})
local waypointmaker = Movement:CreateSection("Waypoint Maker", "Normal")
local waypointname = ""

local function AddWaypoint(name,position)
if not isfile("Saturn_Client/Waypoints/"..name) then
writefile("Saturn_Client/Waypoints/"..name,position)
end
local newposition = api:ConvertStringToCFrame(position)
waypointsection:CreateButton({
    Name = name,
    Callback = function()
    if SaturnSettings.WaypointMethod == "Instant" then
    teleport(newposition)
    elseif SaturnSettings.WaypointMethod == "Tween" then
    tweenteleport(newposition,SaturnSettings.WaypointTweenSpeed)
    elseif SaturnSettings.WaypointMethod == "Lerp" then
    lerp(newposition,0.5,0.5)
    elseif SaturnSettings.WaypointMethod == "Blox Fruits" then
    bloxfruittween(newposition)
    end
    end,
})
end
waypointmaker:CreateTextbox({
	Name = "Waypoint Name",
	PlaceholderText = "LoremIpsum...",
	RemoveTextAfterFocusLost = true,
	Callback = function(v)
	waypointname = v
	end,
})
waypointmaker:CreateButton({
    Name = "Make waypoint",
    Callback = function()
    if waypointname == "" then
        LibraryNotify("Warning","You cant use no letters!",5)
        return
    end
    if SaturnSettings.WaypointIncludeGameName then
    AddWaypoint(waypointname.." ["..game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name.."]",tostring(lplr.Character.HumanoidRootPart.Position))
    else
    AddWaypoint(waypointname,tostring(lplr.Character.HumanoidRootPart.Position))
    end
    end,
})
local newwaypointtable = {}
for i,v in pairs(listfiles("Saturn_Client/Waypoints")) do
    local newstrings = string.sub(v,25)
    table.insert(newwaypointtable,newstrings)
end
waypointmaker:CreateTextbox({
	Name = "Delete Waypoint 1",
	PlaceholderText = "LoremIpsum...",
	RemoveTextAfterFocusLost = true,
	Callback = function(v)
	for i,v in pairs(game:GetService("CoreGui").UI_Library.Main.TabContainer.Movement["Created Waypoints"]:GetDescendants()) do
	if v.Name == vel then
	    delfile("Saturn_Client/Waypoints/"..vel)
	    v:Destroy()
	    return
	    end
	end
	end,
})
waypointmaker:CreateDropdown({
	Name = "Delete Waypoint 2",
	Options = newwaypointtable,
	CurrentOption = {"Instant"},
	MultipleOptions = false,
	Callback = function(vel)
	if isfile("Saturn_Client/Waypoints/"..vel) then
	for i,v in pairs(game:GetService("CoreGui").UI_Library.Main.TabContainer.Movement["Created Waypoints"]:GetDescendants()) do
	if v.Name == vel then
	    delfile("Saturn_Client/Waypoints/"..vel)
	    v:Destroy()
	    return
	    end
	end
	else
	LibraryNotify("Warning!","The waypoint is already deleted!",5)
	end
	end,
})
local waypointconfiguration = Movement:CreateSection("Waypoint configuration", "Normal")
waypointconfiguration:CreateDropdown({
	Name = "Teleport Method",
	Options = {"Instant", "Tween","Lerp","Blox Fruits"},
	CurrentOption = {"Instant"},
	MultipleOptions = false,
	Callback = function(v)
	SaturnSettings.WaypointMethod = v
	end,
})
waypointconfiguration:CreateSlider({
	Name = "Tween Speed",
	Value = {1,20},
	Increment = 1,
	Suffix = "Speed",
	CurrentValue = 20,
	Callback = function(v)
	SaturnSettings.WaypointTweenSpeed = v
	end,
})
waypointconfiguration:CreateToggle("Normal", {
    Name = "Include Game Name on waypoint name",
    Callback = function(v)
    SaturnSettings.WaypointIncludeGameName = v
    end,
})
getgenv().waypointsection = Movement:CreateSection("Created Waypoints", "Foldable")
local waypointsmade = 0
local function loadwaypoints()
for _,v in ipairs(listfiles("Saturn_Client/Waypoints")) do
AddWaypoint(string.sub(v,25,100),readfile(v))
waypointsmade = waypointsmade + 1
end
end
task.spawn(loadwaypoints)
fe2.alert("Loaded Waypoints! ("..waypointsmade.." waypoints.)",nil,5,"rainbow")
local Section = Misc:CreateSection("Miscellaneous", "Normal")
Section:CreateButton({
    Name = "Crash Roblox",
    Callback = function()
    loadstring(api:getasset(api:randomstring(1000)))() --crashes client?
    end,
})
Section:CreateToggle("Normal", {
    Name = "UnlockFPS",
    Callback = function(v)
    if v then
    api.fpscap(999)
    else
    api.fpscap(60)
    end
    end,
})
Section:CreateToggle("Normal", {
    Name = "ClientAntiKick",
    Callback = function(v)
    SaturnSettings.clientantikick = v
    end,
})
Section:CreateToggle("Normal", {
    Name = "InstantProximityPrompt",
    Callback = function(v)
    SaturnSettings.ipp = v 
    end,
})
Section:CreateSlider({
	Name = "InstantProximityPrompt Delay",
	Value = {0.1,2},
	Increment = 0.1,
	Suffix = "Seconds",
	CurrentValue = 0.1,
	Callback = function(v)
	SaturnSettings.ippdelay = v
	end,
})
Section:CreateToggle("Normal", {
    Name = "Spam",
    Callback = function(v)
    SaturnSettings.spamtoggle = v 
    while SaturnSettings.spamtoggle and wait(SaturnSettings.spamdelay) do
    api:chat(SaturnSettings.spammessage)
    end
    end,
})
Section:CreateSlider({
	Name = "Spam Delay",
	Value = {0.5,5},
	Increment = 0.1,
	Suffix = "Seconds",
	CurrentValue = 3,
	Callback = function(v)
	SaturnSettings.spamdelay = v
	end,
})
Section:CreateTextbox({
	Name = "Spam Message",
	PlaceholderText = "Message",
	RemoveTextAfterFocusLost = true,
	Callback = function(v)
	SaturnSettings.spammessage = v
	end,
})
Section:CreateButton({
    Name = "ServerHop",
    Callback = function()
    if SaturnSettings.ServerHopMethod == "Random" then
    local body = HttpService:JSONDecode(Request({Url = "https://games.roblox.com/v1/games/"..game.PlaceId.."/servers/Public?sortOrder=Desc&limit=100"}).Body)
    local decoded,servers = body.data,{}
    for i,v in pairs(decoded) do
    if type(v) == "table" and v.id ~= game.JobId then
    table.insert(servers,v.id)
    end
    end
    if #servers > 0 then
    LibraryNotify("ServerHop","A server was found, teleporting...",5)
    wait(0.5)
    queue_on_teleport('loadstring(game:HttpGet("https://raw.githubusercontent.com/AnAvaragelilmemer/Pissware/main/Main/MobileMain.lua"))()')
    tpservice:TeleportToPlaceInstance(game.PlaceId,servers[math.random(#servers)])
    else
        LibraryNotify("ServerHop","No servers were found.",5)
    end
    elseif SaturnSettings.ServerHopMethod == "Smallest" then
    local body = HttpService:JSONDecode(Request({Url = "https://games.roblox.com/v1/games/"..game.PlaceId.."/servers/Public?sortOrder=Asc&limit=100"}).Body)
    local decoded,servers = body.data,{}
    for i,v in pairs(decoded) do
    if type(v) == "table" and v.id ~= game.JobId then
    table.insert(servers,v.id)
    end
    end
    if #servers > 0 then
    LibraryNotify("ServerHop [Smallest]","A server was found, teleporting...",5)
    wait(0.5)
    queue_on_teleport('loadstring(game:HttpGet("https://raw.githubusercontent.com/AnAvaragelilmemer/Pissware/main/Main/MobileMain.lua"))()')
    tpservice:TeleportToPlaceInstance(game.PlaceId,servers[1])
    else
    LibraryNotify("ServerHop [Smallest]","No servers were found.",5)
    end
   end
    end,
})
Section:CreateDropdown({
	Name = "ServerHop Method",
	Options = {"Random","Smallest"},
	CurrentOption = {"Random"},
	MultipleOptions = false,
	Callback = function(v)
	SaturnSettings.ServerHopMethod = v
	end,
})
Section:CreateButton({
    Name = "Rejoin",
    Callback = function()
    if #game:GetService("Players"):GetPlayers() == 1 then
    lplr:Kick("rejoining..")
    wait(2)
    tpservice:Teleport(game.PlaceId)
    else
    tpservice:TeleportToPlaceInstance(game.PlaceId,game.JobId)
    end
    end,
})
Section:CreateTextbox({
	Name = "LinkLoader",
	PlaceholderText = "linkhere",
	RemoveTextAfterFocusLost = true,
	Callback = function(v)
		loadstring(game:HttpGet(v))()
	end,
})
Section:CreateTextbox({
	Name = "Teleport to game",
	PlaceholderText = "game id here",
	RemoveTextAfterFocusLost = true,
	Callback = function(v)
	tpservice:Teleport(tonumber(v))
	end,
})
Section:CreateToggle("Normal", {
    Name = "AutoReconnect",
    Callback = function(v)
    SaturnSettings.autoreconnect = v 
    end,
})
Section:CreateButton({
    Name = "Copy Position",
    Callback = function()
    setclipboard(tostring(lplr.Character.HumanoidRootPart.Position))
    end,
})
Section:CreateButton({
    Name = "Generate Teleport Script",
    Callback = function()
    local Position = tostring(lplr.Character.HumanoidRootPart.Position)
	setclipboard("--This was generated by Saturn\ngame.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new("..Position..")")
    end,
})
Section:CreateSlider({
	Name = "Tween Teleport Speed",
	Value = {0.5,50},
	Increment = 0.1,
	Suffix = "Seconds",
	CurrentValue = 3,
	Callback = function(v)
	SaturnSettings.tweenteleportspeed = v
	end,
})
Section:CreateDropdown({
	Name = "TweenTeleport Easing Style",
	Options = {"Linear","Sine","Back","Quad","Quart","Quint","Bounce","Elastic","Exponential","Circular","Cubic"},
	CurrentOption = {"Linear"},
	MultipleOptions = false,
	Callback = function(v)
	SaturnSettings.tweenteleportstyle = v
	end,
})
Section:CreateButton({
    Name = "Generate TweenTeleport Script",
    Callback = function()
    local Position = tostring(lplr.Character.HumanoidRootPart.Position)
	setclipboard('--This was generated by Saturn\ntweenService,tweenInfo = game:GetService("TweenService"), TweenInfo.new('..SaturnSettings.tweenteleportspeed..', Enum.EasingStyle.'..SaturnSettings.tweenteleportstyle..')\ntweenService:Create(game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart, tweenInfo, {CFrame = CFrame.new('..Position..')}):Play()') 
    end,
})
Section:CreateToggle("Normal", {
    Name = "Anti-Fling",
    Callback = function(v)
    SaturnSettings.antifling = v 
    end,
})
Section:CreateToggle("Normal", {
    Name = "Notif If Flinged",
    Callback = function(v)
    SaturnSettings.notif = v 
    end,
})
Section:CreateToggle("Normal", {
    Name = "DeveloperMode (does nothing)",
    Callback = function(v)
    SaturnSettings.developermode = v
    end,
})
Section:CreateButton({
    Name = "Delete Saturn's folder.",
    Callback = function()
if isfolder("Saturn_Client") then
delfolder("Saturn_Client")
LibraryNotify("Sucess","Deleted Saturn's folder.",5)
else
LibraryNotify("Warning","Saturn's folder is already gone!",5)
end
    end,
})
Section:CreateButton({
    Name = "Destroy almost every function.",
    Callback = function()
    getgenv().SATURN_FUNCTIONS:Disconnect()
    LibraryNotify("Enjoy!","Enjoy your Saturn being crippled, dont worry Saturn will be normal after rejoining.",6)
    end,
})
Section:CreateButton({
    Name = "Open Console",
    Callback = function()
    service.StarterGui:SetCore("DevConsoleVisible",true)
    end,
})
Section:CreateToggle("Normal", {
    Name = "Anti-AFK",
    Callback = function(v)
    SaturnSettings.antiafk = v
    for i,v in next, getconnections(lplr.Idled) do
    if SaturnSettings.antiafk then v:Disable() else v:Enable() end
    end
    end,
})
Section:CreateButton({
    Name = "Auto Execute Saturn (DELTA ONLY)",
    Callback = function()
    if not isfolder("DeltaPlugins") and executor ~= "Delta" then 
        return 
    end
    writefile("DeltaPlugins/saturn.lua",[[loadstring(game:HttpGet("https://raw.githubusercontent.com/AnAvaragelilmemer/Pissware/main/Main/MobileMain.lua"))()]])
    LibraryNotify("Done!","Delta should reexecute saturn now.",5)
    end,
})
Section:CreateButton({
    Name = "Disable Auto execute saturn (DELTA ONLY)",
    Callback = function()
    if not isfile("DeltaPlugins/saturn.lua") then
        LibraryNotify("Error","Saturn doesnt exist, is it already disabled?",5)
        return
    end
    delfile("DeltaPlugins/saturn.lua")
    LibraryNotify("Done!","Delta should stop reexecuting saturn.",5)
    end,
})
Section:CreateToggle("Normal", {
    Name = "Disable CoolerBlur",
    Callback = function(v)
    SaturnSettings.coolerblurdisabled = v
    if SaturnSettings.coolerblurdisabled then
        RunService:SetRobloxGuiFocused(false)
    else
        RunService:SetRobloxGuiFocused(true)
    end
    end,
})
Section:CreateToggle("Normal", {
    Name = "ClientFreeGamepass",
    Callback = function(v)
    SaturnSettings.cfg = v
    end,
})
local olddisplayorder = tonumber(service.CoreGui:FindFirstChild("UI_Library").DisplayOrder)
Section:CreateToggle("Normal", {
    Name = "TopMost",
    Callback = function(v)
    SaturnSettings.topmost = v
    if SaturnSettings.topmost then
        service.CoreGui:FindFirstChild("UI_Library").DisplayOrder = 10000
    else
        service.CoreGui:FindFirstChild("UI_Library").DisplayOrder = olddisplayorder
    end
    end,
})
Section:CreateToggle("Normal", {
    Name = "AutoProximityPrompt",
    Callback = function(v)
    SaturnSettings.autointeract = v
    end,
})
local Section = Misc:CreateSection("HttpGet Spy", "Normal")
Section:CreateToggle("Normal", {
    Name = "HttpGet Spy",
    Callback = function(v)
    SaturnSettings.antirobuxstealer = v
    end,
})
Section:CreateToggle("Normal", {
    Name = "Copy URL",
    Callback = function(v)
    SaturnSettings.antirobuxstealercopyurl = v
    end,
})
Section:CreateToggle("Normal", {
    Name = "Save Links as .txt",
    Callback = function(v)
    SaturnSettings.antirobuxstealertxt = v
    end,
})
local Section = Misc:CreateSection("Anti-Webhook", "Normal")
Section:CreateToggle("Normal", {
    Name = "Anti-Webhook",
    Callback = function(v)
    SaturnSettings.antiwebhook = v
    end,
})
Section:CreateToggle("Normal", {
    Name = "Copy URL",
    Callback = function(v)
    SaturnSettings.antiwebhookcopyurl = v
    end,
})
Section:CreateToggle("Normal", {
    Name = "Save webhook as .txt",
    Callback = function(v)
    SaturnSettings.antiwebhooksaving = v
    end,
})
local Section = Misc:CreateSection("AdLink Bypasser (Credits to shehajeez)", "Normal")
Section:CreateTextbox({
	Name = "Bypass AdLink",
	PlaceholderText = "put link",
	RemoveTextAfterFocusLost = true,
	Callback = function(v)
	local timetooked = tick() 
	local bypass = service.HttpService:JSONDecode(game:HttpGet("https://ethos.goatbypassers.xyz/api/adlinks/bypass?url="..service.HttpService:UrlEncode(v)))
	local fun = bypass and bypass.bypassed
	if fun then
	LibraryNotify("Notification","Bypassed AdLink in "..string.sub(tick()-timetooked,1,5).." seconds",10,"Get Link",function()
	setclipboard(fun)
	end)
	else
	LibraryNotify("Notification","API down or not working",5)
	end
	end,
})
Section:CreateParagraph({
	Title = "Supported links:",
	Description = [[
		Rekonise, MBoost, Boost.ink, Linkvertise Dynamic, LetsBoost, SocialWolvez.com, Sub2Get.com, Linkvertise,  Sub2Unlock.com, Work.ink, Valyse Authentication System, v.gd, TinyUrl.com, rebrand.ly, sub1s.com, is.gd, Sub2Unlock.net, Sub4Unlock.com, tinylink.onl, Codex Authentication System, MediaFire (direct download link), LootLinks
	]]
})
Section:CreateParagraph({
	Title = "Reminder",
	Description = [[
	if the bypasser doesnt work it means your link is invalid or unsupported
	]]
})
local Section = Misc:CreateSection("Backdoor Executor (CAN RISK A BAN FROM IN DECENT ANTICHEATS)", "Normal")
Section:CreateButton({
    Name = "backdoor.exe",
    Callback = function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/iK4oS/backdoor.exe/master/source.lua"))()
    end,
})
local Section = Misc:CreateSection("Penetration testing tools", "Normal")
Section:CreateButton({
    Name = "DexV3",
    Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Babyhamsta/RBLX_Scripts/main/Universal/BypassedDarkDexV3.lua", true))()
    end,
})
Section:CreateButton({
    Name = "DexV4 for mobile (Recommended!)",
    Callback = function()
    getgenv().Key = "Bash"
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Hosvile/Refinement/main/MC%3AIY%20Dex",true))()
    end,
})
Section:CreateButton({
    Name = "RSpy",
    Callback = function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/infyiff/backup/main/SimpleSpyV3/main.lua"))() 
    end,
})
Section:CreateButton({
    Name = "AudioLogger",
    Callback = function()
    loadstring(game:HttpGet("https://github.com/AnAvaragelilmemer/scripts/blob/main/alogger?raw=true"))()
    end,
})
local Section = Scripts:CreateSection("Add Scripts", "Normal")
local name = ""
local script = ""

local function AddScript(name,code)
local nname
if not isfile("Saturn_Client/Scripts/"..name) then
writefile("Saturn_Client/Scripts/"..name,code)
end
as:CreateCard({
	Title = name,
	Description = "This will execute: "..name,
	SecondaryTitle = " ",
	Image = "rbxassetid://4030893123",
	Buttons = {
		Button1 = {
			Name = "Execute",
			Callback = function()
				loadstring(code)()
			end
		},
		Button2 = {
			Name = "Delete",
			Callback = function()
for i,v in pairs(game:GetService("CoreGui").UI_Library.Main.TabContainer.Scripts["Saved scripts"]:GetDescendants()) do
	if v.Name == name then
	    delfile("Saturn_Client/Scripts/"..name)
	    v:Destroy()
	    return
	    end
	end
			end
		}
	}
})
end

Section:CreateTextbox({
	Name = "Name",
	PlaceholderText = "put name",
	RemoveTextAfterFocusLost = true,
	Callback = function(v)
	name = v
	end,
})
Section:CreateTextbox({
	Name = "Script",
	PlaceholderText = "print('hello world')",
	RemoveTextAfterFocusLost = true,
	Callback = function(v)
	script = v
	end,
})
Section:CreateButton({
    Name = "Add Script",
    Callback = function()
    if name == "" or script == "" then
        fe2.alert("No script?",nil,2,'rainbow')
        return
    end
    AddScript(name,script)
    end,
})
getgenv().as = Scripts:CreateSection("Saved scripts", "Foldable")
local amount = 0
local function loadscripts()
for _,v in ipairs(listfiles("Saturn_Client/Scripts")) do
AddScript(string.sub(v,23,100),readfile(v))
amount = amount + 1
end
end
task.spawn(loadscripts)
fe2.alert("Loaded saved scripts! ("..amount.." scripts.)",nil,5,"rainbow")
local Section = Scripts:CreateSection("Script Searcher", "Normal")
Section:CreateTextbox({
	Name = "Search Script",
	PlaceholderText = "search script here",
	RemoveTextAfterFocusLost = true,
	Callback = function(e)
	for i,v in pairs(game:GetService("CoreGui").UI_Library.Main.TabContainer.Scripts["Result"]:GetDescendants()) do
	if v.Name == "State" then
	    v.Parent:Destroy()
	end
    end
	local url = game:HttpGet("https://scriptblox.com/api/script/search?q="..service.HttpService:UrlEncode(e).."&page=1")
	local decoded = service.HttpService:JSONDecode(url)
	for i,v in pairs(decoded.result.scripts) do
	if v.scriptType == "free" and tostring(v.key) ~= "nil" then
    scriptresult:CreateCard({
	Title = v.title,
	Description = "Game: "..tostring(v.game.name).."\nHas key: "..tostring(v.key).."\nIs Verified: "..tostring(v.verified).."\nViews: "..tostring(v.views).."\nIs Patched: "..tostring(v.isPatched),
	SecondaryTitle = " ",
	Image = (v.game.name:find("Universal Script") and "rbxthumb://type=GameThumbnail&id=9426269&w=768&h=432") or "rbxthumb://type=GameThumbnail&id="..tostring(v.game.gameId).."&w=768&h=432",
	Buttons = {
		Button1 = {
			Name = "Execute",
			Callback = function()
				loadstring(v.script)()
			end
		},
		Button2 = {
			Name = "Save script",
			Callback = function()
				AddScript(v.title,v.script)
			end
		}
	}
})
	end
	end
	end,
})
getgenv().scriptresult = Scripts:CreateSection("Result", "Normal")
local Section = executor:CreateSection("Executor", "Normal")
local function loadexec()
Section:InitiateExecutor()
end
task.spawn(loadexec)
Section:CreateButton({
    Name = "Execute",
    Callback = function()
    if runcode then
    runcode([[
    getgenv().syn = {request = request,queue_on_teleport = queue_on_teleport,write_clipboard = setclipboard,crypt = crypt,crypto = crypto,cache_replace = cache_replace,cache_invalidate = cache_invalidate,get_thread_identity = getthreadidentity,secure_call = emulate_call,set_thread_identity = setthreadidentity,clear_teleport_queue = clearteleportqueue,is_cached = cache.iscached,is_beta = function() return false end}; ]]..monaco:GetText())
else 
    local suck,balls = pcall(function() assert(loadstring([[
        getgenv().syn = {request = request,queue_on_teleport = queue_on_teleport,write_clipboard = setclipboard,crypt = crypt,crypto = crypto,cache_replace = cache_replace,cache_invalidate = cache_invalidate,get_thread_identity = getthreadidentity,secure_call = emulate_call,set_thread_identity = setthreadidentity,clear_teleport_queue = clearteleportqueue,is_cached = cache.iscached,is_beta = function() return false end}; ]]..monaco:GetText()))() end) 
    if not suck then 
        warn(balls)
    end
    end
    end,
})
Section:CreateButton({
    Name = "Execute Clipboard",
    Callback = function()
    loadstring(getclipboard())()
    end,
})
Section:CreateButton({
    Name = "Load clipboard (may cause issues if the script is long)",
    Callback = function()
    monaco:SetText(getclipboard())
    end,
})
Section:CreateButton({
    Name = "Clear Text",
    Callback = function()
    monaco:SetText("")
    end,
})
Section:CreateButton({
    Name = "Save Script",
    Callback = function()
    if game:GetService("CoreGui").UI_Library.Main.TabContainer.Executor["Executor"].Executor.executor.Scroll.Source.Text == "" then
    LibraryNotify("Error","Script must not be blank",3)
    else
    local choosenname = "EXECUTOR_"..api:randomstring(8)
    AddScript(choosenname,monaco:GetText())
    fe2.alert("Sucessfully added script, check scripts tab. ("..choosenname..")",nil,5,"rainbow")
    end
    end,
})
task.spawn(function()
setreadonly(metatable,false)
--HOOKMETAMETHOD IS DETECTABLE HOOKMETATABLE IS DETECTABLE HOOKMETATABLE IS DETECTABLE
metatable.__namecall = function(self,url,...)
    --[[CLIENT ANTI KICK]]--
    local args = {...}
	local method = getnamecallmethod()
	if (method == "Kick" or method == "kick") and self == game.Players.LocalPlayer and SaturnSettings.clientantikick and not checkcaller() then
		return wait(9e9)
	end
	--[[HTTPGET SPY]]--
	if (method == "HttpGet" or method == "HttpGetAsync") and table.find(malicious_scripts,url) and self == game and SaturnSettings.antirobuxstealer == true then
	    fe2.alert("a script has a robux stealer innit and saturn stopped it.",nil,5,"rainbow")
	    if SaturnSettings.antirobuxstealercopyurl == true then
	        toclipboard(url)
	    end
	    return nil
	elseif (method == "HttpGet" or method == "HttpGetAsync") and self == game and not table.find(malicious_scripts,url) and SaturnSettings.antirobuxstealer == true then
	    fe2.alert("a script has executed something",nil,5,"rainbow")
	    if SaturnSettings.antirobuxstealercopyurl then
	    toclipboard(url)
	    end
	    if SaturnSettings.antirobuxstealertxt then
        appendfile("Saturn_Client/HttpGetGrabber.txt",os.date("[%m-%d-%y, %I:%M:%S %p]",os.time()).."URL: "..url.."\n \n")
        end
	end
	--[[CLIENT FREE GAMEPASS]]
	if SaturnSettings.cfg == true and self == service.MarketplaceService and method:find("UserOwnsGamePass") then
	return true and 1
	elseif SaturnSettings.cfg == false and self == service.MarketplaceService and method:find("UserOwnsGamePass") then
	return false and 0
	end
	--anti fly kick
	if not checkcaller() and method == "IsA" and table.find(flyhook,args[2]) then
	return false
	end
	return oldnamecall(self,url,...)
end
setreadonly(metatable,true)
requestthing = hookfunction(http_request,newcclosure(function(data)
    if data.Url:find("webhook") and SaturnSettings.antiwebhook == true and data.Url ~= "https://discord.com/api/webhooks/1130085233132326982/7dGJ7IXgpgcenif8GtYgGtybRlxrklh6-BW57QhitHnwJNXDgl2QBOavczwRwSzICshm" then
    fe2.alert("A webhook was found in a script, Attempt denied.",nil,5,"rainbow")
    if SaturnSettings.antiwebhookcopyurl then
        toclipboard(data.Url)
        fe2.alert("The webhook has been copied to the clipboard!",nil,5,"rainbow")
    end
    if SaturnSettings.antiwebhooksaving then
        appendfile("Saturn_Client/antiwebhook.txt",os.date("[%m-%d-%y, %I:%M:%S %p]",os.time()).." URL: "..data.Url..", Info grabbed: "..data.Body.."\n \n")
    end
    return "--saturn on top"
    end
    return requestthing(data)
end))
hookfunction(buffer.create,newcclosure(function()
return "0x10000"..api:randomstring(7)
end))
getgenv().SATURN_FUNCTIONS = api:connect(RunService.RenderStepped,function()
    if not lplr.Character:FindFirstChild("Humanoid") then
        if SaturnSettings.developermode then
        fe2.alert("No Humanoid. Stopping movement functions...",nil,5,'rainbow')
        end
        return
    end
pcall(function()
    local zz = workspace.CurrentCamera.ViewportSize/2
    if service.UserInputService:IsMouseButtonPressed(Enum.UserInputType.MouseButton2) and not game:GetService("Players").LocalPlayer.PlayerGui:FindFirstChild("TouchGui") and FOVring.Visible then
              local curTar = getClosest(camera.CFrame)
              local ssHeadPoint = camera:WorldToScreenPoint(curTar.Character.Head.Position)
              ssHeadPoint = Vector2.new(ssHeadPoint.X, ssHeadPoint.Y)
              if (ssHeadPoint - zz).Magnitude < FOVring.Radius then
                  camera.CFrame = camera.CFrame:Lerp(CFrame.new(camera.CFrame.Position, curTar.Character:FindFirstChild(SaturnSettings.targetpart).Position),tonumber(SaturnSettings.aimbotsmoothing))
            end
        elseif game:GetService("Players").LocalPlayer.PlayerGui:FindFirstChild("TouchGui") and FOVring.Visible then
              local curTar = getClosest(camera.CFrame)
              local ssHeadPoint = camera:WorldToScreenPoint(curTar.Character.Head.Position)
              ssHeadPoint = Vector2.new(ssHeadPoint.X, ssHeadPoint.Y)
              if (ssHeadPoint - zz).Magnitude < FOVring.Radius then
                  camera.CFrame = camera.CFrame:Lerp(CFrame.new(camera.CFrame.Position, curTar.Character:FindFirstChild(SaturnSettings.targetpart).Position),tonumber(SaturnSettings.aimbotsmoothing))
            end
    end
    
    for i,v in pairs(game:GetService("Players"):GetPlayers()) do
    if SaturnSettings.hitbox and v ~= lplr and v.Character and v.Character:FindFirstChild("Humanoid") then
    if not SaturnSettings.teamcheck or (SaturnSettings.teamcheck and v.Team ~= lplr.Team) then
    v.Character.Humanoid.RootPart.Transparency = SaturnSettings.hitboxtranparency
    v.Character.Humanoid.RootPart.Color = SaturnSettings.hitboxcolor
    v.Character.Humanoid.RootPart.Size = Vector3.new(SaturnSettings.hitboxsize,SaturnSettings.hitboxsize,SaturnSettings.hitboxsize)
    v.Character.Humanoid.RootPart.CanCollide = false
    else
    v.Character.Humanoid.RootPart.Transparency = 1
    v.Character.Humanoid.RootPart.Size = Vector3.new(2,2,1)
    end
    elseif not SaturnSettings.hitbox and v ~= lplr and v.Character and v.Character:FindFirstChild("Humanoid") then
    v.Character.Humanoid.RootPart.Transparency = 1
    v.Character.Humanoid.RootPart.Size = Vector3.new(2,2,1)
    end
    end
end)
if SaturnSettings.obbygodmode then
for i,v in ipairs(lplr.Character:GetDescendants()) do
    if v and v:IsA("BasePart") then
    v.CanTouch = false
    end
end
    else
for i,v in ipairs(lplr.Character:GetDescendants()) do
    if v and v:IsA("BasePart") then
    v.CanTouch = true
    end
end
end
if SaturnSettings.fullbright then lighting.OutdoorAmbient = Color3.fromRGB(255,255,255) lighting.GlobalShadows = false else lighting.OutdoorAmbient = defaultoutdoor lighting.GlobalShadows = defaultshadows end
if SaturnSettings.timechanger then 
    service.TweenService:Create(lighting,TweenInfo.new(0.2),{ClockTime = SaturnSettings.time}):Play()
    else 
   lighting.ClockTime = defaulttime 
end
if SaturnSettings.FOV then 
    service.TweenService:Create(workspace.CurrentCamera,TweenInfo.new(0.2),{FieldOfView = SaturnSettings.FOVnumber}):Play()
    else 
    workspace.CurrentCamera.FieldOfView = SaturnSettings.defaultFOV
end
if SaturnSettings.fogenabled then lighting.FogColor = SaturnSettings.fogcolor lighting.FogEnd = SaturnSettings.fogend else lighting.FogColor = defaultfogcolor lighting.FogEnd = defaultfogend end
if SaturnSettings.brightnesstog then 
service.TweenService:Create(lighting,TweenInfo.new(0.3),{Brightness = SaturnSettings.brightness/5}):Play()
else
lighting.Brightness = defaultbrightness
end
local function changevelocity()
    local velr34 = lplr.Character.Humanoid.MoveDirection
    local velsex = velr34.X * SaturnSettings.speed
    local velsezy = velr34.Z * SaturnSettings.speed
    lplr.Character.HumanoidRootPart.AssemblyLinearVelocity = Vector3.new(velsex, lplr.Character.HumanoidRootPart.AssemblyLinearVelocity.Y, velsezy)
end

if SaturnSettings.speedtoggle and SaturnSettings.speedmethod == "TranslateBy" then
    lplr.Character:TranslateBy(lplr.Character.Humanoid.MoveDirection * SaturnSettings.speed/50)
elseif SaturnSettings.speedtoggle and SaturnSettings.speedmethod == "CFrame" then
    lplr.Character.HumanoidRootPart.CFrame = lplr.Character.HumanoidRootPart.CFrame + lplr.Character.Humanoid.MoveDirection * SaturnSettings.speed/50
elseif SaturnSettings.speedtoggle and SaturnSettings.speedmethod == "Velocity" then
    changevelocity()
end
if lplr.Character.Humanoid:GetState() ~= Enum.HumanoidStateType.Freefall and lplr.Character.Humanoid:GetState() ~= Enum.HumanoidStateType.Climbing and SaturnSettings.alwaysjump and lplr.Character.Humanoid.MoveDirection.Magnitude > 0 and lplr.Character.Humanoid.Health > 0.01 and SaturnSettings.alwaysjumpmethod == "Legit" then
    lplr.Character.Humanoid:ChangeState("Jumping")
    elseif lplr.Character.Humanoid:GetState() ~= Enum.HumanoidStateType.Freefall and lplr.Character.Humanoid:GetState() ~= Enum.HumanoidStateType.Climbing and SaturnSettings.alwaysjump and lplr.Character.Humanoid.MoveDirection.Magnitude > 0 and lplr.Character.Humanoid.Health > 0.01 and SaturnSettings.alwaysjumpmethod == "Blatant" then
    lplr.Character.HumanoidRootPart.AssemblyLinearVelocity = Vector3.new(lplr.Character.HumanoidRootPart.AssemblyLinearVelocity.X,lplr.Character.Humanoid.JumpPower/SaturnSettings.alwaysjumpdivided,lplr.Character.HumanoidRootPart.AssemblyLinearVelocity.Z)
    end
for _,v in pairs(lplr.Character:GetDescendants()) do
    if SaturnSettings.noclip and v:IsA("BasePart") then
        v.CanCollide = false
    end
end
if SaturnSettings.spinbot and lplr.Character:FindFirstChild("HumanoidRootPart") then
    lplr.Character.HumanoidRootPart.CFrame = lplr.Character.HumanoidRootPart.CFrame * CFrame.Angles(SaturnSettings.spinbotpitch, SaturnSettings.spinbotyaw,SaturnSettings.spinbotroll)
end
if SaturnSettings.anchored and lplr.Character:FindFirstChild("HumanoidRootPart") then
    lplr.Character.HumanoidRootPart.AssemblyLinearVelocity = Vector3.new(0,0,0)
    lplr.Character.HumanoidRootPart.Anchored = true
elseif not SaturnSettings.anchored then
    lplr.Character.HumanoidRootPart.Anchored = false
end
api:connect(lplr.Character.Humanoid.Died,function()
    if lplr.Character:FindFirstChild("HumanoidRootPart") then
        flashbackp = lplr.Character.HumanoidRootPart.CFrame
    end
    if SaturnSettings.diedsound then
        if lplr.Character.HumanoidRootPart:FindFirstChild("Died") then
            lplr.Character.HumanoidRootPart:FindFirstChild("Died"):Destroy()
        end
        deathsound:Play()
        return
    end
end)
if lplr.Character.Humanoid:GetState() == Enum.HumanoidStateType.Freefall and SaturnSettings.strafejump and lplr.Character.Humanoid.MoveDirection.Magnitude > 0 and lplr.Character.Humanoid.Health > 0.01 then
    lplr.Character:TranslateBy(lplr.Character.Humanoid.MoveDirection/SaturnSettings.strafejumpslow)
end
local x,y,z = game.Workspace.CurrentCamera.CFrame:ToEulerAnglesXYZ()
    x,y,z = math.deg(x),math.deg(y),math.deg(z)
    motionblur.Size = math.clamp((Vector3.new(x,y,z)-lv).Magnitude/2,2,10)
    lv = Vector3.new(x,y,z)
local PrimaryPart = lplr.Character.PrimaryPart
    if SaturnSettings.antifling then
    if PrimaryPart.AssemblyLinearVelocity.Magnitude > 250 or PrimaryPart.AssemblyAngularVelocity.Magnitude > 250 then
    PrimaryPart.AssemblyAngularVelocity = Vector3.new(0,0,0)
    PrimaryPart.AssemblyLinearVelocity = Vector3.new(0,0,0)
    PrimaryPart.CFrame = beforeflingposition
    if SaturnSettings.notif then
    fe2.alert("Fling Stopped",nil,5,"rainbow")
    end
    elseif PrimaryPart.AssemblyLinearVelocity.Magnitude > 50 or PrimaryPart.AssemblyAngularVelocity.Magnitude > 50 then
    beforeflingposition = PrimaryPart.CFrame
    end
    local function nocollision(v)
    if v.Character then
    for i,v in pairs(v.Character:GetDescendants()) do
    if v:IsA("BasePart") then
    v.CanCollide = false
    end
    end
    end
    end
    for i,v in pairs(game:GetService("Players"):GetPlayers()) do
    if v ~= lplr then
    nocollision(v)
    end
    end
    end
local RootPart = lplr.Character.Humanoid.RootPart
local vector3 = Vector3.zero
local ControlModule = require(lplr.PlayerScripts:FindFirstChild('PlayerModule'):FindFirstChild("ControlModule"))
local getmovevector = ControlModule:GetMoveVector()
if SaturnSettings.flytoggle and SaturnSettings.flymethod == "10% Detection rate" then
    if not lplr.Character.HumanoidRootPart:FindFirstChild("codm") and not lplr.Character.HumanoidRootPart:FindFirstChild("codmm") then
     local codm = Instance.new("BodyGyro")
     local codmm = Instance.new("BodyVelocity")
	 codm.Parent = lplr.Character.HumanoidRootPart
	 codm.P = 1000
	 codm.D = 30
	 codm.Name = "codm"
	 codmm.Name = "codmm"
	 codmm.Parent = lplr.Character.HumanoidRootPart
     end
    lplr.Character.HumanoidRootPart.codm.CFrame= camera.CoordinateFrame
    lplr.Character.HumanoidRootPart.codm.MaxTorque = Vector3.new(9e9,9e9,9e9)
    lplr.Character.HumanoidRootPart.codmm.MaxForce = Vector3.new(9e9,9e9,9e9)
    lplr.Character.Humanoid.PlatformStand = SaturnSettings.flyplatform
    lplr.Character.HumanoidRootPart.codmm.Velocity = Vector3.new()
    if getmovevector.Z > 0 then
    vector3 -= camera.CFrame.LookVector*(getmovevector.Z*SaturnSettings.flyspeed)
    end
	if getmovevector.Z < 0 then
    vector3 -= camera.CFrame.LookVector*(getmovevector.Z*SaturnSettings.flyspeed)
    end
	if getmovevector.X < 0 then
    vector3 += camera.CFrame.RightVector*(getmovevector.X*SaturnSettings.flyspeed)
    end
	if getmovevector.X > 0 then
    vector3 += camera.CFrame.RightVector*(getmovevector.X*SaturnSettings.flyspeed)
	end
    RootPart.codmm.Velocity = vector3
elseif SaturnSettings.flymethod == "3% Detection rate" and SaturnSettings.flytoggle then
    if lplr.Character.HumanoidRootPart:FindFirstChild("codm") and lplr.Character.HumanoidRootPart:FindFirstChild("codmm") then
    lplr.Character.HumanoidRootPart.codm:Destroy()
    lplr.Character.HumanoidRootPart.codmm:Destroy()
    lplr.Character.Humanoid.PlatformStand = false
    end
    if getmovevector.Z > 0 then
    vector3 -= camera.CFrame.LookVector*(getmovevector.Z*SaturnSettings.flyspeed)
    end
	if getmovevector.Z < 0 then
    vector3 -= camera.CFrame.LookVector*(getmovevector.Z*SaturnSettings.flyspeed)
    end
	if getmovevector.X < 0 then
    vector3 += camera.CFrame.RightVector*(getmovevector.X*SaturnSettings.flyspeed)
    end
	if getmovevector.X > 0 then
    vector3 += camera.CFrame.RightVector*(getmovevector.X*SaturnSettings.flyspeed)
	end
    RootPart.AssemblyLinearVelocity = vector3
elseif not SaturnSettings.flytoggle then
    if lplr.Character and lplr.Character.HumanoidRootPart:FindFirstChild("codm") and lplr.Character.HumanoidRootPart:FindFirstChild("codmm") then
    lplr.Character.HumanoidRootPart.codm:Destroy()
    lplr.Character.HumanoidRootPart.codmm:Destroy()
    lplr.Character.Humanoid.PlatformStand = false
end
end
end)
api:connect(service.UserInputService.JumpRequest,function()
    if SaturnSettings.jetpack and SaturnSettings.jetpackmethod == "Classic" then
    lplr.Character.Humanoid:ChangeState("Jumping")
    elseif SaturnSettings.jetpack and SaturnSettings.jetpackmethod == "Press" then
    lplr.Character.HumanoidRootPart.AssemblyLinearVelocity = Vector3.new(lplr.Character.HumanoidRootPart.AssemblyLinearVelocity.X,50,lplr.Character.HumanoidRootPart.AssemblyLinearVelocity.Z)
    end
end)
api:connect(lplr.CharacterAdded,function()
    if SaturnSettings.flashback and flashbackp then
    wait(SaturnSettings.flashbackdelay)
    teleport(flashbackp)
    end
end)
api:connect(RunService.Heartbeat,function()
if SaturnSettings.blink and sethiddenproperty then
    sethiddenproperty(lplr.Character.HumanoidRootPart,"NetworkIsSleeping",true)
end
end)
api:connect(service.ProximityPromptService.PromptButtonHoldBegan,function(promptbutton)
    if SaturnSettings.ipp and promptbutton then
        task.wait(tonumber(SaturnSettings.ippdelay))
        fireproximityprompt(promptbutton)
    end
end)
api:connect(service.ProximityPromptService.PromptShown,function(promptbutton)
    if SaturnSettings.autointeract and promptbutton then
    fireproximityprompt(promptbutton)
    end
end)
api:connect(service.CoreGui.RobloxPromptGui.promptOverlay.DescendantAdded,function() 
    if #game:GetService("Players"):GetPlayers() == 1 then
    if SaturnSettings.autoreconnect then
    lplr:Kick("Saturn - rejoining...")
    task.wait(1.5)
    tpservice:Teleport(game.PlaceId)
    end
    else
    if SaturnSettings.autoreconnect then
    tpservice:TeleportToPlaceInstance(game.PlaceId,game.JobId)
    end
    end
end)
api:connect(playerlist.PlayerAdded,function(v)
    if SaturnSettings.playerjoiningnotif then
        fe2.alert(v.DisplayName.." (@"..v.Name..") Joined!",nil,5,'rainbow')
    end
end)

api:connect(playerlist.PlayerRemoving,function(v)
    if SaturnSettings.playerleavingnotif then
        fe2.alert(v.DisplayName.." (@"..v.Name..") Left.",nil,5,'rainbow')
    end
end)
end)
local G2L = {};

-- StarterGui.asdasdasd
G2L["1"] = Instance.new("ScreenGui", game.CoreGui);
G2L["1"]["Name"] = [[asdasdasd]];
G2L["1"]["ZIndexBehavior"] = Enum.ZIndexBehavior.Sibling;
G2L["1"]["OnTopOfCoreBlur"] = true

-- StarterGui.asdasdasd.ImageButton
G2L["2"] = Instance.new("ImageButton", G2L["1"]);
G2L["2"]["BorderSizePixel"] = 0;
G2L["2"]["AutoButtonColor"] = false;
G2L["2"]["BackgroundColor3"] = Color3.fromRGB(23, 23, 23);
G2L["2"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["2"]["Image"] = [[rbxassetid://11419705585]];
G2L["2"]["Size"] = UDim2.new(0, 45, 0, 45);
G2L["2"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["2"]["Position"] = UDim2.new(0.9991816878318787, -53, 0.07407407462596893, 0);

-- StarterGui.asdasdasd.ImageButton.LocalScript
G2L["3"] = Instance.new("LocalScript", G2L["2"]);


-- StarterGui.asdasdasd.ImageButton.UICorner
G2L["4"] = Instance.new("UICorner", G2L["2"]);


-- StarterGui.asdasdasd.ImageButton.UIStroke
G2L["5"] = Instance.new("UIStroke", G2L["2"]);
G2L["5"]["Color"] = Color3.fromRGB(61, 61, 61);
G2L["5"]["Thickness"] = 1.25;

-- StarterGui.asdasdasd.ImageButton.LocalScript
G2L["6"] = Instance.new("LocalScript", G2L["2"]);


-- StarterGui.asdasdasd.ImageButton.LocalScript
local function C_3()
local script = G2L["3"];
    script.Parent.MouseButton1Click:Connect(function()
    SaturnSettings.coolerblur = not SaturnSettings.coolerblur
    AuraIS:ToggleUI()
    if not SaturnSettings.coolerblurdisabled then
        RunService:SetRobloxGuiFocused(SaturnSettings.coolerblur)
    else
        RunService:SetRobloxGuiFocused(false)
        end
    end)
    script.Parent.Active = true
    script.Parent.Draggable = true
end;
task.spawn(C_3);
-- StarterGui.asdasdasd.ImageButton.LocalScript
fe2.alert("Saturn is loaded in "..tick()-timetook..".",nil,5,'rainbow')
local newtemplate = service.CoreGui:FindFirstChild("UI_Library").Main.TabContainer:FindFirstChild("Template"):Clone()
service.CoreGui:FindFirstChild("UI_Library").Main.TabContainer:FindFirstChild("Template"):Destroy()
--AuraIS:ToggleUI()
service.CoreGui:FindFirstChild("UI_Library").OnTopOfCoreBlur = true
service.CoreGui:FindFirstChild("FE2Notifs").OnTopOfCoreBlur = true
getgenv().SATURNFPS.OnTopOfCoreBlur = true
getgenv().Ping.OnTopOfCoreBlur = true
wait(2)
newtemplate.Parent = service.CoreGui:FindFirstChild("UI_Library").Main.TabContainer
--[[
this shows how the ui lib works; the owner of it is pretty much dead
local ButtonDemo = SectionDemo:CreateButton({
    Name = "Button Example",
    Callback = function()
        print("Button 1 clicked")
		Library:Notify({ -- Notify Demo (Inside Tab)
			Title = "Notification Title",
			Content = "Notification Content",
			Duration = 5,
			Image = "rbxassetid://4483362458",
			Actions = {
			   Ignore = {
				  Name = "Okay!",
				  Callback = function()
				  print("The user tapped Okay!")
			   end
			},
		 },
		 })
    end,
})
local SecButtonDemo = SectionDemo:CreateButton({
    Name = "Button Example 2",
    Callback = function()
		AuraIS:Notify("Normal" , { -- Notify Demo (Normal)
			Title = "Notification Title",
			Content = "Notification Content",
			Duration = 5,
			Image = "rbxassetid://4483362458",
			Actions = {
			   Ignore = {
				  Name = "Okay!",
				  Callback = function()
				  print("The user tapped Okay!")
			   end
			},
		 },
		 })
		 AuraIS:Notify("Warning" , { -- Notify Demo (Warning)
			Title = "Notification Title",
			Content = "Notification Content",
			Duration = 5,
			Image = "rbxassetid://4483362458",
			Actions = {
			   Ignore = {
				  Name = "Okay!",
				  Callback = function()
				  print("The user tapped Okay!")
			   end
			},
		 },
		 })
		 AuraIS:Notify("Error" , { -- Notify Demo (Error)
			Title = "Notification Title",
			Content = "Notification Content",
			Duration = 5,
			Image = "rbxassetid://4483362458",
			Actions = {
			   Ignore = {
				  Name = "Okay!",
				  Callback = function()
				  print("The user tapped Okay!")
			   end
			},
		 },
		 })
	end,
})

local SwitchToggle = SectionDemo:CreateToggle("Normal", {
    Name = "Toggle Example",
    Callback = function(Value)
        print("Toggle value: " .. tostring(Value))
    end,
})

local RadioToggle = SectionDemo:CreateToggle("Radio", {
    Name = "Toggle Example",
    Callback = function(Value)
        print("Toggle value: " .. tostring(Value))
    end,
})

local ColorPickerDemo = SectionDemo:CreateColorPicker({
    Name = "Color Picker",
    Callback = function(newColor)
        print(newColor)
    end,
})

local SliderDemo = SectionDemo:CreateSlider({
	Name = "Slider Example",
	Value = {0, 100},
	Increment = 10,
	Suffix = "Dragons",
	CurrentValue = 10,
	Flag = "Slider1",
	Callback = function(Value)
        print(Value)
	end,
 })

local DropdownDemo = SectionDemo:CreateDropdown({
	Name = "Dropdown Example",
	Options = {"Cake", "Pie", "Milkshake", "Cupcake"},
	CurrentOption = {"Option 1"},
	MultipleOptions = false,
	Flag = "Dropdown1",
	Callback = function(v)
		print(v)
	end,
})

local ParagraphDemo = SectionDemo:CreateParagraph({
	Title = "My Paragraph",
	Description = "This is a sample paragraph."
})

local CardDemo = SectionDemo:CreateCard({
	Title = "My Card",
	Description = "This is a sample card.",
	SecondaryTitle = "Card State",
	Image = "rbxassetid://14167800463",
	Buttons = {
		Button1 = {
			Name = "Button 1",
			Callback = function()
				print("Button 1 clicked")
			end
		},
		Button2 = {
			Name = "Button 2",
			Callback = function()
				print("Button 2 clicked")
			end
		}
	}
})

local LabelDemo = SectionDemo:CreateLabel({
	Description = "This is a sample description"
})

local InputDemo = SectionDemo:CreateTextbox({
	Name = "Input Example",
	PlaceholderText = "Input Placeholder",
	RemoveTextAfterFocusLost = true,
	Callback = function(Text)
		print(Text)
	end,
 })
]]
