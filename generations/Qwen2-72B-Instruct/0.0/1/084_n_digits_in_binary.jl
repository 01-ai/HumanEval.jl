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
    # Convert the integer to binary and then to a string
    binary_str = string(base(2, N))
    
    # Sum the digits in the binary string
    sum_digits = sum(parse(Int, digit) for digit in binary_str)
    
    # Return the sum as a binary string
    return string(base(2, sum_digits))
end
