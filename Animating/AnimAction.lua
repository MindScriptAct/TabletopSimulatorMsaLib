--##################################################################
--       List of actions
--##################################################################

require("msa/Core")

local AnimAction = readonly {
    Await = "Await",
    Delay = "Delay",
    Execute = "Execute",
    Take = "Take",
    TakeFrom = "TakeFrom",
    Clone = "clone",
    Move = "Move",
    MoveTo = "MoveTo",
    Rotate = "Rotate",
    Scale = "Scale",
    Transform = "Transform",
    Teleport = "Teleport",
    Flip = "Flip",
    Sort = "Sort",
    Shuffle = "Shuffle",
    Lock = "Lock",
    Unlock = "Unlock",
    Delete = "Delete",
    Draw = "Draw",
    Deal = "Deal"
}

return AnimAction
