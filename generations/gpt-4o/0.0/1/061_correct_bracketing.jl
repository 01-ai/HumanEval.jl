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
    for char in brackets
        if char == '('
            balance += 1
        elseif char == ')'
            balance -= 1
        end
        if balance < 0
            return false
        end
    end
    return balance == 0
end