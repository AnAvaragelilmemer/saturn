--[[

	Lexical scanner for creating a sequence of tokens from Lua source code.

	This is a heavily modified and Roblox-optimized version of
	the original Penlight Lexer module:
		https://github.com/stevedonovan/Penlight

	Authors:
		stevedonovan <https://github.com/stevedonovan> ----------------- Original Penlight lexer author
		ryanjmulder  <https://github.com/ryanjmulder>  ----------------- Penlight lexer contributer
		mpeterv      <https://github.com/mpeterv>      ----------------- Penlight lexer contributer
		Tieske       <https://github.com/Tieske>       ----------------- Penlight lexer contributer
		boatbomber   <https://github.com/boatbomber>   ----------------- Roblox port, optimizations, and bug fixes
		Sleitnick    <https://github.com/Sleitnick>    ----------------- Roblox optimizations
		irenaeuss    <https://github.com/AnAvaragelilmemer> ------------- Some Exploit Functions
	Usage:

		local source = "for i = 1,n do end"
		
		-- The 'scan' function returns a token iterator:
		for token,src in lexer.scan(source) do
			print(token, src)
		end

			> keyword for
			> iden    i
			> =       =
			> number  1
			> ,       ,
			> iden    n
			> keyword do
			> keyword end

	List of tokens:
		- keyword
		- builtin
		- iden
		- string
		- number
		- space
		- comment

	Other tokens that don't fall into the above categories
	will simply be returned as itself. For instance, operators
	like "+" will simply return "+" as the token.

--]]

local lexer = {}

local yield, wrap  = coroutine.yield, coroutine.wrap
local strfind      = string.find
local strsub       = string.sub
local append       = table.insert
local type         = type

