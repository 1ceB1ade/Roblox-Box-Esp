# Roblox Player Highlighter

The Roblox Player Highlighter is a script designed for Roblox games to enhance the visibility of players by highlighting their characters with a selection box and displaying their usernames above their heads.

## Features

- Highlights all players' characters with customizable selection boxes.
- Displays players' usernames above their heads with customizable text labels.
- Customizable appearance settings for selection boxes and text labels.

## Usage

To use the Roblox Player Highlighter:

1. Download the provided script file.
2. Execute with any Roblox executor.

## Customization

You can customize the appearance of the selection boxes and text labels by adjusting the settings in the `settings` table within the script:

- `boxColor`: The color of the selection boxes.
- `boxLineThickness`: The thickness of the lines of the selection boxes.
- `textSize`: The font size of the text labels.
- `textFont`: The font style of the text labels.

## Example

```lua
-- Settings for customization
local settings = {
    boxColor = Color3.fromRGB(255, 255, 255),
    boxLineThickness = 0.01,
    textSize = 10,
    textFont = Enum.Font.Gotham,
}

local highlightingEnabled = true -- True = On / False = Off

-- Rest of the script...
```
## Credits
Discord: ```pilloverdose```

Don't attemp in claiming this code, This is strictly for personal use only.
## License

This script is released under the [MIT License](LICENSE).
