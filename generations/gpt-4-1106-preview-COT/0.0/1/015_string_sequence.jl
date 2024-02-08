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
    # Step 1: Check if `n` is non-negative
    if n < 0
        throw(ArgumentError("n must be a non-negative integer"))
    end

    # Step 2: Initialize an empty string
    sequence_str = ""

    # Step 3: Loop from 0 to `n` and build the sequence string
    for i in 0:n
        sequence_str *= "$i "
    end

    # Step 4: Trim the trailing space
    sequence_str = chop(sequence_str)

    # Step 5: Return the sequence string
    return sequence_str
end
