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
    # Initialize a stack to keep track of the brackets
    stack = []

    # Iterate through the string
    for c in s
        # If the current character is an opening bracket, push it onto the stack
        if c == '['
            push!(stack, c)
        # If the current character is a closing bracket, pop the top element from the stack
        # and check if it is a matching opening bracket
        elseif c == ']'
            if isempty(stack) || stack[end] != '['
                return false
            end
            pop!(stack)
        end
    end

    # If the stack is not empty, there are unmatched brackets
    if !isempty(stack)
        return false
    end

    # If the stack is empty, there are no unmatched brackets
    return true
end
