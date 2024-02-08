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
    if n < 4
        return false
    end

    for i in 2:n-3
        for j in 2:n-3
            for k in 2:n-3
                for l in 2:n-3
                    if i + j + k + l == n
                        return true
                    end
                end
            end
        end
    end

    return false
end
