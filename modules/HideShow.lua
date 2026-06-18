--[[
    Zero UI
    Author: KangDark
]]

local Animation =
    require(script.Parent.Animation)

local HideShow = {}

function HideShow:Bind(
    MainFrame,
    Container,
    Button
)

    local Open = true

    Button.MouseButton1Click:Connect(function()

        Open = not Open

        if Open then

            Button.Text = "▼"

            Container.Visible = true

            Animation:Tween(
                MainFrame,
                0.2,
                {
                    Size =
                    UDim2.new(
                        0,
                        380,
                        0,
                        280
                    )
                }
            )

        else

            Button.Text = "▲"

            Container.Visible = false

            Animation:Tween(
                MainFrame,
                0.2,
                {
                    Size =
                    UDim2.new(
                        0,
                        380,
                        0,
                        35
                    )
                }
            )

        end

    end)

end

return HideShow
