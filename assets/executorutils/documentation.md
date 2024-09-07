## loading the executor
to load the executor, add a frame in the screengui and put the following code in a localscript
```lua
getgenv().monaco = loadstring(game:HttpGet("https://raw.githubusercontent.com/AnAvaragelilmemer/saturn/main/assets/executorutils/initiateexecutor.lua"))()
monaco = monaco.new(frame here!!!,20)
```
## to destroy the executor
```lua
monaco:Destroy()
```
## to get the contents of the executor
```lua
monaco:GetText()
--print(monaco:GetText())
```
## to set the text of the executor
```lua
monaco:SetText("Text here!")
```
## to change themes
```lua
--theres only two themes, default and extra 2, extra 2 is being used as the theme
monaco:SetTheme("default")
```
# deprecated features
```lua
monaco:Hide()
```
```lua
monaco:Unhide()
```