local NUMBER1	= "^[%+%-]?%d+%.?%d*[eE][%+%-]?%d+"
local NUMBER2	= "^[%+%-]?%d+%.?%d*"
local NUMBER3	= "^0x[%da-fA-F]+"
local NUMBER4	= "^%d+%.?%d*[eE][%+%-]?%d+"
local NUMBER5	= "^%d+%.?%d*"
local IDEN		= "^[%a_][%w_]*"
local WSPACE	= "^%s+"
local STRING1	= "^(['\"])%1"							--Empty String
local STRING2	= [[^(['"])(\*)%2%1]]
local STRING3	= [[^(['"]).-[^\](\*)%2%1]]
local STRING4	= "^(['\"]).-.*"						--Incompleted String
local STRING5	= "^%[(=*)%[.-%]%1%]"					--Multiline-String
local STRING6	= "^%[%[.-.*"							--Incompleted Multiline-String
local CHAR1		= "^''"
local CHAR2		= [[^'(\*)%1']]
local CHAR3		= [[^'.-[^\](\*)%1']]
local PREPRO	= "^#.-[^\\]\n"
local MCOMMENT1	= "^%-%-%[(=*)%[.-%]%1%]"				--Completed Multiline-Comment
local MCOMMENT2	= "^%-%-%[%[.-.*"						--Incompleted Multiline-Comment
local SCOMMENT1	= "^%-%-.-\n"							--Completed Singleline-Comment
local SCOMMENT2	= "^%-%-.-.*"							--Incompleted Singleline-Comment
local THINGY 	= "^[%,;]%w-%s?%(.-%)"

local lua_keyword = {
	["and"] = true;  ["break"] = true;  ["do"] = true;      ["else"] = true;      ["elseif"] = true;
	["end"] = true;  ["false"] = true;  ["for"] = true;     ["function"] = true;  ["if"] = true;
	["in"] = true;   ["local"] = true;  ["nil"] = true;     ["not"] = true;       ["while"] = true;
	["or"] = true;   ["repeat"] = true; ["return"] = true;  ["then"] = true;      ["true"] = true;
	["self"] = true; ["until"] = true
}

local lua_builtin = {
	["assert"] = true;["collectgarbage"] = true;["error"] = true;["_G"] = true;
	["gcinfo"] = true;["getfenv"] = true;["getmetatable"] = true;["ipairs"] = true;
	["newproxy"] = true;["next"] = true;["pairs"] = true;
	["pcall"] = true;["print"] = true;["rawequal"] = true;["rawget"] = true;["rawset"] = true;
	["select"] = true;["setfenv"] = true;["setmetatable"] = true;["tonumber"] = true;
	["tostring"] = true;["type"] = true;["unpack"] = true;["_VERSION"] = true;["xpcall"] = true;
	["delay"] = true;["elapsedTime"] = true;["require"] = true;["spawn"] = true;["tick"] = true;
	["time"] = true;["typeof"] = true;["UserSettings"] = true;["wait"] = true;["warn"] = true;
	["game"] = true;["Enum"] = true;["script"] = true;["shared"] = true;["workspace"] = true;
	["Axes"] = true;["BrickColor"] = true;["CFrame"] = true;["Color3"] = true;["ColorSequence"] = true;
	["ColorSequenceKeypoint"] = true;["Faces"] = true;["Instance"] = true;["NumberRange"] = true;
	["NumberSequence"] = true;["NumberSequenceKeypoint"] = true;["PhysicalProperties"] = true;
	["Random"] = true;["Ray"] = true;["Rect"] = true;["Region3"] = true;["Region3int16"] = true;
	["TweenInfo"] = true;["UDim"] = true;["UDim2"] = true;["Vector2"] = true;["Vector3"] = true;
	["Vector3int16"] = true;["next"] = true;
	["getclipboard"]=true;["fromclipboard"]=true;["getsenv"]=true;["clear_teleport_queue"]=true;["protectfunction"]=true;["debug"]=true;["consolecreate"]=true;["queue_on_teleport"]=true;["getexecutorname"]=true;["lz4decompress"]=true;["is_fluxus_closure"]=true;["loginfo"]=true;["crypt"]=true;["getallthreads"]=true;["mouse1press"]=true;["toclipboard"]=true;["newcclosure"]=true;["iscustomasset"]=true;["request"]=true;["is_c_closure"]=true;["setscriptable"]=true;["getmodules"]=true;["http_request"]=true;["getsignalstrength"]=true;["mousescroll"]=true;["doRequestInternal"]=true;["isourclosure"]=true;["setthreadidentity"]=true;["getproto"]=true;["isrbxactive"]=true;["make_readonly"]=true;["deletefile"]=true;["writeuifile"]=true;["isuifile"]=true;["MOUSE_DOWN"]=true;["mousemoveabs"]=true;["base64decode"]=true;["mouse1click"]=true;["ishooked"]=true;["gethiddenproperty"]=true;["makereadonly"]=true;["getnilinstances"]=true;["isvalidlevel"]=true;["iscclosure"]=true;["restorefunction"]=true;["get_scripts"]=true;["script"]=true;["setclipboard"]=true;["isreadonly"]=true;["mouse2click"]=true;["MOUSE_CLICK"]=true;["writefile"]=true;["base64_encode"]=true;["getconstant"]=true;["iswritable"]=true;["getscriptclosure"]=true;["printuiwarn"]=true;["set_namecall_method"]=true;["readuifile"]=true;["infouiconsole"]=true;["getscriptfromthread"]=true;["setrenderproperty"]=true;["consoleerror"]=true;["base64"]=true;["setconstant"]=true;["emulate_call"]=true;["getinstances"]=true;["getconstants"]=true;["firetouchinterest"]=true;["erroruiconsole"]=true;["doHttpGet"]=true;["is_our_closure"]=true;["Drawing"]=true;["getrenderproperty"]=true;["consoleprint"]=true;["get_modules"]=true;["printuierror"]=true;["printdebug"]=true;["cleardrawcache"]=true;["validlevel"]=true;["Base64"]=true;["printuiconsole"]=true;["zstdcompress"]=true;["delfolder"]=true;["getgenv"]=true;["keyrelease"]=true;["makewritable"]=true;["getscripthash"]=true;["MOUSE_UP"]=true;["require"]=true;["getObjects"]=true;["getfpscap"]=true;["get_all_threads"]=true;["executeclipboard"]=true;["fireproximityprompt"]=true;["islclosure"]=true;["getbatterypercentage"]=true;["getstateenv"]=true;["lz4compress"]=true;["getscriptbytecode"]=true;["detour_function"]=true;["get_gc_objects"]=true;["setfpscap"]=true;["is_executor_closure"]=true;["get_fps_cap"]=true;["fireclickdetector"]=true;["rconsolecreate"]=true;["rconsoleshow"]=true;["iswindowactive"]=true;["firesignal"]=true;["makefolder"]=true;["is_fluxus_function"]=true;["detourfunction"]=true;["isscriptable"]=true;["getfflag"]=true;["consoledestroy"]=true;["isgameactive"]=true;["is_krnl_closure"]=true;["http"]=true;["setthreadcontext"]=true;["rconsoleerror"]=true;["get_instances"]=true;["getthreadcontext"]=true;["getspecialinfo"]=true;["replacefunction"]=true;["cloneref"]=true;["loadstring"]=true;["getprotos"]=true;["hookfunction"]=true;["mouse2release"]=true;["rconsoleinfo"]=true;["get_thread_identity"]=true;["getrunningscripts"]=true;["getupvalue"]=true;["consolesettitle"]=true;["setidentity"]=true;["consoleinfo"]=true;["setupvalue"]=true;["isfolder"]=true;["total_tabs"]=true;["identifyexecutor"]=true;["getcaller"]=true;["runcode"]=true;["dumpstring"]=true;["keypress"]=true;["iswriteable"]=true;["getupvalues"]=true;["rconsoleclear"]=true;["consoleerr"]=true;["replacefunc"]=true;["set_thread_identity"]=true;["getinfo"]=true;["consolewarn"]=true;["websocket"]=true;["loadfile"]=true;["cHjGyjKbe"]=true;["clonefunc"]=true;["logwarn"]=true;["is_unlocked"]=true;["getconnections"]=true;["checkcaller"]=true;["setreadonly"]=true;["setsimulationradius"]=true;["securecall"]=true;["WebSocket"]=true;["IjHyfuyuHeg"]=true;["isfluxusfunction"]=true;["restorefunc"]=true;["checkclosure"]=true;["cache"]=true;["crypto"]=true;["secure_call"]=true;["drawingLoaded"]=true;["isnetworkowner"]=true;["compareinstances"]=true;["isrenderobj"]=true;["rconsoleerr"]=true;["delfile"]=true;["getcontext"]=true;["mouse1release"]=true;["getsynasset"]=true;["gethui"]=true;["doHttpPost"]=true;["getscriptcaller"]=true;["base64encode"]=true;["isexecutorclosure"]=true;["getthreadidentity"]=true;["clonefunction"]=true;["setrawmetatable"]=true;["restoreclosure"]=true;["getcustomasset"]=true;["replaceclosure"]=true;["hookfunc"]=true;["hookmetamethod"]=true;["logerror"]=true;["get_calling_script"]=true;["gethwid"]=true;["getrawmetatable"]=true;["rconsoleprint"]=true;["keyclick"]=true;["bit"]=true;["setstack"]=true;["setfflag"]=true;["consoleinput"]=true;["get_namecall_method"]=true;["getcallingscript"]=true;["warnuiconsole"]=true;["get_loaded_modules"]=true;["getrenv"]=true;["runautoexec"]=true;["getloadedmodules"]=true;["is_protosmasher_closure"]=true;["isfunctionhooked"]=true;["setrbxclipboard"]=true;["getmenv"]=true;["mousemoverel"]=true;["get_script_function"]=true;["getscriptfunction"]=true;["execclipboard"]=true;["logprint"]=true;["deletefolder"]=true;["mouse2press"]=true;["Input"]=true;["getscriptenvs"]=true;["httpGetAsync"]=true;["isfile"]=true;["queueonteleport"]=true;["rconsolename"]=true;["is_l_closure"]=true;["appendfile"]=true;["getidentity"]=true;["consoleclear"]=true;["is_synapse_function"]=true;["set_thread_context"]=true;["getgc"]=true;["zstddecompress"]=true;["getcurrentline"]=true;["getscripts"]=true;["getstack"]=true;["gettenv"]=true;["get_nil_instances"]=true;["isfluxusclosure"]=true;["makewriteable"]=true;["setcontext"]=true;["base64_decode"]=true;["sethiddenproperty"]=true;["getfpsmax"]=true;["rconsoleinput"]=true;["get_thread_context"]=true;["getreg"]=true;["clearteleportqueue"]=true;["writecustomasset"]=true;["readfile"]=true;["setnamecallmethod"]=true;["replacecclosure"]=true;["getnamecallmethod"]=true;["listfiles"]=true;["rconsolewarn"]=true;
	["os"]=true;
		--["os.time"] = true;["os.date"] = true;["os.difftime"] = true;
	["debug"] = true;
		--["debug.traceback"] = true;["debug.profilebegin"] = true;["debug.profileend"] = true;
	["math"] = true;
		--["math.abs"] = true;["math.acos"] = true;["math.asin"] = true;["math.atan"] = true;["math.atan2"] = true;["math.ceil"] = true;["math.clamp"] = true;["math.cos"] = true;["math.cosh"] = true;["math.deg"] = true;["math.exp"] = true;["math.floor"] = true;["math.fmod"] = true;["math.frexp"] = true;["math.ldexp"] = true;["math.log"] = true;["math.log10"] = true;["math.max"] = true;["math.min"] = true;["math.modf"] = true;["math.noise"] = true;["math.pow"] = true;["math.rad"] = true;["math.random"] = true;["math.randomseed"] = true;["math.sign"] = true;["math.sin"] = true;["math.sinh"] = true;["math.sqrt"] = true;["math.tan"] = true;["math.tanh"] = true;
	["coroutine"] = true;
		--["coroutine.create"] = true;["coroutine.resume"] = true;["coroutine.running"] = true;["coroutine.status"] = true;["coroutine.wrap"] = true;["coroutine.yield"] = true;
	["string"] = true;
		--["string.byte"] = true;["string.char"] = true;["string.dump"] = true;["string.find"] = true;["string.format"] = true;["string.len"] = true;["string.lower"] = true;["string.match"] = true;["string.rep"] = true;["string.reverse"] = true;["string.sub"] = true;["string.upper"] = true;["string.gmatch"] = true;["string.gsub"] = true;
	["table"] = true;
		--["table.concat"] = true;["table.insert"] = true;["table.remove"] = true;["table.sort"] = true;
	["task"] = true;
	["new"] = true;
	["syn"] = true;
}

local function tdump(tok)
	return yield("operator", tok)
end

local function ndump(tok)
	return yield("number", tok)
end

local function sdump(tok)
	return yield("string", tok)
end

local function cdump(tok)
	return yield("comment", tok)
end

local function wsdump(tok)
	return yield("space", tok)
end

local function lua_vdump(tok)
	if (lua_keyword[tok]) then
		return yield("keyword", tok)
	elseif (lua_builtin[tok]) then
		return yield("builtin", tok)
	else
		return yield("iden", tok)
	end
end

local function thingy_dump(tok)
	return yield("thingy", tok)
end

local lua_matches = {
	{THINGY, thingy_dump},
	
	{IDEN,      lua_vdump},        -- Indentifiers
	{WSPACE,    wsdump},           -- Whitespace
	{NUMBER3,   ndump},            -- Numbers
	{NUMBER4,   ndump},
	{NUMBER5,   ndump},
	{STRING1,   sdump},            -- Strings
	{STRING2,   sdump},
	{STRING3,   sdump},
	{STRING4,   sdump},
	{STRING5,   sdump},            -- Multiline-Strings
	{STRING6,   sdump},            -- Multiline-Strings
	
	{MCOMMENT1, cdump},            -- Multiline-Comments
	{MCOMMENT2, cdump},			
	{SCOMMENT1, cdump},            -- Singleline-Comments
	{SCOMMENT2, cdump},
	
	{"^==",     tdump},            -- Operators
	{"^~=",     tdump},
	{"^<=",     tdump},
	{"^>=",     tdump},
	{"^%.%.%.", tdump},
	{"^%.%.",   tdump},
	{"^.",      tdump},
 {"^(",      tdump},
 {"^)",      tdump},
}

local num_lua_matches = #lua_matches


--- Create a plain token iterator from a string.
-- @tparam string s a string.
function lexer.scan(s)

	local function lex(first_arg)

		local line_nr = 0
		local sz = #s
		local idx = 1

		-- res is the value used to resume the coroutine.
		local function handle_requests(res)
			while (res) do
				local tp = type(res)
				-- Insert a token list:
				if (tp == "table") then
					res = yield("", "")
					for i = 1,#res do
						local t = res[i]
						res = yield(t[1], t[2])
					end
				elseif (tp == "string") then -- Or search up to some special pattern:
					local i1, i2 = strfind(s, res, idx)
					if (i1) then
						local tok = strsub(s, i1, i2)
						idx = (i2 + 1)
						res = yield("", tok)
					else
						res = yield("", "")
						idx = (sz + 1)
					end
				else
					res = yield(line_nr, idx)
				end
			end
		end

		handle_requests(first_arg)
		line_nr = 1

		while (true) do

			if (idx > sz) then
				while (true) do
					handle_requests(yield())
				end
			end

			for i = 1,num_lua_matches do
				local m = lua_matches[i]
				local pat = m[1]
				local fun = m[2]
				local findres = {strfind(s, pat, idx)}
				local i1, i2 = findres[1], findres[2]
				if (i1) then
					local tok = strsub(s, i1, i2)
					idx = (i2 + 1)
					lexer.finished = (idx > sz)
					local res = fun(tok, findres)
					if (tok:find("\n")) then
						-- Update line number:
						local _,newlines = tok:gsub("\n", {})
						line_nr = (line_nr + newlines)
					end
					handle_requests(res)
					break
				end
			end

		end

	end

	return wrap(lex)

end

return lexer
