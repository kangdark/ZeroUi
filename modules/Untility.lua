--[[
    Zero UI
    Author: KangDark
]]

local Utility = {}

function Utility:Round(Number)

    return math.floor(Number + 0.5)

end

function Utility:Clamp(Value, Min, Max)

    return math.clamp(Value, Min, Max)

end

return Utility
