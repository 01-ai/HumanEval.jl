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
    open_brackets = 0
    for bracket in brackets
        if bracket == '('
            open_brackets += 1
        elseif bracket == ')'
            open_brackets -= 1
        end
        if open_brackets < 0
            return false
        end
    end
    return open_brackets == 0
end

# Test cases
println(correct_bracketing("(")) # false
println(correct_bracketing("()")) # true
println(correct_bracketing("(()())")) # true
println(correct_bracketing(")(()")) # false 
