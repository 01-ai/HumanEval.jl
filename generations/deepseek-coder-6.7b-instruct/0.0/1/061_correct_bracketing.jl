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
    count = 0
    for bracket in brackets
        if bracket == "("
            count += 1
        elseif bracket == ")"
            count -= 1
            if count < 0
                return false
            end
        else
            return false
        end
    end
    return count == 0
end
