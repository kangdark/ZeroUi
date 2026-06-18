--[[
    Zero UI
    Author: KangDark
]]

local Theme = require(script.Parent.Theme)

local Renderer = {}

function Renderer:CreateWindow(Name)

    local ScreenGui = Instance.new("ScreenGui")
    ScreenGui.Name = "ZeroUI"

    local MainFrame = Instance.new("Frame")
    MainFrame.Name = "MainFrame"
    MainFrame.Parent = ScreenGui

    MainFrame.Size = UDim2.new(0,380,0,280)

    MainFrame.BackgroundColor3 =
        Theme.Background

    MainFrame.BorderSizePixel = 0

    local Corner = Instance.new("UICorner")
    Corner.Parent = MainFrame

    local Header = Instance.new("Frame")
    Header.Parent = MainFrame

    Header.Name = "Header"

    Header.Size = UDim2.new(1,0,0,35)

    Header.BackgroundColor3 =
        Theme.Header

    Header.BorderSizePixel = 0

    local Title = Instance.new("TextLabel")
    Title.Parent = Header

    Title.BackgroundTransparency = 1

    Title.Size = UDim2.new(1,-40,1,0)

    Title.Position = UDim2.new(0,10,0,0)

    Title.Text = Name

    Title.TextColor3 =
        Theme.Text

    Title.TextXAlignment =
        Enum.TextXAlignment.Left

    local DropdownButton =
        Instance.new("TextButton")

    DropdownButton.Parent = Header

    DropdownButton.Size =
        UDim2.new(0,30,1,0)

    DropdownButton.Position =
        UDim2.new(1,-35,0,0)

    DropdownButton.Text = "▼"

    DropdownButton.BackgroundTransparency = 1

    local Container =
        Instance.new("ScrollingFrame")

    Container.Parent = MainFrame

    Container.Name = "Container"

    Container.Position =
        UDim2.new(0,0,0,35)

    Container.Size =
        UDim2.new(1,0,1,-35)

    Container.BackgroundTransparency = 1

    Container.BorderSizePixel = 0

    Container.AutomaticCanvasSize =
        Enum.AutomaticSize.Y

    Container.ScrollBarThickness = 3

    local Layout =
        Instance.new("UIListLayout")

    Layout.Parent = Container

    return {
        Gui = ScreenGui,
        MainFrame = MainFrame,
        Header = Header,
        Container = Container,
        DropdownButton = DropdownButton
    }

end

return Renderer
