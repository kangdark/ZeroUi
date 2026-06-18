--[[
    Zero UI
    Author: KangDark

    Modern Roblox UI Library
]]

local ZeroUI = {}

local Modules = script.Modules

ZeroUI.Window = require(Modules.Window)

function ZeroUI:CreateWindow(Config)
    return ZeroUI.Window.new(Config)
end

return ZeroUI
