require("msa/Core")

Color = readonly {
    White = {1, 1, 1, 1},
    Yellow = {1, 1, 0, 1},
    Magenta = {1, 0, 1, 1},
    Cyan = {0, 1, 1, 1},
    Red = {1, 0, 0, 1},
    Lime = {0, 1, 0, 1},
    Blue = {0, 0, 1, 1},
    Black = {0, 0, 0, 1},

    Teal = {0, 0.5, 0.5, 1},
    Green = {0, 0.5, 0, 1},
    Brown = {0.644, 0.164, 0.164, 1},
    Orange = {1, 0.5, 0, 1},
    Pink = {1, 0.752, 0.796, 1},
    Purple = {0.5, 0, 0.5, 1},

    PlayerWhite = {1, 1, 1, 1},
    PlayerBrown = {0.443, 0.231, 0.09, 1},
    PlayerRed = {0.856, 0.1, 0.094, 1},
    PlayerOrange = {0.956, 0.392, 0.113, 1},
    PlayerYellow = {0.905, 0.898, 0.172, 1},
    PlayerGreen = {0.192, 0.701, 0.168, 1},
    PlayerTeal = {0.129, 0.694, 0.607, 1},
    PlayerBlue = {0.118, 0.53, 1, 1},
    PlayerPurple = {0.627, 0.125, 0.941, 1},
    PlayerPink = {0.96, 0.439, 0.807, 1},
    PlayerGrey = {0.5, 0.5, 0.5, 1},
    PlayerBlack = {0.25, 0.25, 0.25, 1}
}

function GetColor(rOrColor, gOrAlpha, b, alpha)
    if type(rOrColor) == "number" then
        if rOrColor == nil then rOrColor = 1 end
        if gOrAlpha == nil then gOrAlpha = rOrColor end
        if b == nil then b = rOrColor end
        if alpha == nil then alpha = 1 end
        if type(gOrAlpha) ~= "number" then PrintError("green must be set to [0..1] number if red is a number then creating color.."); return {1, 0, 0, 1}; end
        if type(b) ~= "number" then PrintError("blue must be set to [0..1] number if red is a number then creating color.."); return {1, 0, 0, 1}; end
        if type(alpha) ~= "number" then PrintError("alpha must be set to [0..1] number if red is a number then creating color.."); return {1, 0, 0, 1}; end
        return {rOrColor, gOrAlpha, b, alpha};
    end
    if type(rOrColor) == "table" then
        if gOrAlpha == nil then gOrAlpha = 1 end
        return {rOrColor[1], rOrColor[2], rOrColor[3], gOrAlpha}
    end
    if type(rOrColor) == "string" then
        if rOrColor:sub(1, 1) == "#" then rOrColor = rOrColor:gsub("#", "") end
        return {tonumber("0x"..rOrColor:sub(1, 2), 16) / 255, tonumber("0x"..rOrColor:sub(3, 4), 16) / 255, tonumber("0x"..rOrColor:sub(5, 6), 16) / 255, alpha}
    end
    return {1, 0, 0, 1}
end

return Color
