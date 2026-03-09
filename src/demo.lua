local EmpireLib = loadstring(game:HttpGet("link on release"))()

EmpireLib:Notify("Empire DeMo Ui", "Everything is loaded and ready.", 4)

EmpireLib:CreateWatermark({
    Text = "EmpireUI Demo",
    time = true, -- time on pc / mobile
    robloxname = true, -- rb name
    date = true, -- date
    rpicture = true -- roblox avatar
})

-- Creating the main window. 
local Window = EmpireLib:CreateWindow({
    Name = "KtylX Project | Premium Edition",
    Flags = {
        Persistent = true,      
        NoResizable = false,    
        NoDraggable = false,    
        RainbowBorder = true,   
        MainBlur = true         
    }
}, "Crystal Purple")

local MainTab = Window:CreateTab("Combat", "sword")
local VisualsTab = Window:CreateTab("Visuals", "eye")
local MiscTab = Window:CreateTab("Misc", "settings")

MainTab:CreateToggle("Aimbot Master", false, function(state)
    print("Aimbot is now: ", state and "Enabled" or "Disabled")
    EmpireLib:Notify("Combat", "Aimbot status changed!", 2)
end)

MainTab:CreateSlider("Smoothness", 1, 10, 5, function(val)
    _G.AimbotSmooth = val 
end)

MainTab:CreateDropdown("Target Priority", {"Head", "HumanoidRootPart", "Torso"}, function(part)
    print("Locked onto: " .. part)
end)

VisualsTab:CreateToggle("Player ESP", true, function(t)
    _G.ESP_Enabled = t
end)

VisualsTab:CreateColorPicker("ESP Color", Color3.fromRGB(180, 0, 255), function(newColor)
    print("New ESP Color: ", newColor)
end)

VisualsTab:CreateSlider("Max Render Distance", 50, 2000, 500, function(v)
    print("Distance set to: " .. v)
end)

MiscTab:CreateKeybind("Toggle UI Key", Enum.KeyCode.RightShift, function(newKey)
    EmpireLib:Notify("System", "Keybind updated to: " .. newKey.Name, 3)
end)

MiscTab:CreateButton("Self-Destruct UI", function()
    EmpireLib:Notify("Emergency", "Wiping interface... See ya!", 2)
    task.wait(1)
    game:GetService("CoreGui").EmpireUI:Destroy()
end)

MiscTab:CreateButton("Check My Ping", function()
    local ping = game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValueString()
    EmpireLib:Notify("Network Info", "Current Ping: " .. ping, 5)
end)

EmpireLib:Notify("Script Ready", "Enjoy the premium experience.", 3)
