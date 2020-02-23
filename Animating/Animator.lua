local AnimAction = require("msa/Animating/AnimAction")
local Animation = require("msa/Animating/Animation")

local Animator = {}
Animator.__index = Animator
setmetatable(Animator, {__call = function (cls, ...) return cls.New(...) end })

function Animator.New(params)
    local self = setmetatable({}, Animator)
    -- constructor

    return self
end

--##################################################################
--       Main
--##################################################################

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

        if anim.action == AnimAction.Await then self:_Await(anim)
        elseif anim.action == AnimAction.Delay then self:_Delay(anim)
        elseif anim.action == AnimAction.Execute then self:_Execute(anim)
        elseif anim.action == AnimAction.Take then self:_Take(anim)
        elseif anim.action == AnimAction.TakeFrom then self:_TakeFrom(anim)
        elseif anim.action == AnimAction.Clone then self:_Clone(anim)
        elseif anim.action == AnimAction.Move then self:_Move(anim)
        elseif anim.action == AnimAction.MoveTo then self:_MoveTo(anim)
        elseif anim.action == AnimAction.Rotate then self:_Rotate(anim)
        elseif anim.action == AnimAction.Scale then self:_Scale(anim)
        elseif anim.action == AnimAction.Transform then self:_Transform(anim)
        elseif anim.action == AnimAction.Teleport then self:_Teleport(anim)
        elseif anim.action == AnimAction.Flip then self:_Flip(anim)
        elseif anim.action == AnimAction.Sort then self:_Sort(anim)
        elseif anim.action == AnimAction.Shuffle then self:_Shuffle(anim)
        elseif anim.action == AnimAction.Lock then self:_Lock(anim)
        elseif anim.action == AnimAction.Unlock then self:_Unlock(anim)
        elseif anim.action == AnimAction.Delete then self:_Delete(anim)
        elseif anim.action == AnimAction.Draw then self:_Draw(anim)
        elseif anim.action == AnimAction.Deal then self:_Deal(anim)
        else
            print("----------------------------------------------")
            print("not handled action:", anim.action)
            PrintObject(anim, "data "..idx)
        end
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

--##################################################################
--       Animation actions
--##################################################################


function Animator:_Await(anim) print("TODO : ----------------------------------------------")    PrintObject(anim, anim.action) end
function Animator:_Delay(anim) print("TODO : ----------------------------------------------")    PrintObject(anim, anim.action) end
function Animator:_Execute(anim) print("TODO : ----------------------------------------------")    PrintObject(anim, anim.action) end
--##################################################################
function Animator:_Take(anim) print("TODO : ----------------------------------------------")    PrintObject(anim, anim.action) end
function Animator:_TakeFrom(anim) print("TODO : ----------------------------------------------")    PrintObject(anim, anim.action) end
function Animator:_Clone(anim)
    print("TODO : ----------------------------------------------")
    PrintObject(anim, anim.action)
end
--##################################################################
function Animator:_Move(anim) print("TODO : ----------------------------------------------")    PrintObject(anim, anim.action) end
function Animator:_MoveTo(anim) print("TODO : ----------------------------------------------")    PrintObject(anim, anim.action) end
function Animator:_Rotate(anim) print("TODO : ----------------------------------------------")    PrintObject(anim, anim.action) end
function Animator:_Scale(anim) print("TODO : ----------------------------------------------")    PrintObject(anim, anim.action) end
function Animator:_Transform(anim) print("TODO : ----------------------------------------------")    PrintObject(anim, anim.action) end
function Animator:_Teleport(anim) print("TODO : ----------------------------------------------")    PrintObject(anim, anim.action) end
--##################################################################
function Animator:_Flip(anim) print("TODO : ----------------------------------------------")    PrintObject(anim, anim.action) end
function Animator:_Sort(anim) print("TODO : ----------------------------------------------")    PrintObject(anim, anim.action) end
function Animator:_Shuffle(anim) print("TODO : ----------------------------------------------")    PrintObject(anim, anim.action) end
function Animator:_Lock(anim) print("TODO : ----------------------------------------------")    PrintObject(anim, anim.action) end
function Animator:_Unlock(anim) print("TODO : ----------------------------------------------")    PrintObject(anim, anim.action) end
function Animator:_Delete(anim) print("TODO : ----------------------------------------------")    PrintObject(anim, anim.action) end
function Animator:_Draw(anim) print("TODO : ----------------------------------------------")    PrintObject(anim, anim.action) end
function Animator:_Deal(anim) print("TODO : ----------------------------------------------")    PrintObject(anim, anim.action) end




return Animator
