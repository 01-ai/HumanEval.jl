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
    for c in s
        if islowercase(c)
            append!(result, uppercase(c))
        else
            append!(result, lowercase(c))
        end
    end
    return result
end
