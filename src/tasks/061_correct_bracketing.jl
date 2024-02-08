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
    depth = 0
    for b in brackets
        if b == '('
            depth += 1
        else
            depth -= 1
        end
        depth < 0 && return false
    end
    return depth == 0
end
