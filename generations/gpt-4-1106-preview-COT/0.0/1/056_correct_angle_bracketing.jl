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
    open_bracket_count = 0

    # Step 2: Iterate over each character in the string
    for bracket in brackets
        # Step 3: Check for opening bracket
        if bracket == '<'
            open_bracket_count += 1
        # Step 4: Check for closing bracket
        elseif bracket == '>'
            open_bracket_count -= 1
            # Step 5: Check if there is an unmatched closing bracket
            if open_bracket_count < 0
                return false
            end
        end
    end

    # Step 6: Check if all opening brackets have been matched
    return open_bracket_count == 0
end
