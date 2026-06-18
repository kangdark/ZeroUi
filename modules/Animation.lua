--[[
    Zero UI
    Author: KangDark
]]

local TweenService =
    game:GetService("TweenService")

local Animation = {}

function Animation:Tween(
    Object,
    Time,
    Properties
)

    local Tween =
        TweenService:Create(
            Object,
            TweenInfo.new(Time),
            Properties
        )

    Tween:Play()

    return Tween

end

return Animation
