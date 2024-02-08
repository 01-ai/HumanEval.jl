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
    # Step 1: Initialize an empty string to accumulate results
    flipped_string = ""
    
    # Step 2: Iterate through each character in the input string
    for char in s
        # Step 3: Check the case of each character and flip it
        if islower(char)
            flipped_string *= uppercase(char)  # Convert to uppercase and append
        elseif isupper(char)
            flipped_string *= lowercase(char)  # Convert to lowercase and append
        else
            flipped_string *= char  # Append the character as is
        end
    end
    
    # Step 5: Return the accumulator string
    return flipped_string
end
