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
    stack = Char[]
    for bracket in brackets
        if bracket == '<'
            push!(stack, bracket)
        elseif bracket == '>'
            if isempty(stack) || pop!(stack) != '<'
                return false
            end
        end
    end
    return isempty(stack)
end
