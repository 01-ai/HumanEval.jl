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
    open_brackets = 0
    for bracket in brackets
        if bracket == '<'
            open_brackets += 1
        elseif bracket == '>'
            if open_brackets == 0
                return false
            else
                open_brackets -= 1
            end
        end
    end
    return open_brackets == 0
end

# Test cases
println(correct_angle_bracketing("<")) # false
println(correct_angle_bracketing("<>")) # true
println(correct_angle_bracketing("<<><>>")) # true
println(correct_angle_bracketing("><<>")) # false 
