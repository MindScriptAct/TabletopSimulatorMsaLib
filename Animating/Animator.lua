local Animation = require("msa/Animating/Animation")

local Animator = {}
Animator.__index = Animator
setmetatable(Animator, {__call = function (cls, ...) return cls.New(...) end })

function Animator.New(params)
    local self = setmetatable({}, Animator)
    -- constructor

    return self
end

--- Cretes animation object, and returns it.
function Animator:InitAnimation()
    local animation = Animation()

    return animation
end

--- Start animation
function Animator:Start(animation)
    print("TODO : Animator starts animation.")

    --PrintObject(animation, "animation")

    for idx, anim in ipairs(animation.animationArray) do
        --print()
        print(idx)
        print(" ---------------- ")
        PrintObject(anim, "data "..idx)
    end
end

--- Stop animation
function Animator:Stop(animation)
    print("TODO : Animator Stops animation.")
end

--- Stop All animations
function Animator:StopAll()
    print("TODO : Animator StopAll animation.")
end


return Animator
