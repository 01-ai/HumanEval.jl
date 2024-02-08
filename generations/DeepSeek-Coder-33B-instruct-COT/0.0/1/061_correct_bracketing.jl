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
    counter = 0
    for bracket in brackets
        if bracket == '('
            counter += 1
        elseif bracket == ')'
            counter -= 1
        end
        if counter < 0
            return false
        end
    end
    return counter == 0
end
