--[[
	Lexical scanner for creating a sequence of tokens from Lua source code.
	This is a heavily modified and Roblox-optimized version of
	the original Penlight Lexer module:
		https://github.com/stevedonovan/Penlight
	Authors:
		stevedonovan <https://github.com/stevedonovan> ----------------- Original Penlight lexer author
		ryanjmulder <https://github.com/ryanjmulder> ----------------- Penlight lexer contributer
		mpeterv <https://github.com/mpeterv> ----------------- Penlight lexer contributer
		Tieske <https://github.com/Tieske> ----------------- Penlight lexer contributer
		boatbomber <https://github.com/boatbomber> ----------------- Roblox port, added builtin token, added patterns for incomplete strings and comments, bug fixes, behavior changes, token optimization
		Sleitnick <https://github.com/Sleitnick> ----------------- Roblox optimizations
		howmanysmall <https://github.com/howmanysmall> ----------------- Lua + Roblox optimizations
		irenaeuss    <https://github.com/AnAvaragelilmemer> ------------- Some Exploit Functions

	List of possible tokens:
		- keyword
		- builtin
		- iden
		- string
		- number
		- space
		- comment
		- operator

	Usage:
		local source = "for i = 1,n do end"
		
		-- The 'scan' function returns a token iterator:
		for token,src in lexer.scan(source) do
			print(token, src)
		end
			> keyword for
			> space  
			> iden i
			> space  
			> operator =
			> space  
			> number 1
			> operator ,
			> iden n
			> space  
			> keyword do
			> space  
			> keyword end
			
	
]]--

local lexer = {}

local ipairs = ipairs

