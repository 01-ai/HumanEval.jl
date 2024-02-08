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
    open_brackets = ["[", "("]
    close_brackets = ["]", ")"]
    stack = []

    for char in s
        if in(char, open_brackets)
            push!(stack, char)
        elseif in(char, close_brackets)
            if !isempty(stack) && char == close_brackets[findfirst(x -> x == stack[end], open_brackets) + 1]
                pop!(stack)
            else
                return true
            end
        end
    end

    return false
end
