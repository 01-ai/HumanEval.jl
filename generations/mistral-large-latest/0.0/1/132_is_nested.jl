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
    stack = Int[]
    for c in s
        if c == '['
            push!(stack, 1)
        elseif c == ']'
            if isempty(stack)
                return false
            elseif stack[end] == 1
                pop!(stack)
            else
                stack[end] += 1
            end
        end
    end
    return any(x -> x > 1, stack)
end
