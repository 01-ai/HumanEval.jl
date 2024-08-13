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
    # Check if the input is within the constraints
    if !(0 <= N <= 10000)
        throw(DomainError(N, "N must be in the range 0 to 10000."))
    end

    # Convert the number to binary and sum the digits
    binary_str = string(base(2, N), base = 2)
    sum_digits = sum([parse(Int, digit) for digit in binary_str])

    # Return the sum as a string
    return string(sum_digits)
end
