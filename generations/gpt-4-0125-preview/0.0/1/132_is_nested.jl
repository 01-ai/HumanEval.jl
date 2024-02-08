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
    depth = 0  # Initialize depth counter
    for c in s
        if c == '['
            depth += 1  # Increment depth for opening bracket
        elseif c == ']'
            depth -= 1  # Decrement depth for closing bracket
        end
        if depth > 1
            return true  # Found a nested bracket
        end
        if depth < 0
            return false  # Invalid sequence, closing before opening
        end
    end
    return false  # No nested brackets found
end
