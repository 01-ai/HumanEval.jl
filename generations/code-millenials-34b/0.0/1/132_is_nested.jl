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
    bracket_stack = []
    for bracket in s
        if bracket == '['
            push!(bracket_stack, bracket)
        else
            if isempty(bracket_stack) || bracket_stack[end] != '['
                return true
            end
            pop!(bracket_stack)
        end
    end
    return !isempty(bracket_stack)
end

# Test cases
println(is_nested("[[]]")) # true
println(is_nested("[]]]]]]][[[[[]")) # false
println(is_nested("[][]")) # false
println(is_nested("[]")) # false
println(is_nested("[[][]]")) # true
println(is_nested("[[]][[")) # true

