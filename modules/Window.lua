--[[
    Zero UI
    Author: KangDark
]]

local Drag =
require(script.Parent.Drag)
local Renderer = require(script.Parent.Renderer)
local ToggleRenderer = require(script.Parent.ToggleRenderer)
local ButtonRenderer = require(script.Parent.ButtonRenderer)
local SectionRenderer = require(script.Parent.SectionRenderer)
local HideShow = require(script.Parent.HideShow)

local Window = {}
Window.__index = Window

function Window.new(Config)

    local Self = setmetatable({}, Window)

    local Name = Config.Name or "Zero UI"

    local UI = Renderer:CreateWindow(Name)

    UI.Gui.Parent = game:GetService("CoreGui")

    HideShow:Bind(
        UI.MainFrame,
        UI.Container,
        UI.DropdownButton
    )

    Drag:Enable(
    UI.Header
)

Self.UI = UI

return Self
end

function Window:CreateToggle(Config)

    return ToggleRenderer:Create(
        self.UI.Container,
        Config.Name or "Toggle",
        Config.Default or false,
        Config.Callback or function() end
    )

end

function Window:CreateButton(Config)

    return ButtonRenderer:Create(
        self.UI.Container,
        Config.Name or "Button",
        Config.Callback or function() end
    )

end

function Window:CreateSection(Config)

    return SectionRenderer:Create(
        self.UI.Container,
        Config.Name or "Section"
    )

end

return Window
