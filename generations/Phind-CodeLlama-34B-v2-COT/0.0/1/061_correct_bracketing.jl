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
    for bracket in brackets
        if bracket == '('
            push!(stack, bracket)
        elseif bracket == ')'
            if isempty(stack) || stack[end] != '('
                return false
            else
                pop!(stack)
            end
        end
    end
    return isempty(stack)
end
