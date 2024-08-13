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
    # A number can be expressed as the sum of four positive even numbers
    # if and only if it is >= 8 and is even.
    # This is because the smallest sum of four positive even numbers is 2+2+2+2=8.
    return n >= 8 && n % 2 == 0
end
