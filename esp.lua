-- Settings for customization
local settings = {
    boxColor = Color3.fromRGB(255, 255, 255),
    boxLineThickness = 0.01,
    textSize = 10,
    textFont = Enum.Font.Gotham,
}

local highlightingEnabled = true -- True = On / False = Off

local function HighlightPlayer(player)
    local character = player.Character
    if character then
        local existingBox = character:FindFirstChildOfClass("SelectionBox")
        if existingBox then
            existingBox:Destroy()
        end
        local existingLabel = character:FindFirstChild("NameLabel")
        if existingLabel then
            existingLabel:Destroy()
        end
        
        if highlightingEnabled then
            local humanoidRootPart = character:FindFirstChild("HumanoidRootPart")
            local head = character:FindFirstChild("Head")
            
            if humanoidRootPart and head then
                local box = Instance.new("SelectionBox")
                box.Adornee = character
                box.Color3 = settings.boxColor
                box.LineThickness = settings.boxLineThickness
                box.Transparency = 0.5
                box.Parent = character
                
                local nameLabel = Instance.new("BillboardGui")
                nameLabel.Name = "NameLabel"
                nameLabel.AlwaysOnTop = true
                nameLabel.Size = UDim2.new(0, 100, 0, settings.textSize)
                nameLabel.StudsOffset = Vector3.new(0, 3, 0)
                nameLabel.Adornee = head
                
                local nameLabelText = Instance.new("TextLabel")
                nameLabelText.Name = "NameLabelText"
                nameLabelText.Size = UDim2.new(1, 0, 1, 0)
                nameLabelText.Text = player.Name
                nameLabelText.TextSize = settings.textSize
                nameLabelText.Font = settings.textFont
                nameLabelText.TextColor3 = Color3.new(1, 1, 1)
                nameLabelText.BackgroundTransparency = 1
                nameLabelText.Parent = nameLabel
                
                nameLabel.Parent = character
            end
        end
    end
end

local function HighlightAllPlayers()
    for _, player in ipairs(game.Players:GetPlayers()) do
        HighlightPlayer(player)
    end
end

HighlightAllPlayers()
