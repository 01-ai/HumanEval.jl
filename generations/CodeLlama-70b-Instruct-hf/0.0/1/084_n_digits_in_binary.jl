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
    # Convert the integer to binary string
    binary_str = string(bin(N))

    # Remove the leading "0b"
    binary_str = binary_str[3:end]

    # Initialize the sum of digits
    sum_of_digits = 0

    # Iterate through the binary string and add the digits
    for digit in binary_str
        sum_of_digits += parse(Int, digit)
    end

    # Convert the sum of digits to binary string
    return string(bin(sum_of_digits))
end
