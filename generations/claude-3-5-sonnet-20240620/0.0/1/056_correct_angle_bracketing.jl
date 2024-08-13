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
    count = 0
    for bracket in brackets
        if bracket == '<'
            count += 1
        elseif bracket == '>'
            count -= 1
        end
        
        # If count becomes negative, it means we've encountered a closing bracket
        # without a corresponding opening bracket
        if count < 0
            return false
        end
    end
    
    # If count is 0, all brackets are properly matched
    return count == 0
end
