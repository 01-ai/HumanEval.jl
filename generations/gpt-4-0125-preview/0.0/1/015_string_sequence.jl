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
    # Create a range from 0 to n
    num_range = 0:n
    
    # Convert each number in the range to a string and join them with spaces
    return join(string.(num_range), " ")
end
