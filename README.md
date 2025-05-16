# Better Criminality

An improved and visually enhanced version of LeadMarker's Criminality UI Library for Roblox. This library provides a sleek, modern interface for creating game GUIs with a comprehensive set of UI components.

![UI Library Preview](https://github.com/nmap1337/Better-Criminality/blob/main/Assets/preview.png?raw=true)

## 🌟 Features

- **Modern Aesthetics**: Rounded corners, smoother gradients, and improved color scheme
- **Comprehensive UI Elements**: Toggles, buttons, dropdowns, sliders, color pickers, and more
- **Customizable**: Easy to adapt to your specific needs
- **Config System**: Built-in save/load configuration system
- **Smooth Animations**: Polished transitions and hover effects

## ✨ Improvements Over Original

This enhanced version improves upon LeadMarker's original library with:

- Modernized UI with rounded corners for a sleeker look
- Refined color palette with better contrast
- Improved visual hierarchy for better usability
- More consistent styling across all components
- Performance optimizations

## 📋 Installation

```lua
-- Include this library in your script
local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/nmap1337/Better-Criminality/refs/heads/main/Library.lua"))()
```

## 🚀 Quick Start

```lua
-- Create a new window
local menu = library.new("ts is tuff :fire:", "configs/my_skibidi_script")

-- Create a tab
local tab = menu.new_tab("rbxassetid://4483345998")

-- Create a section in that tab
local section = tab.new_section("Rizz")

-- Create a sector (category) in that section
local sector = section.new_sector("Features", "Left")

-- Add elements to that sector
sector.element("Toggle", "Toggle Feature", {default = {Toggle = false}}, function(value)
    print("Toggle is now: ", value.Toggle)
end)

sector.element("Slider", "Speed", {default = {Slider = 50}, min = 0, max = 100}, function(value)
    print("Slider value: ", value.Slider)
end)

sector.element("Button", "Click Me", nil, function()
    print("Button was clicked!")
end)

sector.element("Dropdown", "Select Option", {options = {"Option 1", "Option 2", "Option 3"}}, function(value)
    print("Selected option: ", value.Dropdown)
end)
```

## 📚 API Reference

### Creating a window
```lua
local menu = library.new("Title", "config_folder_location")
```

### Creating tabs
```lua
local tab = menu.new_tab("tab_image_texture_id") -- Remember, Texture ID not Asset ID.
```

### Creating sections
```lua
local section = tab.new_section("Section Name")
```

### Creating sectors
```lua
local sector = section.new_sector("Sector Name", "Left/Right")
```

### UI Elements

#### Toggle
```lua
sector.element("Toggle", "Toggle Name", {default = {Toggle = false}}, function(value)
    -- callback function
end)
```

#### Slider
```lua
sector.element("Slider", "Slider Name", {default = {Slider = 50}, min = 0, max = 100}, function(value)
    -- callback function
end)
```

#### Button
```lua
sector.element("Button", "Button Name", nil, function()
    -- callback function
end)
```

#### Dropdown
```lua
sector.element("Dropdown", "Dropdown Name", {options = {"Option 1", "Option 2"}}, function(value)
    -- callback function
end)
```

#### Combo (Multi-select)
```lua
sector.element("Combo", "Combo Name", {options = {"Option 1", "Option 2"}}, function(value)
    -- callback function with table of selected options
end)
```

#### TextBox
```lua
sector.element("TextBox", "TextBox Name", {default = "Default text"}, function(value)
    -- callback function
end)
```

#### ColorPicker
```lua
-- Can be added to toggles
local toggle = sector.element("Toggle", "Toggle with Color", {default = {Toggle = false}}, function(value)
    -- callback function
end)

toggle:add_color({Color = Color3.fromRGB(255, 0, 0)}, function(color)
    -- color callback function
end)
```

#### Keybind
```lua
-- Can be added to toggles
local toggle = sector.element("Toggle", "Toggle with Keybind", {default = {Toggle = false}}, function(value)
    -- callback function
end)

toggle:add_keybind({Key = Enum.KeyCode.E}, function(value)
    -- keybind callback function
end)
```

## 💾 Config System

```lua
-- Save current configuration
menu.save_cfg("my_config")

-- Load saved configuration
menu.load_cfg("my_config")
```

## 📄 License

This UI library is an enhanced version of LeadMarker's work. Please respect the original author's terms of use.

## 💖 Credits

- [Original library](https://github.com/weakhoes/Roblox-UI-Libs/tree/main/Criminality%20Lib) by LeadMarker
- Enhanced version improvements by [nmap1337](https://github.com/nmap1337)

---

⭐ Star this repository if you find it useful! 
