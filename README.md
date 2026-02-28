# Ping 🟩
# How to Use DraLibs

## prepair
### installation
```
local dralibs = loadstring(game:HttpGet("https://raw.githubusercontent.com/INDRA969696/DrScriptHub/main/DraLibs?t="..tick()))()
```
### Create Window
```
local Hub = dralibs:window("Title")
```
## Function
### Button
```
Hub:button(Text, function())
```
### Toggle
```
Hub:toggle(Text, function(state))
```
### Notify
```
IndraLib:CreateNotify(Title, Text, Duration)
```
### Dropdown
```
IndraLib:dropdown(Text, List, function(slected)
```

# DraLibs(the minimalist UI)
<table align="center" border="0">
  <tr>
    <td align="center" width="250">
      <img src="MainUI.png" width="200" /><br/>
      <sub><b>MainUI</b></sub>
    </td>
    <td align="center" width="250">
      <img src="DropdownUI.png" width="200" /><br/>
      <sub><b>Options</b></sub>
    </td>
  </tr>
</table>

<br clear="all" />
<br />

## Why Dralibs? (The Flex)
* **No Bloatware:** Made with efficient code, it won't eat up FPS.
* **Low-End Friendly:** Remains smooth even when playing on an unstable cellphone.
* **Simple API:** You don't need a PhD to understand how to use it.

## Credits
* **Indra**
* **Pheedy**
* **DraSky** (Brand Owner)
## Changelog
* **Fix Dropdown**
* ****
## Direct Usage Examples
```
local dralibs = loadstring(game:HttpGet("https://raw.githubusercontent.com/INDRA969696/DrScriptHub/refs/heads/main/DraLibrary/TestLib.lua"))()
local hub = dralibs:window("Testlib")
hub:button("Example", function()
  print("Button") end)
hub:sbutton("Example", function()
  print("Small Button") end)
hub:toggle("Example", function(state)
  print("Toggle") end)
hub:textbox("Example", function()
  print("TextBox") end)
hub:dropdown("Example", {'test1', "test2", "test3", "test4"}, function()
  end)
```
