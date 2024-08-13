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
    bracket_count = 0

    # Iterate over each character in the string
    for char in brackets
        # If the character is an opening bracket, increment the counter
        if char == '<'
            bracket_count += 1
        # If the character is a closing bracket, decrement the counter
        elseif char == '>'
            bracket_count -= 1
            # If the counter goes negative, it means there was an unmatched closing bracket
            if bracket_count < 0
                return false
            end
        end
    end

    # After iterating through all characters, the counter should be 0 if all brackets are matched
    return bracket_count == 0
end

# Test cases
println(correct_angle_bracketing("<")) # false
println(correct_angle_bracketing("<>")) # true
println(correct_angle_bracketing("<<><>>")) # true
println(correct_angle_bracketing("><<>")) # false