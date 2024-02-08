"""
    correct_angle_bracketing(brackets::String)::Bool

Brackets is a string of "<" and ">". Return true if every opening bracket has a
corresponding closing bracket.

# Examples

```jldoctest
julia> correct_angle_bracketing("<")
false

julia> correct_angle_bracketing("<>")
true

julia> correct_angle_bracketing("<<><>>")
true

julia> correct_angle_bracketing("><<>")
false
```
"""
function correct_angle_bracketing(brackets::String)::Bool
    # Step 1: Initialize the counter
    balance_counter = 0

    # Step 2: Iterate through each character in the string
    for bracket in brackets
        if bracket == '<'
            balance_counter += 1
        elseif bracket == '>'
            balance_counter -= 1
            # If the counter becomes negative, return false immediately
            if balance_counter < 0
                return false
            end
        end
    end

    # Step 3: Check the final value of the counter
    return balance_counter == 0
end
