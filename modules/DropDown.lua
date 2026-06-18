--[[
    Zero UI
    Author: KangDark
]]

local Dropdown = {}
Dropdown.__index = Dropdown

function Dropdown.new(Config)

    local Self = setmetatable({}, Dropdown)

    Self.Name = Config.Name or "Dropdown"

    Self.Options = Config.Options or {}

    Self.Value = nil

    Self.Callback = Config.Callback or function() end

    return Self
end

function Dropdown:Set(Value)

    self.Value = Value

    self.Callback(Value)

end

return Dropdown
