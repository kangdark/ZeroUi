--[[
    Zero UI
    Author: KangDark
]]

local Slider = {}
Slider.__index = Slider

function Slider.new(Config)

    local Self = setmetatable({}, Slider)

    Self.Name = Config.Name or "Slider"

    Self.Min = Config.Min or 0
    Self.Max = Config.Max or 100

    Self.Value = Config.Default or Self.Min

    Self.Callback = Config.Callback or function() end

    return Self
end

function Slider:Set(Value)

    self.Value = math.clamp(
        Value,
        self.Min,
        self.Max
    )

    self.Callback(self.Value)

end

return Slider
