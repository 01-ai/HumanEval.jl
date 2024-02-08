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
    # Step 1: Convert N to its binary representation
    binary_representation = bin(N)
    
    # Step 2: Sum the digits of the binary representation
    sum_of_digits = sum([parse(Int, char) for char in binary_representation])
    
    # Step 3: Convert the sum to a string
    sum_as_string = string(sum_of_digits)
    
    # Step 4: Return the result
    return sum_as_string
end
