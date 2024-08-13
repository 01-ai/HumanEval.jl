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
    for (i, char) in enumerate(s)
        if char == '['
            push!(stack, i)
        elseif char == ']'
            if !isempty(stack)
                start = pop!(stack)
                if i - start > 1  # Check if there's at least one character between brackets
                    for j in start+1:i-1
                        if s[j] == '[' || s[j] == ']'
                            return true  # Found a nested bracket
                        end
                    end
                end
            end
        else
            error("Invalid character in input string")
        end
    end
    return false
end
