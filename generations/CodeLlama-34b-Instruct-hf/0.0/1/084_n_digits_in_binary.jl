"""
    n_digits_in_binary(N::Int)::String

Given a positive integer N, return the total sum of its digits in binary.

@N integer Constraints: 0 ≤ N ≤ 10000.

# Examples

```jldoctest
julia> n_digits_in_binary(1000)
"1"

julia> n_digits_in_binary(150)
"110"

julia> n_digits_in_binary(147)
"1100"
```
"""
function n_digits_in_binary(N::Int)::String
    # Convert N to a binary string
    binary_string = string(N, base=2)

    # Sum the digits of the binary string
    sum = 0
    for c in binary_string
        sum += parse(Int, c)
    end

    # Return the sum as a string
    return string(sum)
end
