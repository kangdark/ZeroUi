--[[
    Zero UI
    Author: KangDark
]]

local Button = {}
Button.__index = Button

function Button.new(Config)

    local Self = setmetatable({}, Button)

    Self.Name = Config.Name or "Button"
    Self.Callback = Config.Callback or function() end

    return Self
end

function Button:Fire()

    self.Callback()

end

return Button
