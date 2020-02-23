local Tts = {}

local Obj = require("msa/Obj")

local data;

function Tts:GetObject(id)
    local obj = getObjectFromGUID(id)
    if obj == nil then PrintError("Failed to find object with id: "..id) return nil end
    local newObj = Obj(obj)

    return newObj;
end

return Tts
