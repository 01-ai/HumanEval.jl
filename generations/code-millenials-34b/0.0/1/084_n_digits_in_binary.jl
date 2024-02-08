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
    # Convert the integer to binary
    binary_N = string(N, base=2)

    # Sum the digits in binary
    sum_digits = sum(parse(Int, char) for char in string(binary_N))

    # Return the sum as a binary string
    return string(sum_digits, base=2)
end

# Test cases
println(n_digits_in_binary(1000))  # Expected output: "1"
println(n_digits_in_binary(150))   # Expected output: "110"
println(n_digits_in_binary(147))   # Expected output: "1100"

