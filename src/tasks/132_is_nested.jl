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
    n_open = 0
    max_depth = 0
    cur_depth = 0
    for x in s
        if x == '['
            n_open += 1
        elseif x == ']'
            if n_open > 0
                n_open -= 1
                cur_depth += 1

                if n_open == 0
                    max_depth = max(max_depth, cur_depth)
                    cur_depth = 0
                end
            end
        end
    end

    max_depth >= 2
end
