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
    return String([isuppercase(c) ? lowercase(c) : uppercase(c) for c in s])
end

# Example usage
println(flip_case("Hello"))  # Output should be "hELLO"
