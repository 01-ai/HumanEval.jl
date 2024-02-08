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
    result = ""
    for char in s
        if islowercase(char)
            result *= uppercase(char)
        elseif isuppercase(char)
            result *= lowercase(char)
        else
            result *= char
        end
    end
    return result
end
