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
    # Check if n is less than the smallest possible sum of four even numbers
    if n < 8
        return false
    end

    # Since we are looking for a sum of exactly four even numbers,
    # n must be even to be expressible in such a way.
    return n % 2 == 0
end
