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
    # Step 1: Check constraints
    if N < 0 || N > 10000
        error("Input N is out of the allowed range (0 ≤ N ≤ 10000).")
    end

    # Step 2: Convert N to binary representation as a string
    binary_str = string(N, base=2)

    # Step 3: Calculate the sum of the digits in the binary representation
    digit_sum = sum(parse(Int, c) for c in binary_str)

    # Step 4: Convert the sum back to a string and return it
    return string(digit_sum)
end
println(n_digits_in_binary(1000)) # Should print "1"
println(n_digits_in_binary(150))  # Should print "110"
println(n_digits_in_binary(147))  # Should print "1100"
