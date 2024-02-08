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
    return map(s) do c
        if islowercase(c)
            uppercase(c)
        else
            lowercase(c)
        end
    end
end
