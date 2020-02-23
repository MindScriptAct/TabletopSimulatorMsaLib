local Obj = {}
Obj.__index = Obj
setmetatable(Obj, {__call = function (cls, ...) return cls.New(...) end })

function Obj.New(ttsObject)
    print("hi")
    local self = setmetatable({}, Obj)

    if type(ttsObject) == "string" then ttsObject = getObjectFromGUID(ttsObject) end
    self.ttsObj = ttsObject

    return self
end

function Obj:PrintData()
    print(self.ttsObj)
end

function Obj:DoStuff()
    print("object does doStuff!!")
end

return Obj
