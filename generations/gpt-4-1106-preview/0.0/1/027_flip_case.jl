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
    return join([islower(c) ? uppercase(c) : lowercase(c) for c in s])
end

# Helper functions to check if a character is lowercase or uppercase
islower(c::Char) = 'a' <= c <= 'z'
isupper(c::Char) = 'A' <= c <= 'Z'

# Example usage
println(flip_case("Hello"))  # Output should be "hELLO"
