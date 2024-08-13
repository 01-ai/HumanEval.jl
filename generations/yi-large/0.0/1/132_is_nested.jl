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
    # Initialize a stack to keep track of brackets
    stack = Int[]
    # Initialize a flag to indicate if we've found a nested bracket
    nested = false

    # Iterate over each character in the string
    for c in s
        # If the character is an opening bracket, push to the stack
        if c == '['
            push!(stack, 1)
        # If the character is a closing bracket
        elseif c == ']'
            # If the stack is not empty, pop from the stack
            if !isempty(stack)
                pop!(stack)
                # If the stack is not empty after popping, we have found a nested bracket
                if !isempty(stack)
                    nested = true
                end
            # If the stack is empty, the brackets are not balanced
            else
                return false
            end
        end
    end

    # Return the nested flag
    return nested
end

# Example usage
for s in ["[[]]", "[]]]]]]][[[[[]", "[][]", "[]", "[[][]]", "[[]][["]
    println(is_nested(s))
end
