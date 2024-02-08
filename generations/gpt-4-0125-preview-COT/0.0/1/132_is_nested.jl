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
    counter = 0
    nested = false  # Track if there's a nested structure
    
    for char in s
        if char == '['
            counter += 1
            if counter > 1
                nested = true  # Found a nested structure
            end
        elseif char == ']'
            if counter > 0
                counter -= 1
            else
                return false  # Unmatched closing bracket
            end
        end
    end
    
    return nested && counter == 0  # Ensure all brackets are matched and there was a nested structure
end
