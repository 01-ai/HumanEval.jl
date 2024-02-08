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
    balance = 0
    for bracket in brackets
        if bracket == '('
            balance += 1
        elseif bracket == ')'
            balance -= 1
        end
        if balance < 0
            return false  # A closing bracket appears without an opening bracket
        end
    end
    return balance == 0  # True if balanced, false otherwise
end
