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
    # Initialize a counter for the brackets
    bracket_counter = 0

    # Iterate through each character in the string
    for bracket in brackets
        # If it's an opening bracket, increment the counter
        if bracket == '<'
            bracket_counter += 1
        # If it's a closing bracket, decrement the counter
        elseif bracket == '>'
            bracket_counter -= 1
        end

        # If at any point the counter goes negative, return false
        if bracket_counter < 0
            return false
        end
    end

    # If the counter is zero, all brackets are correctly matched
    return bracket_counter == 0
end
