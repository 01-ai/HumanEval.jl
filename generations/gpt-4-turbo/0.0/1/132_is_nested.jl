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
    # Initialize a counter for the depth of nested brackets
    depth = 0
    # Initialize a variable to check if we have encountered a nested bracket
    found_nested = false

    # Iterate through each character in the string
    for char in s
        if char == '['
            # Increase depth for each opening bracket
            depth += 1
        elseif char == ']'
            # Decrease depth for each closing bracket
            depth -= 1
            # If depth is greater than zero after closing a bracket, it means we had a nested bracket
            if depth > 0
                found_nested = true
            end
        end
        # If depth goes negative, it means brackets are not properly balanced
        if depth < 0
            return false
        end
    end

    # Return true if we found a nested bracket and the depth returns to zero (properly closed)
    return found_nested && depth == 0
end
