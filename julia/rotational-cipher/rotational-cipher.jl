const LOWERS::String = "abcdefghijklmnopqrstuvwxyz"

const CAPS::String = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"

function rotate(ROT::Int64, string::String)
    return map(c -> rotate(ROT, c), string)
end

function rotate(ROT::Int64, c::Char)
    if c in LOWERS
        new_letter = (findfirst(c, LOWERS) + ROT)
        if new_letter > length(LOWERS)
            return LOWERS[new_letter - length(LOWERS)]
        else
            return LOWERS[new_letter]
        end
    elseif c in CAPS
        new_letter = (findfirst(c, CAPS) + ROT)
        if new_letter > length(CAPS)
            return CAPS[new_letter - length(CAPS)]
        else
            return CAPS[new_letter]
        end
    else
        return c
    end
end
