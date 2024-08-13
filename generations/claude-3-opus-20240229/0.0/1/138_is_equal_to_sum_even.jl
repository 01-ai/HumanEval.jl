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
    # Check if n is less than 8
    if n < 8
        return false
    end

    # Check if n is odd
    if n % 2 != 0
        return false
    end

    # Check if n can be written as the sum of 4 positive even numbers
    for a in 2:2:n-6
        for b in a:2:n-4-a
            for c in b:2:n-2-a-b
                d = n - a - b - c
                if d % 2 == 0 && d >= c
                    return true
                end
            end
        end
    end

    return false
end
