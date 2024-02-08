"""
string_sequence(n::Int)::String

Return a string containing space-delimited numbers starting from 0 upto `n`
inclusive.

# Examples

```jldoctest
julia> string_sequence(0)
"0"

julia> string_sequence(5)
"0 1 2 3 4 5"
```
"""
function string_sequence(n::Int)::String
    # Check if n is non-negative
    if n < 0
        throw(DomainError(n, "Input must be non-negative"))
    end

    # Initialize an empty string
    result = ""

    # Iterate from 0 to n
    for i in 0:n
        # Append the current number to the result string
        result *= string(i) * " "
    end

    # Remove the trailing space
    result = rstrip(result)

    return result
end
