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
    chars = collect(s)
    for i in 1:length(chars)
        if islower(chars[i])
            chars[i] = uppercase(chars[i])
        elseif isupper(chars[i])
            chars[i] = lowercase(chars[i])
        end
    end
    return join(chars)
end

println(flip_case("Hello"))  # Output: "hELLO"
println(flip_case("World"))  # Output: "wORLD"
println(flip_case("JULIA"))  # Output: "julia"
println(flip_case("123"))    # Output: "123"
println(flip_case(""))       # Output: ""

# Test cases
@assert flip_case("Hello") == "hELLO"
@assert flip_case("World") == "wORLD"
@assert flip_case("JULIA") == "julia"
@assert flip_case("123")   == "123"
@assert flip_case("")      == ""

