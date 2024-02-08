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
    binary_representation = string(N, base = 2)
    return sum(parse(Int, digit) for digit in binary_representation)
end

# Test cases
println(n_digits_in_binary(1000)) # "1"
println(n_digits_in_binary(150))  # "110"
println(n_digits_in_binary(147))  # "1100" 
