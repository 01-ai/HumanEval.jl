"""
    flip_case(s::String)::String

For a given string, flip lowercase characters to uppercase and uppercase to lowercase.

# Examples

```jldoctest
julia> flip_case("Hello")
"hELLO"
```
"""
function flip_case(s::String)::String
    # Create a new string to hold the flipped case
    flipped_case = ""

    # Loop through each character in the original string
    for c in s
        # If the character is uppercase, convert it to lowercase
        if isupper(c)
            flipped_case *= lowercase(c)
        # If the character is lowercase, convert it to uppercase
        elseif islower(c)
            flipped_case *= uppercase(c)
        # Otherwise, just add the character as is
        else
            flipped_case *= c
        end
    end

    # Return the flipped case string
    return flipped_case
end
