--[[
    Zero UI
    Author: KangDark
]]

local UserInputService =
    game:GetService("UserInputService")

local TweenService =
    game:GetService("TweenService")

local Drag = {}

function Drag:Enable(Frame)

    local Dragging = false
    local DragInput
    local MousePos
    local FramePos

    Frame.InputBegan:Connect(function(Input)

        if Input.UserInputType ==
            Enum.UserInputType.MouseButton1 then

            Dragging = true

            MousePos = Input.Position
            FramePos = Frame.Position

            Input.Changed:Connect(function()

                if Input.UserInputState ==
                    Enum.UserInputState.End then

                    Dragging = false

                end

            end)

        end

    end)

    Frame.InputChanged:Connect(function(Input)

        if Input.UserInputType ==
            Enum.UserInputType.MouseMovement then

            DragInput = Input

        end

    end)

    UserInputService.InputChanged:Connect(function(Input)

        if Input == DragInput and Dragging then

            local Delta =
                Input.Position - MousePos

            TweenService:Create(
                Frame,
                TweenInfo.new(0.05),
                {
                    Position =
                    UDim2.new(
                        FramePos.X.Scale,
                        FramePos.X.Offset + Delta.X,

                        FramePos.Y.Scale,
                        FramePos.Y.Offset + Delta.Y
                    )
                }
            ):Play()

        end

    end)

end

return Drag
