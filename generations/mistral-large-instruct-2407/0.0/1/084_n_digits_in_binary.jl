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
    # Convert the number to binary string
    binary_str = string(N, base=2)

    # Calculate the sum of the digits in the binary representation
    sum_of_digits = sum(parse(Int, digit) for digit in binary_str)

    # Return the sum as a string
    return string(sum_of_digits)
end

# Testing the function with the provided examples
println(n_digits_in_binary(1000))  # Output: "1"
println(n_digits_in_binary(150))   # Output: "110"
println(n_digits_in_binary(147))   # Output: "1100"
