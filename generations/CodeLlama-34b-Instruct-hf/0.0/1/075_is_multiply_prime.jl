"""
    is_multiply_prime(a::Int)::Bool

Write a function that returns `true` if the given number is the multiplication
of 3 prime numbers and false otherwise. Knowing that `a` is less then 100.

# Examples

```jldoctest
julia> is_multiply_prime(30)  # 30 = 2 * 3 * 5
true
```
"""
function is_multiply_prime(a::Int)::Bool
    if a < 100
        for i in 2:a-1
            if a % i == 0
                for j in 2:i-1
                    if i % j == 0
                        for k in 2:j-1
                            if j % k == 0
                                return true
                            end
                        end
                    end
                end
            end
        end
    end
    return false
end
