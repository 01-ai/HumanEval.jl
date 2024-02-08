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
    opening_bracket = "<"
    closing_bracket = ">"
    stack = []

    for char in brackets
        if char == opening_bracket
            push!(stack, char)
        elseif char == closing_bracket
            if isempty(stack) || stack[end] != opening_bracket
                return false
            else
                pop!(stack)
            end
        end
    end

    return isempty(stack)
end
