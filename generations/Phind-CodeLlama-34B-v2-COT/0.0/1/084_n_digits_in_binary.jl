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
    # Convert N to a string
    N_str = string(N)
    
    # Initialize binary_sum
    binary_sum = ""
    
    # Iterate over each character in N_str
    for digit in N_str
        # Convert digit back to an integer and calculate its binary representation
        binary_digit = string(digits(parse(Int, digit), base=2, pad=3))[end-2:end]
        
        # Add binary_digit to binary_sum
        binary_sum *= binary_digit
    end
    
    return binary_sum
end
