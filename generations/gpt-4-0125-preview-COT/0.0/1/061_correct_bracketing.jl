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
    # Step 1: Initialize a counter
    counter = 0
    
    # Step 2: Iterate through the string
    for bracket in brackets
        # Step 2a: If an opening bracket is found
        if bracket == '('
            counter += 1
        # Step 2b: If a closing bracket is found
        elseif bracket == ')'
            counter -= 1
            # Step 2c: Check for early closure
            if counter < 0
                return false
            end
        end
    end
    
    # Step 3: Final check
    return counter == 0
end