local NUMBER_A = "^0x[%da-fA-F]+"
local NUMBER_B = "^%d+%.?%d*[eE][%+%-]?%d+"
local NUMBER_C = "^%d+[%._]?[%d_eE]*"
local IDEN = "^[%a_][%w_]*"
local WSPACE = "^[ \t\n]+"
local STRING_EMPTY = "^(['\"])%1"							--Empty String
local STRING_PLAIN = [=[^(['"])[%w%p \t\v\b\f\r\a]-([^%\]%1)]=]	--TODO: Handle escaping escapes
local STRING_INCOMP_A = "^(['\"]).-\n"						--Incompleted String with next line
local STRING_INCOMP_B = "^(['\"])[^\n]*"					--Incompleted String without next line
local STRING_MULTI = "^%[(=*)%[.-%]%1%]"					--Multiline-String
local STRING_MULTI_INCOMP = "^%[=*%[.-.*"						--Incompleted Multiline-String
local COMMENT_MULTI = "^%-%-%[(=*)%[.-%]%1%]"				--Completed Multiline-Comment
local COMMENT_MULTI_INCOMP = "^%-%-%[=*%[.-.*"				--Incompleted Multiline-Comment
local COMMENT_PLAIN = "^%-%-.-\n"							--Completed Singleline-Comment
local COMMENT_INCOMP = "^%-%-.*"							--Incompleted Singleline-Comment

local TABLE_EMPTY = {}

local lua_keyword = {
	["and"] = true, ["break"] = true, ["do"] = true, ["else"] = true, ["elseif"] = true,
	["end"] = true, ["false"] = true, ["for"] = true, ["function"] = true, ["if"] = true,
	["in"] = true, ["local"] = true, ["nil"] = true, ["not"] = true, ["while"] = true,
	["or"] = true, ["repeat"] = true, ["return"] = true, ["then"] = true, ["true"] = true,
	["self"] = true, ["until"] = true,
	
	["continue"] = true,
	
	["plugin"] = true, --Highlights as a keyword instead of a builtin cuz Roblox is weird
}


local lua_builtin = {
	-- Lua Functions
	["assert"] = true;["collectgarbage"] = true;["error"] = true;["getfenv"] = true;
	["getmetatable"] = true;["ipairs"] = true;["loadstring"] = true;["newproxy"] = true;
	["next"] = true;["pairs"] = true;["pcall"] = true;["print"] = true;["rawequal"] = true;
	["rawget"] = true;["rawset"] = true;["select"] = true;["setfenv"] = true;["setmetatable"] = true;
	["tonumber"] = true;["tostring"] = true;["type"] = true;["unpack"] = true;["xpcall"] = true;

	-- Lua Variables
	["_G"] = true;["_VERSION"] = true;

	-- Lua Tables
	["bit32"] = true;["coroutine"] = true;["debug"] = true;
	["math"] = true;["os"] = true;["string"] = true;
	["table"] = true;["utf8"] = true;

	-- Roblox Functions
	["delay"] = true;["elapsedTime"] = true;["gcinfo"] = true;["require"] = true;
	["settings"] = true;["spawn"] = true;["tick"] = true;["time"] = true;["typeof"] = true;
	["UserSettings"] = true;["wait"] = true;["warn"] = true;["ypcall"] = true;

	-- Roblox Variables
	["Enum"] = true;["game"] = true;["shared"] = true;["script"] = true;
	["workspace"] = true;

	-- Roblox Tables
	["Axes"] = true;["BrickColor"] = true;["CellId"] = true;["CFrame"] = true;["Color3"] = true;
	["ColorSequence"] = true;["ColorSequenceKeypoint"] = true;["DateTime"] = true;
	["DockWidgetPluginGuiInfo"] = true;["Faces"] = true;["Instance"] = true;["NumberRange"] = true;
	["NumberSequence"] = true;["NumberSequenceKeypoint"] = true;["PathWaypoint"] = true;
	["PhysicalProperties"] = true;["PluginDrag"] = true;["Random"] = true;["Ray"] = true;["Rect"] = true;
	["Region3"] = true;["Region3int16"] = true;["TweenInfo"] = true;["UDim"] = true;["UDim2"] = true;
	["Vector2"] = true;["Vector2int16"] = true;["Vector3"] = true;["Vector3int16"] = true;["new"] = true;
	--exploit functions 
	 ["getclipboard"]=true;["fromclipboard"]=true;["getsenv"]=true;["clear_teleport_queue"]=true;["protectfunction"]=true;["debug"]=true;["consolecreate"]=true;["queue_on_teleport"]=true;["getexecutorname"]=true;["lz4decompress"]=true;["is_fluxus_closure"]=true;["loginfo"]=true;["crypt"]=true;["getallthreads"]=true;["mouse1press"]=true;["toclipboard"]=true;["newcclosure"]=true;["iscustomasset"]=true;["request"]=true;["is_c_closure"]=true;["setscriptable"]=true;["getmodules"]=true;["http_request"]=true;["getsignalstrength"]=true;["mousescroll"]=true;["doRequestInternal"]=true;["isourclosure"]=true;["setthreadidentity"]=true;["getproto"]=true;["isrbxactive"]=true;["make_readonly"]=true;["deletefile"]=true;["writeuifile"]=true;["isuifile"]=true;["MOUSE_DOWN"]=true;["mousemoveabs"]=true;["base64decode"]=true;["mouse1click"]=true;["ishooked"]=true;["gethiddenproperty"]=true;["makereadonly"]=true;["getnilinstances"]=true;["isvalidlevel"]=true;["iscclosure"]=true;["restorefunction"]=true;["get_scripts"]=true;["script"]=true;["setclipboard"]=true;["isreadonly"]=true;["mouse2click"]=true;["MOUSE_CLICK"]=true;["writefile"]=true;["base64_encode"]=true;["getconstant"]=true;["iswritable"]=true;["getscriptclosure"]=true;["printuiwarn"]=true;["set_namecall_method"]=true;["readuifile"]=true;["infouiconsole"]=true;["getscriptfromthread"]=true;["setrenderproperty"]=true;["consoleerror"]=true;["base64"]=true;["setconstant"]=true;["emulate_call"]=true;["getinstances"]=true;["getconstants"]=true;["firetouchinterest"]=true;["erroruiconsole"]=true;["doHttpGet"]=true;["is_our_closure"]=true;["Drawing"]=true;["getrenderproperty"]=true;["consoleprint"]=true;["get_modules"]=true;["printuierror"]=true;["printdebug"]=true;["cleardrawcache"]=true;["validlevel"]=true;["Base64"]=true;["printuiconsole"]=true;["zstdcompress"]=true;["delfolder"]=true;["getgenv"]=true;["keyrelease"]=true;["makewritable"]=true;["getscripthash"]=true;["MOUSE_UP"]=true;["require"]=true;["getObjects"]=true;["getfpscap"]=true;["get_all_threads"]=true;["executeclipboard"]=true;["fireproximityprompt"]=true;["islclosure"]=true;["getbatterypercentage"]=true;["getstateenv"]=true;["lz4compress"]=true;["getscriptbytecode"]=true;["detour_function"]=true;["get_gc_objects"]=true;["setfpscap"]=true;["is_executor_closure"]=true;["get_fps_cap"]=true;["fireclickdetector"]=true;["rconsolecreate"]=true;["rconsoleshow"]=true;["iswindowactive"]=true;["firesignal"]=true;["makefolder"]=true;["is_fluxus_function"]=true;["detourfunction"]=true;["isscriptable"]=true;["getfflag"]=true;["consoledestroy"]=true;["isgameactive"]=true;["is_krnl_closure"]=true;["http"]=true;["setthreadcontext"]=true;["rconsoleerror"]=true;["get_instances"]=true;["getthreadcontext"]=true;["getspecialinfo"]=true;["replacefunction"]=true;["cloneref"]=true;["loadstring"]=true;["getprotos"]=true;["hookfunction"]=true;["mouse2release"]=true;["rconsoleinfo"]=true;["get_thread_identity"]=true;["getrunningscripts"]=true;["getupvalue"]=true;["consolesettitle"]=true;["setidentity"]=true;["consoleinfo"]=true;["setupvalue"]=true;["isfolder"]=true;["total_tabs"]=true;["identifyexecutor"]=true;["getcaller"]=true;["runcode"]=true;["dumpstring"]=true;["keypress"]=true;["iswriteable"]=true;["getupvalues"]=true;["rconsoleclear"]=true;["consoleerr"]=true;["replacefunc"]=true;["set_thread_identity"]=true;["getinfo"]=true;["consolewarn"]=true;["websocket"]=true;["loadfile"]=true;["cHjGyjKbe"]=true;["clonefunc"]=true;["logwarn"]=true;["is_unlocked"]=true;["getconnections"]=true;["checkcaller"]=true;["setreadonly"]=true;["setsimulationradius"]=true;["securecall"]=true;["WebSocket"]=true;["IjHyfuyuHeg"]=true;["isfluxusfunction"]=true;["restorefunc"]=true;["checkclosure"]=true;["cache"]=true;["crypto"]=true;["secure_call"]=true;["drawingLoaded"]=true;["isnetworkowner"]=true;["compareinstances"]=true;["isrenderobj"]=true;["rconsoleerr"]=true;["delfile"]=true;["getcontext"]=true;["mouse1release"]=true;["getsynasset"]=true;["gethui"]=true;["doHttpPost"]=true;["getscriptcaller"]=true;["base64encode"]=true;["isexecutorclosure"]=true;["getthreadidentity"]=true;["clonefunction"]=true;["setrawmetatable"]=true;["restoreclosure"]=true;["getcustomasset"]=true;["replaceclosure"]=true;["hookfunc"]=true;["hookmetamethod"]=true;["logerror"]=true;["get_calling_script"]=true;["gethwid"]=true;["getrawmetatable"]=true;["rconsoleprint"]=true;["keyclick"]=true;["bit"]=true;["setstack"]=true;["setfflag"]=true;["consoleinput"]=true;["get_namecall_method"]=true;["getcallingscript"]=true;["warnuiconsole"]=true;["get_loaded_modules"]=true;["getrenv"]=true;["runautoexec"]=true;["getloadedmodules"]=true;["is_protosmasher_closure"]=true;["isfunctionhooked"]=true;["setrbxclipboard"]=true;["getmenv"]=true;["mousemoverel"]=true;["get_script_function"]=true;["getscriptfunction"]=true;["execclipboard"]=true;["logprint"]=true;["deletefolder"]=true;["mouse2press"]=true;["Input"]=true;["getscriptenvs"]=true;["httpGetAsync"]=true;["isfile"]=true;["queueonteleport"]=true;["rconsolename"]=true;["is_l_closure"]=true;["appendfile"]=true;["getidentity"]=true;["consoleclear"]=true;["is_synapse_function"]=true;["set_thread_context"]=true;["getgc"]=true;["zstddecompress"]=true;["getcurrentline"]=true;["getscripts"]=true;["getstack"]=true;["gettenv"]=true;["get_nil_instances"]=true;["isfluxusclosure"]=true;["makewriteable"]=true;["setcontext"]=true;["base64_decode"]=true;["sethiddenproperty"]=true;["getfpsmax"]=true;["rconsoleinput"]=true;["get_thread_context"]=true;["getreg"]=true;["clearteleportqueue"]=true;["writecustomasset"]=true;["readfile"]=true;["setnamecallmethod"]=true;["replacecclosure"]=true;["getnamecallmethod"]=true;["listfiles"]=true;["rconsolewarn"]=true;["syn"]=true;

}

local function idump(tok)
	return coroutine.yield("iden", tok)
end

local function odump(tok)
	return coroutine.yield("operator", tok)
end

local function ndump(tok)
	return coroutine.yield("number", tok)
end

local function sdump(tok)
	return coroutine.yield("string", tok)
end

local function cdump(tok)
	return coroutine.yield("comment", tok)
end

local function wsdump(tok)
	return coroutine.yield("space", tok)
end

local function lua_vdump(tok)
	if lua_keyword[tok] then
		return coroutine.yield("keyword", tok)
	elseif lua_builtin[tok] then
		return coroutine.yield("builtin", tok)
	else
		return coroutine.yield("iden", tok)
	end
end

local lua_matches = {
	-- Indentifiers
	{IDEN, lua_vdump},
	
	 -- Whitespace
	{WSPACE, wsdump},
	
	-- Numbers
	{NUMBER_A, ndump},
	{NUMBER_B, ndump},
	{NUMBER_C, ndump},
	
	-- Strings
	{STRING_EMPTY, sdump},
	{STRING_PLAIN, sdump},
	{STRING_INCOMP_A, sdump},
	{STRING_INCOMP_B, sdump},
	{STRING_MULTI, sdump},
	{STRING_MULTI_INCOMP, sdump},
	
	-- Comments
	{COMMENT_MULTI, cdump},			
	{COMMENT_MULTI_INCOMP, cdump},
	{COMMENT_PLAIN, cdump},
	{COMMENT_INCOMP, cdump},
	
	-- Operators
	{"^[:;/~%*%(%)%-=<>%[%]{},%.#%^%+%%]+", odump},
	{"^.", idump}
}

--- Create a plain token iterator from a string.
-- @tparam string s a string.	
	
function lexer.scan(s)
	local startTick = tick()
	lexer.finished = false
	
	local function lex(first_arg)
		local line_nr = 0
		local sz = #s
		local idx = 1
		
		-- res is the value used to resume the coroutine.
		local function handle_requests(res)
			while res do
				local tp = type(res)
				-- Insert a token list:
				if tp == "table" then
					res = coroutine.yield("", "")
					for _, t in ipairs(res) do
						res = coroutine.yield(t[1], t[2])
					end
				elseif tp == "string" then -- Or search up to some special pattern:
					local i1, i2 = string.find(s, res, idx)
					if i1 then
						idx = i2 + 1
						res = coroutine.yield("", string.sub(s, i1, i2))
					else
						res = coroutine.yield("", "")
						idx = sz + 1
					end
				else
					res = coroutine.yield(line_nr, idx)
				end
			end
		end
		
		handle_requests(first_arg)
		line_nr = 1
		
		while true do
			if idx > sz then
				while true do
					handle_requests(coroutine.yield())
				end
			end
			for _, m in ipairs(lua_matches) do
				local findres = table.create(2)
				local i1, i2 = string.find(s, m[1], idx)
				findres[1], findres[2] = i1, i2
				if i1 then
					local tok = string.sub(s, i1, i2)
					idx = i2 + 1
					lexer.finished = idx > sz
--					if lexer.finished then
--						print(tick()-startTick)
--					end
					
					local res = m[2](tok, findres)
					
					if string.find(tok, "\n") then
						-- Update line number:
						local _, newlines = string.gsub(tok, "\n", TABLE_EMPTY)
						line_nr = line_nr + newlines
					end
					
					handle_requests(res)
					break
				end
			end
		end
	end
	return coroutine.wrap(lex)
end

return lexer
