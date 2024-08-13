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
    depth = 0
    has_nested = false
    for char in s
        if char == '['
            depth += 1
            if depth > 1
                has_nested = true
            end
        elseif char == ']'
            depth -= 1
            if depth < 0
                return false # Early return if there's an unmatched closing bracket
            end
        end
    end
    return has_nested && depth == 0 # Check for nested brackets and balanced sequence
end
