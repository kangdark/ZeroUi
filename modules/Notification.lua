--[[
    Zero UI
    Author: KangDark
]]

local Notification = {}

function Notification:Notify(Config)

    print(
        "[Zero UI]",
        Config.Title,
        Config.Content
    )

end

return Notification
