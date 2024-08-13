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
    if N < 0 || N > 10000
        throw(DomainError(N, "N must be between 0 and 10000."))
    end

    # Convert the number to binary and then to a string
    binary_string = bin(N)

    # Remove the leading "0b" from the binary string
    binary_digits = binary_string[3:end]

    # Sum the digits
    sum_of_digits = sum(Int(digit) for digit in binary_digits)

    return string(sum_of_digits)
end

# Test cases
println(n_digits_in_binary(1000)) # Expected: "1"
println(n_digits_in_binary(150))  # Expected: "110"
println(n_digits_in_binary(147))  # Expected: "1100"
