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
    # Since the smallest sum of 4 positive even numbers is 2 + 2 + 2 + 2 = 8,
    # any number less than 8 cannot be written as such a sum.
    if n < 8
        return false
    end

    # If n is even and greater than or equal to 8, it can always be written as the sum of 4 even numbers.
    # For example, if n is even and greater than 8, we can write it as (n - 6) + 2 + 2 + 2.
    # Since (n - 6) is even and positive (because n >= 8), this decomposition is valid.
    return n % 2 == 0
end
println(is_equal_to_sum_even(4))  # Expected output: false
println(is_equal_to_sum_even(6))  # Expected output: false
println(is_equal_to_sum_even(8))  # Expected output: true
