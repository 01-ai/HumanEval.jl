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
    # Initialize counters for opening and closing brackets
    open_brackets = 0
    close_brackets = 0

    # Iterate over the string and count the brackets
    for char in brackets
        if char == '('
            open_brackets += 1
        elseif char == ')'
            close_brackets += 1
        end

        # If the number of opening brackets is not equal to the number of closing brackets,
        # the string does not have correct bracketing
        if open_brackets != close_brackets
            return false
        end
    end

    # If we reach the end of the string without encountering an error, the bracketing is correct
    return open_brackets == close_brackets
end
