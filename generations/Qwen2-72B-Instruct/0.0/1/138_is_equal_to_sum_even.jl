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
    # Since the smallest sum of 4 positive even numbers is 2+2+2+2=8,
    # any number less than 8 cannot be written as such a sum.
    if n < 8
        return false
    end

    # If n is even and greater than or equal to 8, it can always be written
    # as the sum of 4 even numbers. This is because we can use 2, 2, 2, and (n-6)
    # as the four numbers, and (n-6) will also be even since n is even.
    return n % 2 == 0
end
