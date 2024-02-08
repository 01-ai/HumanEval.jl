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
    # Initialize a stack to keep track of opening brackets
    stack = Char[]

    # Iterate through the string
    for char in s
        # If the current character is an opening bracket, push it to the stack
        if char == '['
            push!(stack, char)
        # If the current character is a closing bracket, check if the stack is empty
        elseif char == ']'
            if isempty(stack)
                # If the stack is empty, return false
                return false
            else
                # If the stack is not empty, pop the top element from the stack
                pop!(stack)
            end
        end
    end

    # If the stack is empty, return false
    if isempty(stack)
        return false
    end

    # If the stack is not empty, return true
    return true
end
