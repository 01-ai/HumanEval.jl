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
    stack = 0
    nested = false

    for char in s
        if char == '['
            stack += 1
            if stack > 1
                nested = true
            end
        elseif char == ']'
            if stack == 0
                return false
            end
            stack -= 1
        end
    end

    return stack == 0 && nested
end
