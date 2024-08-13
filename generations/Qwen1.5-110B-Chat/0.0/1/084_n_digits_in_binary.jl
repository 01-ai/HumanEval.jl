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
    # Convert the integer to binary and then count the sum of '1's to represent the total sum of its digits in binary
    binary_representation = string(bin(N))
    sum_of_digits_in_binary = sum(d -> d == '1', binary_representation)
    return string(sum_of_digits_in_binary)
end
