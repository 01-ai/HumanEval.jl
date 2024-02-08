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
    # Step 2: Initialize an empty string to store the result
    result = ""
    
    # Step 3: Loop through each character in the string `s`
    for c in s
        # Step 4, 5, 6: Check the case of the character and flip it
        if islower(c)
            result *= uppercase(c)  # Step 6: Convert to uppercase
        elseif isupper(c)
            result *= lowercase(c)  # Step 5: Convert to lowercase
        else
            result *= c  # Step 7: Append non-alphabetic characters as is
        end
    end
    
    # Step 8: Return the result string
    return result
end
