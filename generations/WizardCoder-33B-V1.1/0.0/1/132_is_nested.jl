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
    for bracket in s
        if bracket == '['
            pushfirst(stack, bracket)
        elseif bracket == ']'
            if isempty(stack)
                return false
            else
                popfirst(stack)
            end
        end
    end
    return !isempty(stack)
end

# Test cases
println(is_nested("[[]]")) # true
println(is_nested("[]]]]][[[[[")) # false
println(is_nested("[][]")) # false
println(is_nested("[]")) # false
println(is_nested("[[][]]")) # true
println(is_nested("[[]][[")) # true 