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
    # Convert the number to binary and count the number of '1's
    binary_str = string(N, base=2)
    digit_sum = sum(c -> c == '1' ? 1 : 0, binary_str)
    
    # Convert the sum back to binary and return as a string
    return string(digit_sum, base=2)
end

# Examples
println(n_digits_in_binary(1000)) # Output should be "1"
println(n_digits_in_binary(150))  # Output should be "110"
println(n_digits_in_binary(147))  # Output should be "1100"
