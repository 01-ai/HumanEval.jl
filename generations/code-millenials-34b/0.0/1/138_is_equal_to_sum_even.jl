"""
    is_equal_to_sum_even(n::Int)::Bool

Evaluate whether the given number `n` can be written as the sum of exactly 4
positive even numbers.

# Example

```jldoctest
julia> is_equal_to_sum_even(4)
false

julia> is_equal_to_sum_even(6)
false

julia> is_equal_to_sum_even(8)
true
```
"""


function is_equal_to_sum_even(n::Int)::Bool
    # If n is less than 10, it can't be written as the sum of 4 even numbers
    n < 10 && return false

    # If n is even, we can write it as the sum of 4 even numbers by pairing 2 and 2
    n % 2 == 0 && return true

    # If n is odd, we can write it as the sum of 4 even numbers by pairing 2 and 3
    return true
end

# Test cases
println(is_equal_to_sum_even(4))  # Expected output: false
println(is_equal_to_sum_even(6))  # Expected output: false
println(is_equal_to_sum_even(8))  # Expected output: true

