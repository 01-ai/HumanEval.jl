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
    # Convert the integer to binary and remove the "0b" prefix
    binary = string(N, base = 2)[3:end]

    # Calculate the sum of the digits in the binary representation
    sum_of_digits = sum(parse(Int, digit) for digit in binary)

    # Convert the sum back to binary
    return string(sum_of_digits, base = 2)
end
