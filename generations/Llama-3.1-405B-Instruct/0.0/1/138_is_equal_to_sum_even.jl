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
    # If n is less than 8, it cannot be written as the sum of 4 positive even numbers
    if n < 8
        return false
    end
    
    # If n is not divisible by 2, it cannot be written as the sum of even numbers
    if n % 2 != 0
        return false
    end
    
    # Try all possible combinations of 4 even numbers that sum up to n
    for i in 2:2:(n-6)
        for j in 2:2:(n-i-4)
            for k in 2:2:(n-i-j-2)
                l = n - i - j - k
                if l % 2 == 0 && l > 0
                    return true
                end
            end
        end
    end
    
    # If no combination is found, return false
    return false
end
function is_equal_to_sum_even(n::Int)::Bool
    if n < 8 || n % 2 != 0
        return false
    end
    
    n_div_2 = n ÷ 2
    return n_div_2 >= 8
end
