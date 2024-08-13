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
    # Use the map function to apply a transformation to each character in the string
    return map(c -> islower(c) ? uppercase(c) : lowercase(c), s)
end
