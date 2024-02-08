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
    # Check if the given number is greater than or equal to 10
    if n < 10
        return false
    end

    # Check if the given number is divisible by 4
    if n % 4 != 0
        return false
    end

    # If both conditions are met, return true
    return true
end
