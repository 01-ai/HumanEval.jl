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
    flipped_string = ""
    for char in s
        if islowercase(char)
            flipped_string *= uppercase(char)
        elseif isuppercase(char)
            flipped_string *= lowercase(char)
        else
            flipped_string *= char
        end
    end
    return flipped_string
end

# Example usage
julia> flip_case("Hello")
"hELLO"
