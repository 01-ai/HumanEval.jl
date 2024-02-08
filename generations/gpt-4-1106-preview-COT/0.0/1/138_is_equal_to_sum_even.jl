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
    # Step 1: Check if n is less than 8
    if n < 8
        return false
    end
    
    # Step 2: Check if n is even
    if n % 2 != 0
        return false
    end
    
    # Step 3 and 4: If n is greater than or equal to 8 and even, it can be written as the sum of four even numbers
    return true
end
println(is_equal_to_sum_even(4))  # Output: false
println(is_equal_to_sum_even(6))  # Output: false
println(is_equal_to_sum_even(8))  # Output: true
