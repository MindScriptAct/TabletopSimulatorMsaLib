local UiManager = {}
UiManager.__index = UiManager
setmetatable(UiManager, {__call = function (cls, ...) return cls.New(...) end })

function UiManager:New()
    if StaticUiManager ~= nil then return StaticUiManager end

    local self = setmetatable({}, UiManager)
    self._buttonStyleLibrary = {
        default = {
            label = "[Button]",
            function_owner = Global,
            click_function = "_debugButtonClick",
            font_size = 100,
            width = 600,
            height = 200,
            position = {0, 0, 0},
            rotation = {0, 180, 0},
            scale = {5, 5, 5},
            color = {1, 1, 1},
            font_color = {0, 0, 0},
            hover_color = nil,
            press_color = nil,
            tooltip = nil
        }
    }
    StaticUiManager = self
    return self
end

local StaticUiManager = UiManager()

function UiManager:GetButtonStyle(styleName)
    return self._buttonStyleLibrary[styleName]
end

function UiManager:SetButtonStyle(styleName, styleTable)
    self._buttonStyleLibrary[styleName] = styleTable
end


function UiManager:CloneButtonTable(style)
    if style == nil then style = Static.DefaultStyleName end
    if type(style) == "string" then style = self:GetButtonStyle(style) end
    local buttonTable = {
        label = style.label,
        function_owner = style.function_owner,
        click_function = style.click_function,
        font_size = style.font_size,
        width = style.width,
        height = style.height,
        tooltip = style.tooltip
    };
    if style.position ~= nil then buttonTable.position = {style.position[1], style.position[2], style.position[3]} else buttonTable.position = nil end
    if style.rotation ~= nil then buttonTable.rotation = {style.rotation[1], style.rotation[2], style.rotation[3]} else buttonTable.rotation = nil end
    if style.scale ~= nil then buttonTable.scale = {style.scale[1], style.scale[2], style.scale[3]} else buttonTable.scale = nil end
    if style.color ~= nil then buttonTable.color = {style.color[1], style.color[2], style.color[3], style.color[4]} else buttonTable.color = nil end
    if style.font_color ~= nil then buttonTable.font_color = {style.font_color[1], style.font_color[2], style.font_color[3], style.font_color[4]} else buttonTable.font_color = nil end
    if style.hover_color ~= nil then buttonTable.hover_color = {style.hover_color[1], style.hover_color[2], style.hover_color[3], style.hover_color[4]} else buttonTable.hover_color = nil end
    if style.press_color ~= nil then buttonTable.press_color = {style.press_color[1], style.press_color[2], style.press_color[3], style.press_color[4]} else buttonTable.press_color = nil end

    return buttonTable;
end

return UiManager
