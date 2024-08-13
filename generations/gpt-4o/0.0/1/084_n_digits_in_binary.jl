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
    # Convert the integer N to its binary representation
    binary_representation = bitstring(N)
    
    # Sum the digits of the binary representation
    sum_of_digits = sum(c == '1' for c in binary_representation)
    
    # Return the sum as a string
    return string(sum_of_digits)
end
println(n_digits_in_binary(1000))  # Should print "1"
println(n_digits_in_binary(150))   # Should print "110"
println(n_digits_in_binary(147))   # Should print "1100"
