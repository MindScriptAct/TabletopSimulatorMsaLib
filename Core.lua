function readonly(table)
    return setmetatable({}, {
        __index = table,
        __newindex = function(table, key, value)
            print("Attempt to modify read-only table")
        end,
        __metatable = false
    });
end

function GetObjectByName(name)
    PrintError("TODO : GetObjectByName")
    PrintError("Failed to find object with name: "..name)
    return obj;
end

function PrintError(msg)
    broadcastToAll(" ERROR : "..msg, {r = 1, g = 0.2, b = 0.2})
end

function GetObject(id)
    local obj = getObjectFromGUID(id)
    if obj == nil then PrintError("Failed to find object with id: "..id) end
    return obj;
end


function CloneObject(object)
    PrintError("TODO : CloneObject")
end
