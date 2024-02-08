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
    # Convert N to its binary representation as a string
    binary_str = string(N, base=2)
    
    # Sum the digits of the binary representation
    digit_sum = sum([parse(Int, char) for char in binary_str])
    
    # Convert the sum back to a binary string and return
    return string(digit_sum, base=2)
end

# Examples to test the function
println(n_digits_in_binary(1000))  # Output: "1"
println(n_digits_in_binary(150))   # Output: "110"
println(n_digits_in_binary(147))   # Output: "1100"
