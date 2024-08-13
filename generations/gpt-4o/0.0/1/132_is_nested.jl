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
    open_count = 0
    
    for char in s
        if char == '['
            open_count += 1
        elseif char == ']'
            if open_count > 1
                return true
            end
            open_count -= 1
        end
    end
    
    return false
end
println(is_nested("[[]]"))          # true
println(is_nested("[]]]]]]][[[[[]")) # false
println(is_nested("[][]"))          # false
println(is_nested("[]"))            # false
println(is_nested("[[][]]"))        # true
println(is_nested("[[]][["))        # true
