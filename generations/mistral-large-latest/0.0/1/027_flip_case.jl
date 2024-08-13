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
    out = ""
    for c in s
        if islowercase(c)
            out *= uppercase(c)
        elseif isuppercase(c)
            out *= lowercase(c)
        else
            out *= c
        end
    end
    return out
end
