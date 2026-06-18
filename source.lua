--[[
    Zero UI
    Author: KangDark
]]

local ZeroUI = {}

local Window = require(script.Modules.Window)

function ZeroUI:CreateWindow(Config)
    return Window.new(Config)
end

return ZeroUI
