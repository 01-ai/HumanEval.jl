"""
    correct_bracketing(brackets::String)::Bool

Brackets is a string of "(" and ")". Return `true` if every opening bracket has
a corresponding closing bracket.

# Examples

```jldoctest
julia> correct_bracketing("(")
false

julia> correct_bracketing("()")
true

julia> correct_bracketing("(()())")
true

julia> correct_bracketing(")(()")
false
```
"""
function correct_bracketing(brackets::String)::Bool
    # Initialize a stack to keep track of opening brackets
    stack = []

    # Iterate through each character in the string
    for char in brackets
        # If the character is an opening bracket, push it onto the stack
        if char == '('
            push!(stack, char)
        elseif char == ')'
            # If the character is a closing bracket, check if the stack is empty
            if isempty(stack)
                return false
            else
                # If the stack is not empty, pop the top element from the stack
                pop!(stack)
            end
        end
    end

    # If the stack is empty, all opening brackets have a corresponding closing bracket
    return isempty(stack)
end
