
local words = {
--keywords
["and"] = "keyword"; ["break"] = "keyword"; ["do"] = "keyword"; ["else"] = "keyword"; ["elseif"] = "keyword";
["end"] = "keyword"; ["false"] = "keyword"; ["for"] = "keyword"; ["function"] = "keyword"; ["if"] = "keyword";
["in"] = "keyword"; ["local"] = "keyword"; ["nil"] = "keyword"; ["not"] = "keyword"; ["while"] = "keyword";
["or"] = "keyword"; ["repeat"] = "keyword"; ["return"] = "keyword"; ["then"] = "keyword"; ["true"] = "keyword";
["self"] = "keyword"; ["until"] = "keyword";
["continue"] = "keyword";
["plugin"] = "keyword";
--builtin
["assert"] = "builtin";["collectgarbage"] = "builtin";["error"] = "builtin";["getfenv"] = "builtin";
["getmetatable"] = "builtin";["ipairs"] = "builtin";["loadstring"] = "builtin";["newproxy"] = "builtin";
["next"] = "builtin";["pairs"] = "builtin";["pcall"] = "builtin";["print"] = "builtin";["rawequal"] = "builtin";
["rawget"] = "builtin";["rawset"] = "builtin";["select"] = "builtin";["setfenv"] = "builtin";["setmetatable"] = "builtin";
["tonumber"] = "builtin";["tostring"] = "builtin";["type"] = "builtin";["unpack"] = "builtin";["xpcall"] = "builtin";
["_G"] = "builtin";["_VERSION"] = "builtin";
["bit32"] = "builtin";["coroutine"] = "builtin";["debug"] = "builtin";
["math"] = "builtin";["os"] = "builtin";["string"] = "builtin";
["table"] = "builtin";["utf8"] = "builtin";
["delay"] = "builtin";["elapsedTime"] = "builtin";["gcinfo"] = "builtin";["require"] = "builtin";
["settings"] = "builtin";["spawn"] = "builtin";["tick"] = "builtin";["time"] = "builtin";["typeof"] = "builtin";
["UserSettings"] = "builtin";["wait"] = "builtin";["warn"] = "builtin";["ypcall"] = "builtin";
["Enum"] = "builtin";["game"] = "builtin";["shared"] = "builtin";["script"] = "builtin";
["workspace"] = "builtin";
["Axes"] = "builtin";["BrickColor"] = "builtin";["CellId"] = "builtin";["CFrame"] = "builtin";["Color3"] = "builtin";
["ColorSequence"] = "builtin";["ColorSequenceKeypoint"] = "builtin";["DateTime"] = "builtin";
["DockWidgetPluginGuiInfo"] = "builtin";["Faces"] = "builtin";["Instance"] = "builtin";["NumberRange"] = "builtin";
["NumberSequence"] = "builtin";["NumberSequenceKeypoint"] = "builtin";["PathWaypoint"] = "builtin";
["PhysicalProperties"] = "builtin";["PluginDrag"] = "builtin";["Random"] = "builtin";["Ray"] = "builtin";["Rect"] = "builtin";
["Region3"] = "builtin";["Region3int16"] = "builtin";["TweenInfo"] = "builtin";["UDim"] = "builtin";["UDim2"] = "builtin";
["Vector2"] = "builtin";["Vector2int16"] = "builtin";["Vector3"] = "builtin";["Vector3int16"] = "builtin";
--exploit functions
["getclipboard"]="builtin";["fromclipboard"]="builtin";["getsenv"]="builtin";["clear_teleport_queue"]="builtin";["protectfunction"]="builtin";["debug"]="builtin";["consolecreate"]="builtin";["queue_on_teleport"]="builtin";["getexecutorname"]="builtin";["lz4decompress"]="builtin";["is_fluxus_closure"]="builtin";["loginfo"]="builtin";["crypt"]="builtin";["getallthreads"]="builtin";["mouse1press"]="builtin";["toclipboard"]="builtin";["newcclosure"]="builtin";["iscustomasset"]="builtin";["request"]="builtin";["is_c_closure"]="builtin";["setscriptable"]="builtin";["getmodules"]="builtin";["http_request"]="builtin";["getsignalstrength"]="builtin";["mousescroll"]="builtin";["doRequestInternal"]="builtin";["isourclosure"]="builtin";["setthreadidentity"]="builtin";["getproto"]="builtin";["isrbxactive"]="builtin";["make_readonly"]="builtin";["deletefile"]="builtin";["writeuifile"]="builtin";["isuifile"]="builtin";["MOUSE_DOWN"]="builtin";["mousemoveabs"]="builtin";["base64decode"]="builtin";["mouse1click"]="builtin";["ishooked"]="builtin";["gethiddenproperty"]="builtin";["makereadonly"]="builtin";["getnilinstances"]="builtin";["isvalidlevel"]="builtin";["iscclosure"]="builtin";["restorefunction"]="builtin";["get_scripts"]="builtin";["script"]="builtin";["setclipboard"]="builtin";["isreadonly"]="builtin";["mouse2click"]="builtin";["MOUSE_CLICK"]="builtin";["writefile"]="builtin";["base64_encode"]="builtin";["getconstant"]="builtin";["iswritable"]="builtin";["getscriptclosure"]="builtin";["printuiwarn"]="builtin";["set_namecall_method"]="builtin";["readuifile"]="builtin";["infouiconsole"]="builtin";["getscriptfromthread"]="builtin";["setrenderproperty"]="builtin";["consoleerror"]="builtin";["base64"]="builtin";["setconstant"]="builtin";["emulate_call"]="builtin";["getinstances"]="builtin";["getconstants"]="builtin";["firetouchinterest"]="builtin";["erroruiconsole"]="builtin";["doHttpGet"]="builtin";["is_our_closure"]="builtin";["Drawing"]="builtin";["getrenderproperty"]="builtin";["consoleprint"]="builtin";["get_modules"]="builtin";["printuierror"]="builtin";["printdebug"]="builtin";["cleardrawcache"]="builtin";["validlevel"]="builtin";["Base64"]="builtin";["printuiconsole"]="builtin";["zstdcompress"]="builtin";["delfolder"]="builtin";["getgenv"]="builtin";["keyrelease"]="builtin";["makewritable"]="builtin";["getscripthash"]="builtin";["MOUSE_UP"]="builtin";["require"]="builtin";["getObjects"]="builtin";["getfpscap"]="builtin";["get_all_threads"]="builtin";["executeclipboard"]="builtin";["fireproximityprompt"]="builtin";["islclosure"]="builtin";["getbatterypercentage"]="builtin";["getstateenv"]="builtin";["lz4compress"]="builtin";["getscriptbytecode"]="builtin";["detour_function"]="builtin";["get_gc_objects"]="builtin";["setfpscap"]="builtin";["is_executor_closure"]="builtin";["get_fps_cap"]="builtin";["fireclickdetector"]="builtin";["rconsolecreate"]="builtin";["rconsoleshow"]="builtin";["iswindowactive"]="builtin";["firesignal"]="builtin";["makefolder"]="builtin";["is_fluxus_function"]="builtin";["detourfunction"]="builtin";["isscriptable"]="builtin";["getfflag"]="builtin";["consoledestroy"]="builtin";["isgameactive"]="builtin";["is_krnl_closure"]="builtin";["http"]="builtin";["setthreadcontext"]="builtin";["rconsoleerror"]="builtin";["get_instances"]="builtin";["getthreadcontext"]="builtin";["getspecialinfo"]="builtin";["replacefunction"]="builtin";["cloneref"]="builtin";["loadstring"]="builtin";["getprotos"]="builtin";["hookfunction"]="builtin";["mouse2release"]="builtin";["rconsoleinfo"]="builtin";["get_thread_identity"]="builtin";["getrunningscripts"]="builtin";["getupvalue"]="builtin";["consolesettitle"]="builtin";["setidentity"]="builtin";["consoleinfo"]="builtin";["setupvalue"]="builtin";["isfolder"]="builtin";["total_tabs"]="builtin";["identifyexecutor"]="builtin";["getcaller"]="builtin";["runcode"]="builtin";["dumpstring"]="builtin";["keypress"]="builtin";["iswriteable"]="builtin";["getupvalues"]="builtin";["rconsoleclear"]="builtin";["consoleerr"]="builtin";["replacefunc"]="builtin";["set_thread_identity"]="builtin";["getinfo"]="builtin";["consolewarn"]="builtin";["websocket"]="builtin";["loadfile"]="builtin";["cHjGyjKbe"]="builtin";["clonefunc"]="builtin";["logwarn"]="builtin";["is_unlocked"]="builtin";["getconnections"]="builtin";["checkcaller"]="builtin";["setreadonly"]="builtin";["setsimulationradius"]="builtin";["securecall"]="builtin";["WebSocket"]="builtin";["IjHyfuyuHeg"]="builtin";["isfluxusfunction"]="builtin";["restorefunc"]="builtin";["checkclosure"]="builtin";["cache"]="builtin";["crypto"]="builtin";["secure_call"]="builtin";["drawingLoaded"]="builtin";["isnetworkowner"]="builtin";["compareinstances"]="builtin";["isrenderobj"]="builtin";["rconsoleerr"]="builtin";["delfile"]="builtin";["getcontext"]="builtin";["mouse1release"]="builtin";["getsynasset"]="builtin";["gethui"]="builtin";["doHttpPost"]="builtin";["getscriptcaller"]="builtin";["base64encode"]="builtin";["isexecutorclosure"]="builtin";["getthreadidentity"]="builtin";["clonefunction"]="builtin";["setrawmetatable"]="builtin";["restoreclosure"]="builtin";["getcustomasset"]="builtin";["replaceclosure"]="builtin";["hookfunc"]="builtin";["hookmetamethod"]="builtin";["logerror"]="builtin";["get_calling_script"]="builtin";["gethwid"]="builtin";["getrawmetatable"]="builtin";["rconsoleprint"]="builtin";["keyclick"]="builtin";["bit"]="builtin";["setstack"]="builtin";["setfflag"]="builtin";["consoleinput"]="builtin";["get_namecall_method"]="builtin";["getcallingscript"]="builtin";["warnuiconsole"]="builtin";["get_loaded_modules"]="builtin";["getrenv"]="builtin";["runautoexec"]="builtin";["getloadedmodules"]="builtin";["is_protosmasher_closure"]="builtin";["isfunctionhooked"]="builtin";["setrbxclipboard"]="builtin";["getmenv"]="builtin";["mousemoverel"]="builtin";["get_script_function"]="builtin";["getscriptfunction"]="builtin";["execclipboard"]="builtin";["logprint"]="builtin";["deletefolder"]="builtin";["mouse2press"]="builtin";["Input"]="builtin";["getscriptenvs"]="builtin";["httpGetAsync"]="builtin";["isfile"]="builtin";["queueonteleport"]="builtin";["rconsolename"]="builtin";["is_l_closure"]="builtin";["appendfile"]="builtin";["getidentity"]="builtin";["consoleclear"]="builtin";["is_synapse_function"]="builtin";["set_thread_context"]="builtin";["getgc"]="builtin";["zstddecompress"]="builtin";["getcurrentline"]="builtin";["getscripts"]="builtin";["getstack"]="builtin";["gettenv"]="builtin";["get_nil_instances"]="builtin";["isfluxusclosure"]="builtin";["makewriteable"]="builtin";["setcontext"]="builtin";["base64_decode"]="builtin";["sethiddenproperty"]="builtin";["getfpsmax"]="builtin";["rconsoleinput"]="builtin";["get_thread_context"]="builtin";["getreg"]="builtin";["clearteleportqueue"]="builtin";["writecustomasset"]="builtin";["readfile"]="builtin";["setnamecallmethod"]="builtin";["replacecclosure"]="builtin";["getnamecallmethod"]="builtin";["listfiles"]="builtin";["rconsolewarn"]="builtin";["syn"]="builtin";
}
return words
