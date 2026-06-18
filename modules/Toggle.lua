--[[
    Zero UI
    Author: KangDark
]]

local Toggle = {}
Toggle.__index = Toggle

function Toggle.new(Config)

    local Self = setmetatable({}, Toggle)

    Self.Name = Config.Name or "Toggle"
    Self.State = Config.Default or false
    Self.Callback = Config.Callback or function() end

    return Self
end

function Toggle:Set(Value)

    self.State = Value

    self.Callback(Value)

end

return Toggle
