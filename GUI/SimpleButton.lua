local SimpleButton = {}
SimpleButton.__index = SimpleButton
setmetatable(SimpleButton, {__call = function (cls, ...) return cls.New(...) end })

function SimpleButton.New(attachedObject, label, clickFunction, functionOwner, style)
    local self = setmetatable({}, SimpleButton)

    if type(attachedObject) == "string" then attachedObject = GetObject(attachedObject) end

    if attachedObject == nil then PrintError("button attachedObject can't be nil."); return nil; end
    if type(style) == "string" then
        style = StaticUiManager:GetButtonStyle(style)
    end
    if style == nil then
        style = StaticUiManager:GetButtonStyle(Static.DefaultStyleName)
    end

    self._attachedObject = attachedObject;
    self._attachedObject.createButton(style)
    self._index = self:GetIndex()

    if label ~= nil then
        if type(label) == "string" then
            self:SetLabel(label)
        else
            PrintError("buttons property 'label' must be string.");
        end
    end

    if clickFunction ~= nil then
        if type(clickFunction) == "string" then
            self:SetClickFunction(clickFunction)
        else
            PrintError("buttons property 'clickFunction' must be string.");
        end
    end

    if clickFunction ~= nil then
        self:SetFunctionOwner(functionOwner)
    end

    return self
end

function SimpleButton:GetIndex()
    if self._index == nil then
        local allButtons = self._attachedObject.getButtons()
        for buttonNr, button in pairs(allButtons) do
            self._index = button.index
        end
    end
    return self._index
end


function SimpleButton:SetLabel(label)
    if label == nil then label = "No label" end
    self._attachedObject.editButton({
        index = self._index,
        label = label
    })
    return self
end

function SimpleButton:SetFunctionOwner(functionOwner)
    if functionOwner == nil then functionOwner = Global end
    if type(functionOwner) == "string" then functionOwner = GetObject(functionOwner) end
    self._attachedObject.editButton({
        index = self._index,
        function_owner = functionOwner
    })
    return self
end

function SimpleButton:SetClickFunction(clickFunction)
    if clickFunction == nil then clickFunction = "_debugButtonClick" end
    self._attachedObject.editButton({
        index = self._index,
        click_function = clickFunction
    })
    return self
end

function SimpleButton:SetFontSize(fontSize)
    if fontSize == nil then fontSize = 100 end
    self._attachedObject.editButton({
        index = self._index,
        font_size = fontSize
    })
    return self
end

function SimpleButton:SetWidth(width)
    if width == nil then width = 100 end
    self._attachedObject.editButton({
        index = self._index,
        width = width
    })
    return self
end

function SimpleButton:SetHeight(height)
    if height == nil then height = 100 end
    self._attachedObject.editButton({
        index = self._index,
        height = height
    })
    return self
end

function SimpleButton:Resize(width, height)
    if width == nil then width = 100 end
    if height == nil then height = 100 end
    self._attachedObject.editButton({
        index = self._index,
        height = height,
        width = width
    })
    return self
end

function SimpleButton:Move(x, y, z)
    if x == nil then x = 0 end
    if y == nil then y = x end
    if z == nil then z = x end
    self._attachedObject.editButton({
        index = self._index,
        position = {x, y, z}
    });
    return self;
end

function SimpleButton:Rotate(x, y, z)
    if x == nil then x = 0 end
    if y == nil then y = x end
    if z == nil then z = x end
    self._attachedObject.editButton({
        index = self._index,
        rotation = {x, y, z}
    });
    return self;
end

function SimpleButton:Scale(x, y, z)
    if x == nil then x = 1 end
    if y == nil then y = x end
    if z == nil then z = x end
    self._attachedObject.editButton({
        index = self._index,
        scale = {x, y, z}
    });
    return self;
end

function SimpleButton:SetColor(r, g, b, a)
    self._attachedObject.editButton({
        index = self._index,
        color = GetColor(r, g, b, a)
    });
    return self;
end

function SimpleButton:SetFontColor(r, g, b, a)
    self._attachedObject.editButton({
        index = self._index,
        font_color = GetColor(r, g, b, a)
    });
    return self;
end

function SimpleButton:SetHoverColor(r, g, b, a)
    if r == nil then
        self._attachedObject.editButton({
            index = self._index,
            hover_color = nil
        });
    end
    self._attachedObject.editButton({
        index = self._index,
        hover_color = GetColor(r, g, b, a)
    });
    return self;
end

function SimpleButton:SetPressColor(r, g, b, a)
    if r == nil then
        self._attachedObject.editButton({
            index = self._index,
            hover_color = nil
        });
    end
    self._attachedObject.editButton({
        index = self._index,
        press_color = GetColor(r, g, b, a)
    });
    return self;
end

function SimpleButton:SetTooltip(tooltip)
    self._attachedObject.editButton({
        index = self._index,
        tooltip = tooltip
    })
    return self
end

--[[
function SimpleButton:Debug()
  local allButtons = self._attachedObject.getButtons()
  PrintObject("buttons", allButtons, 3)
end
]]

function _debugButtonClick()
    print('Warning: Button function not set!')
end

return SimpleButton
