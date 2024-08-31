## loading the executor
to load the executor, add a frame in the screengui and put the following code in a localscript
```lua
getgenv().monaco = loadstring(game:HttpGet("https://raw.githubusercontent.com/AnAvaragelilmemer/saturn/main/assets/executorutils/initiateexecutor.lua"))()
monaco = monaco.new(frame here!!!,20)
```
