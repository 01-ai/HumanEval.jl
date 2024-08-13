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
    # The smallest even number is 2. If n is less than 2 * 4, it cannot be
    # represented as the sum of 4 positive even numbers.
    if n < 8
        return false
    end
    
    # Subtract the smallest possible sum of 4 even numbers (2+2+2+2) from n
    # to find the remainder that needs to be evenly divisible by 2, 4 times.
    remainder = n - 8
    
    # Check if the remainder is divisible by 2 four times
    if remainder % 8 == 0
        return true
    else
        return false
    end
end

# Example usage:
# julia> is_equal_to_sum_even(4)
# false
# julia> is_equal_to_sum_even(6)
# false
# julia> is_equal_to_sum_even(8)
# true
