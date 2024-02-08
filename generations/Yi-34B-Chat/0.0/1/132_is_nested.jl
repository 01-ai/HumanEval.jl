"""
    is_nested(s::String)::Bool

Create a function that takes a string as input which contains only square
brackets. The function should return `true` if and only if there is a valid
subsequence of brackets where at least one bracket in the subsequence is nested.

# Examples

```jldoctest
julia> is_nested("[[]]")
true

julia> is_nested("[]]]]]]][[[[[]")
false

julia> is_nested("[][]")
false

julia> is_nested("[]")
false

julia> is_nested("[[][]]")
true

julia> is_nested("[[]][[")
true
```
"""
function is_nested(s::String)::Bool
    # Initialize a stack to keep track of the opening brackets
    stack = Stack{Char}()
    
    # Loop through the string
    for c in s
        # If the current character is an opening bracket, push it onto the stack
        if c == '['
            push!(stack, c)
        # If the current character is a closing bracket, and the stack is not empty,
        # and the top of the stack is an opening bracket, then we have a nested bracket
        elseif c == ']' && !isempty(stack)
            # If the top of the stack is an opening bracket, pop it and return true
            if peek(stack) == '['
                pop!(stack)
                return true
            end
        end
    end
    
    # If the stack is not empty after processing the entire string, there are unmatched opening brackets
    return isempty(stack)
end
