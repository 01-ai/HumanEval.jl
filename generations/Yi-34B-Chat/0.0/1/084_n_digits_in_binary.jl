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
    # Initialize an empty string to store the binary representation of N
    binary_str = ""
    
    # Loop through the binary representation of N
    while N > 0
        # Get the last digit of N in binary
        digit = N % 2
        
        # Append it to the binary_str
        binary_str = string(digit) * binary_str
        
        # Remove the last digit from N
        N = N ÷ 2
    end
    
    # Return the total sum of the digits in binary
    return binary_str
end
