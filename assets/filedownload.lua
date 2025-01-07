local saturnfolder = {
    txt ={
    "Saturn_Client/HttpGetGrabber.txt",
    "Saturn_Client/antiwebhook.txt",
    "Saturn_Client/Music/Ado - MIRROR.mp3"
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
elseif v == "Saturn_Client/Music/Ado - MIRROR.mp3" then 
    writefile("Saturn_Client/Music/Ado - MIRROR.mp3",game:HttpGet("https://github.com/AnAvaragelilmemer/saturn/blob/main/assets/Ado%20-%20MIRROR.mp3?raw=true"))
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
downloadfolders()
