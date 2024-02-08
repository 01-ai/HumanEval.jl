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
    # Initialize an empty string to store the final string
    result = ""

    # Iterate over the range 0 to n
    for i in 0:n
        # Append the current number to result and a space
        result *= string(i) * " "
    end

    # Remove the last space from result to avoid trailing space
    result = result[1:end-1]

    # Return the final string
    return result
end
