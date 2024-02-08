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
    # Initialize an empty stack to keep track of the brackets
    stack = []

    # Iterate through the string
    for bracket in brackets
        # If the current character is an opening bracket ("<"), push it to the stack
        if bracket == '<'
            push!(stack, bracket)
        # If the current character is a closing bracket (">"), check if the stack is empty
        elseif bracket == '>'
            # If the stack is not empty, pop the last bracket from the stack
            if !isempty(stack)
                pop!(stack)
            # If the stack is empty after checking for a closing bracket, return false
            else
                return false
            end
        end
    end

    # After iterating through the entire string, check if the stack is empty
    # If the stack is not empty, return false. Otherwise, return true
    return isempty(stack)
end
