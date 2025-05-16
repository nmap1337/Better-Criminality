-- Include this library in your script
local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/nmap1337/Better-Criminality/refs/heads/main/Library.lua"))()

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
