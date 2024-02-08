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
    return join(string.(0:n), " ")
end
