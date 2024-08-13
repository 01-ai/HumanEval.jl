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
    # Since the smallest sum of four positive even numbers is 2 + 2 + 2 + 2 = 8,
    # any number less than 8 cannot be expressed as the sum of four positive even numbers.
    if n < 8
        return false
    end

    # Check if n is even because the sum of even numbers is always even.
    if n % 2 != 0
        return false
    end

    # Check if n - 6 is even and greater than or equal to 2 (smallest even number)
    # because we can always represent n as 2 + 2 + 2 + (n - 6) when n >= 8 and n is even.
    return (n - 6) >= 2 && (n - 6) % 2 == 0
end
