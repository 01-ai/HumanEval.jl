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
    flipped = ""
    for char in s
        if islowercase(char)
            flipped *= uppercase(char)
        elseif isuppercase(char)
            flipped *= lowercase(char)
        else
            flipped *= char
        end
    end
    return flipped
end
