local _AnimationTrack = {}
_AnimationTrack.__index = _AnimationTrack
setmetatable(_AnimationTrack, {__call = function (cls, ...) return cls.New(...) end })

function _AnimationTrack.New(params)
    local self = setmetatable({}, _AnimationTrack)
    -- constructor

    return self
end
