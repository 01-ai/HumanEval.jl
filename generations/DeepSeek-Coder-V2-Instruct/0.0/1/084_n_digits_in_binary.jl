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
    # Convert the integer to a string to iterate over its digits
    digits = string(N)
    
    # Initialize the sum of digits
    sum_of_digits = 0
    
    # Iterate over each character in the string representation of N
    for digit in digits
        # Convert the character to an integer and add it to the sum
        sum_of_digits += parse(Int, digit)
    end
    
    # Convert the sum of digits to binary and return it as a string
    return string(sum_of_digits, base=2)
end
