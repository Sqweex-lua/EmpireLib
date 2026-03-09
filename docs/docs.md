## Method,Parameters,Description
CreateButton,"text, callback",Standard clickable button with hover effects.
CreateToggle,"text, default, callback",A switch for boolean (true/false) values.
CreateSlider,"text, min, max, default, callback",Smooth slider for numerical adjustments.
CreateDropdown,"text, list, callback",A scrollable selection menu.
CreateColorPicker,"text, default, callback",NEW: Advanced HSV Color Wheel with cursor.
CreateKeybind,"text, default, callback",Assigns a keyboard key to a specific action.

## Notification System
```
EmpireLib:Notify("System", "Library Loaded Successfully!", 5) -- Title, Text, Duration
```
## Tab Management

```
-- Syntax: Window:CreateTab("Title", "IconName")
local MainTab = Window:CreateTab("Combat", "sword")
local Visuals = Window:CreateTab("Visuals", "eye")
local Configs = Window:CreateTab("Settings", "settings")
```

## Window Creation

```
local Window = EmpireLib:CreateWindow({
    Name = "EmpireUI Demo",
    Flags = {
        Persistent = true,      -- Keeps UI active after player death
        NoResizable = false,    -- Allows user to drag the bottom-right corner to resize
        NoDraggable = false,    -- Enables/Disables window movement
        RainbowBorder = true,   -- Adds a dynamic RGB stroke around the window
        MainBlur = true         -- Applies a BlurEffect to the game world when UI is open
    }
}, "Crystal Purple") -- Themes: "Black", "Crystal Purple", "White", "Aquamarine"
```

## Color Picker

```
Tab:CreateColorPicker("ESP Color", Color3.fromRGB(255, 0, 0), function(color)
    print("Color Changed: ", color)
end)
```

## Keybinds

```
Tab:CreateKeybind("Menu Toggle", Enum.KeyCode.RightShift, function(key)
    EmpireLib:Notify("Settings", "Toggle: " .. key.Name, 3)
end)
```
