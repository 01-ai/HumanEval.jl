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
    # Check if n is less than 8 (smallest sum of 4 positive even numbers)
    if n < 8
        return false
    end
    
    # Check if n is odd (sum of 4 even numbers is always even)
    if n % 2 != 0
        return false
    end
    
    # Check if n can be represented as sum of 4 positive even numbers
    for a in 2:2:n-6
        for b in 2:2:n-a-4
            for c in 2:2:n-a-b-2
                d = n - a - b - c
                if d > 0 && d % 2 == 0
                    return true
                end
            end
        end
    end
    
    return false
end
