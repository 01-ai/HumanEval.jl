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
    stack = Char[]
    for bracket in brackets
        if bracket == '('
            push!(stack, bracket)
        elseif bracket == ')'
            if isempty(stack)
                return false
            end
            pop!(stack)
        end
    end
    return isempty(stack)
end
