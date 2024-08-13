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
function is_prime(n::Int)
    if n < 2
        return false
    elseif n < 4
        return true
    elseif n % 2 == 0
        return false
    else
        for d in 3:2:isqrt(n)
            if n % d == 0
                return false
            end
        end
        return true
    end
end

function is_multiply_prime(a::Int)
    if a < 100 && a > 1
        for i in 2:isqrt(a)
            if is_prime(i)
                for j in i:isqrt(a)
                    if is_prime(j) && is_prime(a ÷ (i * j))
                        return true
                    end
                end
            end
        end
    end
    return false
end
