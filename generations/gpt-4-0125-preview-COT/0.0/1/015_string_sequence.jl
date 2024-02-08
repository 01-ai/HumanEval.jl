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
    # Step 1: Initialize an empty string
    result = ""
    
    # Step 2: Loop through numbers from 0 to `n`
    for i in 0:n
        # Convert number to string and append to the result
        # Add a space after each number except for the last one
        result *= "$i"
        if i < n
            result *= " "
        end
    end
    
    # Step 3: Return the final string
    return result
end
