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
    if n % 2 != 0
        return false
    end
    for i in 1:2:n
        for j in 1:2:n
            for k in 1:2:n
                for l in 1:2:n
                    if i + j + k + l == n
                        return true
                    end
                end
            end
        end
    end
    return false
end
