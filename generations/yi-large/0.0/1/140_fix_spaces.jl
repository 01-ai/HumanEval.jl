"""
    fix_spaces(s::String)::String

Given a string text, replace all spaces in it with underscores, and if a string
has two or more consecutive spaces, then replace all consecutive spaces with -

# Examples

```jldoctest
julia> fix_spaces("Example")
"Example"

julia> fix_spaces("Example 1")
"Example_1"

julia> fix_spaces(" Example 2")
"_Example_2"

julia> fix_spaces(" Example   3")
"_Example-3"
```
"""
function fix_spaces(s::String)::String
    # Initialize a variable to hold the result
    result = ""
    
    # Initialize a flag to track if we are within a sequence of spaces
    in_spaces = false
    
    # Iterate over each character in the string
    for c in s
        # Check if the character is a space
        if c == ' '
            # If we are not already processing spaces, add an underscore
            if !in_spaces
                result *= "_"
                in_spaces = true
            else
                # If we are already processing spaces, add a hyphen instead
                result *= "-"
            end
        else
            # If the character is not a space, add it to the result as-is
            # and reset the space tracking flag
            result *= c
            in_spaces = false
        end
    end
    
    # Return the modified string
    return result
end

# Example usage and tests
# println(fix_spaces("Example"))        # "Example"
# println(fix_spaces("Example 1"))      # "Example_1"
# println(fix_spaces(" Example 2"))     # "_Example_2"
# println(fix_spaces(" Example   3"))   # "_Example-3"
