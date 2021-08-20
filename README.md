### Villix UI Libary 

## Current Features
- InitLib()
- NewButton()
- NewSection()
- NewToggle()
- NewDropdown()
- ToggleUI()


- More To Come 

<br />

## Themes 
- Synapse 
- Sentinel
- Midnight
- Light
- Dark

## ❗ THERE IS A DEFAULT THEME IF YOU DO NOT CHOOSE ONE OF THESE! ❗

## Examples
```lua
local Libary = loadstring(game:HttpGet(("https://github.com/VillixUis/VillixLib/edit/main/src.lua"),true))()
local Window = Libary:LibInit("Libary Name", "Sentinel")
local Section = Window:NewSection("This is a section!")

Section:NewButton("Click Me!", function()
  print("You clicked me!")
end)

Section:NewToggle("Im a toggle!", function(state)
-- State can be true or false
end)


```
