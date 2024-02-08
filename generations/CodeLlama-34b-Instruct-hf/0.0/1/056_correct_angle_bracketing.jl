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
    # Initialize a stack to keep track of the opening brackets
    stack = []

    # Iterate through the string of brackets
    for bracket in brackets
        # If the current bracket is an opening bracket, push it onto the stack
        if bracket == '<'
            push!(stack, bracket)
        # If the current bracket is a closing bracket, pop the corresponding opening bracket from the stack
        elseif bracket == '>'
            if isempty(stack)
                return false
            end
            pop!(stack)
        end
    end

    # If the stack is empty, all opening brackets have a corresponding closing bracket
    return isempty(stack)
end
