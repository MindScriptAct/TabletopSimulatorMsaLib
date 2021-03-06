require("msa/Core")

function FreazeObject(id)
    local obj = getObjectFromGUID(id);
    if obj ~= nil then
        obj.interactable = false;
        obj.tooltip = false;
    end
end

-- TODO : ipmrove string performance.
function TableToString(table, precision)
    local text = "{"
    for key, value in pairs(table) do
        if text ~= "{" then text = text..", " end
        if precision == nil then
            text = text..key.."="..value
        else
            text = text..key.."="..PrecisionNumber(value, precision)
        end
    end
    return text.."}"
end

-- TODO : ipmrove string performance.
function UserdataToString(obj, name, tab)
    if name == nil then name = "" end;
        local text = name.." userdata:".."\n"
        text = text..tab.."name:"..obj.name.."\n"
        text = text..tab.."tag:"..obj.tag.."\n"
        text = text..tab.."position:"..TableToString(obj.getPosition(), 2).."\n"
        text = text..tab.."rotation:"..TableToString(obj.getRotation(), 2).."\n"
        text = text..tab.."scale:"..TableToString(obj.getScale(), 2).."\n"
        text = text..tab.."description:"..obj.getDescription().."\n"
        local customObj = obj.getCustomObject()
        if customObj == nil then
            text = text..tab.."CustomObject:nil".."\n"
        else
            text = text..tab.."CustomObject:".."\n"
            for key, value in pairs(customObj) do
                if type(value) == "string" or type(value) == "number" or type(value) == "boolean" then
                    text = text..tab.."  "..key..":"..tostring(value).."\n"
                elseif type(value) == "table" then
                    text = text..TableToString(value)
                else
                    text = text..tab.."  "..key..": unhandled type - "..type(value).."\n"
                end
            end
        end
        return text
    end

    -- TODO : ipmrove string performance.
    function PrintObject(obj, name, depth, tab)
        if name == nil then name = "" end;
            if depth == nil then depth = 5 end
            if tab == nil then tab = "" end
            local type = type(obj)
            if type == "table" then
                if depth > 1 then
                    print(tab..name..":")
                    for key, value in pairs(obj) do
                        PrintObject(value, key, depth - 1, tab.."  ");
                    end
                else
                    local printString = "{"
                    for key, value in pairs(obj) do
                        printString = printString..key..":"..value..", "
                    end
                    printString = printString.."}"
                    print(tab..name..":"..printString)
                end
            elseif type == "userdata" then
                print(UserdataToString(obj, name, tab.."  "))
            elseif type == "string" or type == "number" or type == "boolean" then
                print(tab..name..":".. tostring(obj))
            else
                print(name.." not handled type:"..type)
            end
        end


        function PrintItAll()
            for key, value in pairs(_G) do print(key, value) end
        end

        function PrecisionNumber(number, precision)
            local am = 10^precision
            return math.floor(number * am + 0.5) / am
        end
