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
    # Your code goes here
    return false
end
function is_equal_to_sum_even(n::Int)::Bool
    if n % 4 != 0
        return false
    end

    # Find the two pairs of consecutive even numbers whose sum is n
    # You can use a loop or a more efficient method like a binary search
    # to find these pairs

    # Check if the sum of these pairs is equal to n

    return true
end
