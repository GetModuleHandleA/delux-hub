    local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
    local Window = Library.CreateLib("Delux", "BloodTheme")
        -- MAIN
        local Main = Window:NewTab("Main")
        local MainSection = Main:NewSection("Main")


        MainSection:NewButton("Fly (X)", "here nigga", function()
            loadstring(game:HttpGet("https://pastebin.com/raw/sUA9m6M6"))()
        end)
        MainSection:NewButton("Chat Spoofer", "Lets you chat for other people", function()
            loadstring(game:HttpGet(('https://pastebin.com/raw/djBfk8Li'),true))()
        end)
        MainSection:NewButton("Animations Gamepass", "FE Admin Commands", function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/ImNotZack/Da-Hood/main/Animation%20Pack.lua", true))()
        end)

        MainSection:NewButton("Headless", "FE Admin Commands", function()
            getgenv().game.Players.LocalPlayer.Character.Head.Transparency = 1
            getgenv().game.Players.LocalPlayer.Character.Head.face:Destroy()
            getgenv().game.Players.LocalPlayer.Character.Head.face:Destroy()
        end)

        MainSection:NewButton("Korblox", "FE Admin Commands", function()
            local ply = game.Players.LocalPlayer
            local chr = ply.Character
            chr.RightLowerLeg.MeshId = "902942093"
            chr.RightLowerLeg.Transparency = "1"
            chr.RightUpperLeg.MeshId = "http://www.roblox.com/asset/?id=902942096"
            chr.RightUpperLeg.TextureID = "http://roblox.com/asset/?id=902843398"
            chr.RightFoot.MeshId = "902942089"
            chr.RightFoot.Transparency = "1"
        end)

        MainSection:NewButton("No Recoil", "FE Admin Commands", function()
            function isframework(scriptInstance)
                if tostring(scriptInstance) == "Framework" then
                    return true
                end
                return false
            end
            
            function checkArgs(instance,index)
                if tostring(instance):lower():find("camera") and tostring(index) == "CFrame" then
                    return true
                end
                return false
            end
            
            newindex = hookmetamethod(game, "__newindex", function(self,index,value)
                local callingScr = getcallingscript()
            
                if isframework(callingScr) and checkArgs(self,index) then
                return;
                end
            
                return newindex(self,index,value)
            end)
        end)

        MainSection:NewButton("No Slowdown", "FE Admin Commands", function()
            local mt = getrawmetatable(game)
            local backup
            backup = hookfunction(mt.__newindex, newcclosure(function(self, key, value)
            if key == "WalkSpeed" and value < 16 then
            value = 16
            end
            return backup(self, key, value)
            end))
        end)

        MainSection:NewSlider("FOV", "SPEED!!", 120, 70, function(ggh)
            workspace.CurrentCamera.FieldOfView = ggh
        end)

        MainSection:NewToggle("Super-Human", "go fast and jump high", function(state)
            if state then
                game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 120
                game.Players.LocalPlayer.Character.Humanoid.JumpPower = 120
            else
                game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 16
                game.Players.LocalPlayer.Character.Humanoid.JumpPower = 50
            end
        end)



        --LOCAL PLAYER
        local Player = Window:NewTab("Player")
        local PlayerSection = Player:NewSection("Player")

        PlayerSection:NewSlider("Walkspeed", "SPEED!!", 500, 16, function(s)
            game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
        end)

        PlayerSection:NewSlider("Jumppower", "JUMP HIGH!!", 350, 50, function(s)
            game.Players.LocalPlayer.Character.Humanoid.JumpPower = s
        end)

        PlayerSection:NewButton("Reset WS/JP", "Resets to all defaults", function()
            game.Players.LocalPlayer.Character.Humanoid.JumpPower = 50
            game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 16
        end)

    --Visuals    
    local visual = Window:NewTab("Da Hood")

    local togl = visual:NewSection("Toggles")

    togl:NewToggle("Anti Fling", "nigger uwu", function(state)
        if state then
            loadstring(game:HttpGet("https://feed-the-wump.us/raw/etecibuwoc",true))()
        else
            --print("Toggle Off")
        end
    end)

    togl:NewToggle("No Cooldown", "nigger uwu", function(state)
        if state then
            --auto exc support
if not game.IsLoaded(game) then 
    game.Loaded.Wait(game.Loaded);
end

-- variables 
local IsA = game.IsA;
local newindex = nil 

-- main hook
newindex = hookmetamethod(game, "__newindex", function(self, Index, Value)
    if not checkcaller() and IsA(self, "Humanoid") and Index == "JumpPower" then 
        return
    end
    
    return newindex(self, Index, Value);
end)
        else
            --print("Toggle Off")
        end
    end)

    togl:NewToggle("Anti Slow", "nigger uwu", function(state)
        if state then
            local mt = getrawmetatable(game)
local backup
backup = hookfunction(mt.__newindex, newcclosure(function(self, key, value)
if key == "WalkSpeed" and value < 16 then
value = 16
end
return backup(self, key, value)
end))
        else
            --print("Toggle Off")
        end
    end)



    togl:NewToggle("Auto Reload", "nigger uwu", function(state)
        if state then
            _G.AutoReload = true -- change to false if u don't want it anymore.

while _G.AutoReload == true and game:GetService("RunService").Heartbeat:Wait() do
if game:GetService("Players").LocalPlayer.Character:FindFirstChildWhichIsA("Tool") then
            if game:GetService("Players").LocalPlayer.Character:FindFirstChildWhichIsA("Tool"):FindFirstChild("Ammo") then
                if game:GetService("Players").LocalPlayer.Character:FindFirstChildWhichIsA("Tool"):FindFirstChild("Ammo").Value <= 0 then
                    game:GetService("ReplicatedStorage").MainEvent:FireServer("Reload", game:GetService("Players").LocalPlayer.Character:FindFirstChildWhichIsA("Tool")) 
                    wait(1)
                end
            end
        end
end
        else
            _G.AutoReload = false -- change to false if u don't want it anymore.

while _G.AutoReload == true and game:GetService("RunService").Heartbeat:Wait() do
if game:GetService("Players").LocalPlayer.Character:FindFirstChildWhichIsA("Tool") then
            if game:GetService("Players").LocalPlayer.Character:FindFirstChildWhichIsA("Tool"):FindFirstChild("Ammo") then
                if game:GetService("Players").LocalPlayer.Character:FindFirstChildWhichIsA("Tool"):FindFirstChild("Ammo").Value <= 0 then
                    game:GetService("ReplicatedStorage").MainEvent:FireServer("Reload", game:GetService("Players").LocalPlayer.Character:FindFirstChildWhichIsA("Tool")) 
                    wait(1)
                end
            end
        end
end
        end
    end)

    local visualsec = visual:NewSection("Visuals")

    visualsec:NewButton("Box ESP", "Lets you chat for other people", function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Blissful4992/ESPs/main/Corner%202D%20Box%20ESP.lua"))()
    end)

    visualsec:NewButton("FPS Unlocker", "Lets you chat for other people", function()
        local fps = 500
    
        if setfpscap then
            setfpscap(fps)
    end
    end)

    local anims = visual:NewSection("Animations")
    anims:NewButton("Animation Changer", "Lets you chat for other people", function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/LunarWareOP/Animation-Changer-Source/main/Script", true))()
    end)

    local locks = visual:NewSection("Aimlock")
    locks:NewButton("Camera Lock (Q)", "Lets you chat for other people", function()
        getgenv().RecurringPoint = "UpperTorso"
    getgenv().Hitbox = "UpperTorso"
    getgenv().Keybind = "q"
    getgenv().AimbotStrengthAmount = 1
    getgenv().PredictionAmount = 10
    getgenv().Radius = 25
    getgenv().UsePrediction = true
    getgenv().AimbotStrength = true
    getgenv().FirstPerson = true
    getgenv().ThirdPerson = true
    getgenv().TeamCheck = false
    getgenv().Enabled = true
    loadstring(game:HttpGet("https://raw.githubusercontent.com/tenaaki/GenericAimbot/main/v1.0.0"))()
    end)

    locks:NewButton("Streamable Lock (T)", "Lets you chat for other people", function()
        loadstring(game:HttpGet("https://pastebin.com/raw/Y9hErQAW"))()
    end)

    locks:NewButton("Silent Aim", "Lets you chat for other people", function()
        loadstring(game:HttpGet("https://feed-the-wump.us/raw/uqesovizuw"))()
    end)

    local antis = visual:NewSection("Anti Lock")

    antis:NewButton("Prime AntiAim", "Lets you chat for other people", function()
        _G.enable = true
    _G.color = Color3.fromRGB(0,0,0) --- COLOR FOR UR TRACER!
    _G.toggle_keybind = "k" -- enable tracer and disable
    _G.swith_nigga = 'c' -- press t and u will see a noti on the user ur tracer is on 
    loadstring(game:HttpGet("https://raw.githubusercontent.com/primegotemdontworry/revamped-locker-catcher.lua/main/prime%20gotta%20catch%20them%20all"))()
    -- remember aimview only works when they have guns out
    -- THE KEY IS prime
    -- prime made this. and caught#6124 helped
    end)

    antis:NewButton("Resolver", "Lets you chat for other people", function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Trexxus/Resolver/main/Res.lua"))()
    end)

    antis:NewButton("Catch Aimlockers", "Lets you chat for other people", function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Nosssa/NossLock/main/VinGUI"))()
    end)

    local tpn = visual:NewSection("Teleports")

    tpn:NewButton("DB", "Lets you chat for other people", function()
        getgenv().game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1039.59985, 18.8513641, -256.449951, -1, 0, 0, 0, 1, 0, 0, 0, -1)
    end)

    tpn:NewButton("Rev", "Lets you chat for other people", function()
        getgenv().game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-638.75, 18.8500004, -118.175011, -1, 0, 0, 0, 1, 0, 0, 0, -1)
    end)

    tpn:NewButton("Bank", "Lets you chat for other people", function()
        getgenv().game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-402.123718, 21.75, -283.988617, 0.0159681588, -0.000121377925, -0.999872446, -2.60148026e-05, 1, -0.000121808866, 0.999872506, 2.79565484e-05, 0.0159681737)
    end)

    tpn:NewButton("Food", "Lets you chat for other people", function()
        getgenv().game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-338.352173, 23.6826477, -297.2146, -0.0060598203, -1.03402984e-08, -0.999981582, -1.61653102e-09, 1, -1.03306892e-08, 0.999981582, 1.55389912e-09, -0.0060598203)
    end)

    tpn:NewButton("Armour", "Lets you chat for other people", function()
        getgenv().game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-607.978455, 7.44964886, -788.494263, -1.1920929e-07, 0, 1.00000012, 0, 1, 0, -1.00000012, 0, -1.1920929e-07)
    end)

    local chnger = visual:NewSection("Skin Changer")
    chnger:NewButton("Da Hood Skin Changer", "Lets you chat for other people", function()
        hookfunction(game.Players.LocalPlayer.IsInGroup, function() return true end)
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Invooker1/Hub/main/DH-Skin-Changer.lua", true))()
    end)
    local neega = visual:NewSection("Avatar Editor")
    neega:NewButton("Free Limiteds", "Lets you chat for other people", function()
        
        loadstring(game:HttpGet('https://raw.githubusercontent.com/ForestIsPro/VisualWorks/main/FreeHats'))()
    end)
    local msdh = visual:NewSection("More DH Scripts")

    msdh:NewButton("Ray X", "bird mode", function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/SpaceYes/Lua/Main/DaHood.Lua'))()

    
    end)

    msdh:NewButton("Artic", "bird mode", function()
        hookfunction(game.Players.LocalPlayer.IsInGroup, function() return true end)
        loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/PolarWasHere/Arctic/main/Arctic"))()
    end)

    msdh:NewButton("Faded", "bird mode", function()
        hookfunction(game.Players.LocalPlayer.IsInGroup, function() return true end)
        loadstring(game:HttpGet("https://raw.githubusercontent.com/NighterEpic/Faded/main/YesEpic", true))()
    end)










    local hmddd = Window:NewTab("Hood Modded")
    local HmSection = hmddd:NewSection("Da Hood Modded")


 --hm
    HmSection:NewButton("Nyula HM", "Lets you chat for other people", function()
        loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/nyulachan/nyula/main/nyuladhm"))()
    end)

    HmSection:NewButton("Oblivion", "Lets you chat for other people", function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/CorruptOblivion/Oblivion/main/loader.lua"))()
    end)

    HmSection:NewButton("Disable Anti-Cheat", "Lets you chat for other people", function()
        for i,v in next, getgc(true) do
            if typeof(v)=="table" and rawget(v,"DoThings") then
                v.DoThings = function() end
            end
        end
    end)

        --Other
        local Other = Window:NewTab("Settings")
        local OtherSection = Other:NewSection("More Scripts")





        OtherSection:NewKeybind("Menu Toggle", "KeybindInfo", Enum.KeyCode.F, function()
            Library:ToggleUI()
        end)




    
       
