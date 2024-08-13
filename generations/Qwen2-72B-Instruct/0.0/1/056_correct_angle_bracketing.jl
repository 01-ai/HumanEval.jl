"""
    correct_angle_bracketing(brackets::String)::Bool

Brackets is a string of "<" and ">". Return true if every opening bracket has a
corresponding closing bracket.

# Examples

```jldoctest
julia> correct_angle_bracketing("<")
false

julia> correct_angle_bracketing("<>")
true

julia> correct_angle_bracketing("<<><>>")
true

julia> correct_angle_bracketing("><<>")
false
```
"""
function correct_angle_bracketing(brackets::String)::Bool
    balance = 0
    for bracket in brackets
        if bracket == '<'
            balance += 1
        elseif bracket == '>'
            balance -= 1
        end
        if balance < 0
            return false
        end
    end
    return balance == 0
end
