"""
    correct_bracketing(brackets::String)::Bool

Brackets is a string of "(" and ")". Return `true` if every opening bracket has
a corresponding closing bracket.

# Examples

```jldoctest
julia> correct_bracketing("(")
false

julia> correct_bracketing("()")
true

julia> correct_bracketing("(()())")
true

julia> correct_bracketing(")(()")
false
```
"""
function correct_bracketing(brackets::String)::Bool
    stack = []
    for char in brackets
        if char == '('
            push!(stack, char)
        elseif char == ')' && !isempty(stack)
            pop!(stack)
        else
            return false
        end
    end
    return isempty(stack)
end
