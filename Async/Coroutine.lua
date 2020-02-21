local Coroutine = {}

--- Yields from the current coroutine, which will later be resumed once a condition is met.
---@param condition function @Return true when the current coroutine should be resumed.

--- copied from : https://gitlab.com/BenjaminDobell/ge_tts

function Coroutine.YieldCondition(condition)
    local co = coroutine.running()

    Wait.condition(function()
        coroutine.resume(co)
    end, condition)

    coroutine.yield()
end

--- Yields from the current coroutine, which will later be resumed after the specified number of frames have passed.
---@param frames number
function Coroutine.YieldFrames(frames)
    local co = coroutine.running()

    Wait.frames(function()
        coroutine.resume(co)
    end, frames)

    coroutine.yield()
end

--- Yields from the current coroutine, which will later be resumed after the specified number of seconds have passed.
---@param seconds number
function Coroutine.YieldSeconds(seconds)
    local co = coroutine.running()

    Wait.time(function()
        coroutine.resume(co)
    end, seconds)

    coroutine.yield()
end

--- Creates a co-routine from the specified function, and immediately starts it.
---@param func function
function Coroutine.Start(func)
    return coroutine.resume(coroutine.create(func))
end

return Coroutine
