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
    # Convert the number to binary
    binary_representation = string(N, base=2)
    
    # Calculate the sum of the binary digits
    sum_of_digits = sum(parse(Int, char) for char in binary_representation)
    
    # Convert the sum back to binary
    return string(sum_of_digits, base=2)
end
