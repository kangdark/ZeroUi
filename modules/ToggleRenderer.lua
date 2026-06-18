--[[
    Zero UI
    Author: KangDark
]]

local Theme = require(script.Parent.Theme)

local ToggleRenderer = {}

function ToggleRenderer:Create(
    Parent,
    Name
)

    local ToggleFrame =
        Instance.new("Frame")

    ToggleFrame.Parent = Parent

    ToggleFrame.Size =
        UDim2.new(1,-10,0,30)

    ToggleFrame.BackgroundTransparency = 1

    local Label =
        Instance.new("TextLabel")

    Label.Parent = ToggleFrame

    Label.Size =
        UDim2.new(1,-40,1,0)

    Label.Position =
        UDim2.new(0,5,0,0)

    Label.BackgroundTransparency = 1

    Label.Text = Name

    Label.TextColor3 =
        Theme.Text

    Label.TextXAlignment =
        Enum.TextXAlignment.Left

    local Checkbox =
        Instance.new("TextButton")

    Checkbox.Parent = ToggleFrame

    Checkbox.Size =
        UDim2.new(0,22,0,22)

    Checkbox.Position =
        UDim2.new(1,-27,0.5,-11)

    Checkbox.BackgroundColor3 =
        Theme.ToggleOff

    Checkbox.Text = ""

    Checkbox.BorderSizePixel = 0

    local Corner =
        Instance.new("UICorner")

    Corner.Parent = Checkbox

    local Checkmark =
        Instance.new("TextLabel")

    Checkmark.Parent = Checkbox

    Checkmark.Size =
        UDim2.new(1,0,1,0)

    Checkmark.BackgroundTransparency = 1

    Checkmark.Text = "✓"

    Checkmark.TextColor3 =
        Color3.new(1,1,1)

    Checkmark.Visible = false

    local State = false

    Checkbox.MouseButton1Click:Connect(function()

        State = not State

        if State then

            Checkbox.BackgroundColor3 =
                Theme.ToggleOn

            Checkmark.Visible = true

        else

            Checkbox.BackgroundColor3 =
                Theme.ToggleOff

            Checkmark.Visible = false

        end

    end)

    return ToggleFrame

end

return ToggleRenderer
