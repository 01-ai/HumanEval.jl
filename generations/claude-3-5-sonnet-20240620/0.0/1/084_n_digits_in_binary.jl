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
    if N < 0 || N > 10000
        throw(ArgumentError("N must be between 0 and 10000"))
    end

    # Convert N to binary
    binary = string(N, base=2)

    # Sum the digits
    digit_sum = sum(digit - '0' for digit in binary)

    # Convert the sum back to binary and return as a string
    return string(digit_sum, base=2)
end
