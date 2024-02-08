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
    stack = []
    for c in s
        if c == '['
            push!(stack, c)
        elseif c == ']'
            if isempty(stack)
                return false
            else
                pop!(stack)
            end
        end
    end
    if isempty(stack)
        return false
    end
    return true
end
