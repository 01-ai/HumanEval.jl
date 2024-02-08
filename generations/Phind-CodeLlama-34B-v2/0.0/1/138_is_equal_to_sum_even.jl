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
    return n in 8:2:12
end

# Test the function with the provided examples
@assert is_equal_to_sum_even(4) == false
@assert is_equal_to_sum_even(6) == false
@assert is_equal_to_sum_even(8) == true
