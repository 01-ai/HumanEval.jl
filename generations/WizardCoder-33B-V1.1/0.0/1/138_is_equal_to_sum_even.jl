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
    if n < 8
        return false
    elseif n % 2 == 0
        return true
    else
        return false
    end
end

# Test cases
println(is_equal_to_sum_even(4)) # false
println(is_equal_to_sum_even(6)) # false
println(is_equal_to_sum_even(8)) # true

# Explanation:
# 4 can't be written as the sum of exactly 4 positive even numbers.
# 6 can't be written as the sum of exactly 4 positive even numbers.
# 8 can be written as the sum of exactly 4 positive even numbers: 2 + 2 + 2 + 2. 
