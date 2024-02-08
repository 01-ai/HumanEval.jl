"""
    flip_case(s::String)::String

For a given string, flip lowercase characters to uppercase and uppercase to lowercase.

# Examples

```jldoctest
julia> flip_case("Hello")
"hELLO"
```
"""

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
    # Create an empty string to store the result
    result = ""
    
    # Iterate through each character in the string
    for c in s
        # Check if the character is uppercase
        if isuppercase(c)
            # Convert to lowercase and append to result
            result *= lowercase(c)
        else
            # Convert to uppercase and append to result
            result *= uppercase(c)
        end
    end
    
    return result
end
