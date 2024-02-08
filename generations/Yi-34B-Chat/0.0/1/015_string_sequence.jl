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
    # Initialize an empty string
    result = ""

    # Loop over the range from 0 to n inclusive
    for i in 0:n
        # Append the current number to the result string
        result *= "$i "
    end

    # Remove the trailing space
    return result[1:end-1]
end
