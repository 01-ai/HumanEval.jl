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
    end
    
    for i in 2:2:n-6
        for j in i:2:n-4
            for k in j:2:n-2
                if i + j + k + (n - i - j - k) == n
                    return true
                end
            end
        end
    end
    
    return false
end
