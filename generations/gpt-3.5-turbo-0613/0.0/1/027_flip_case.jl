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
    for c in s
        if islower(c)
            flipped *= uppercase(c)
        elseif isupper(c)
            flipped *= lowercase(c)
        else
            flipped *= c
        end
    end
    return flipped
end
