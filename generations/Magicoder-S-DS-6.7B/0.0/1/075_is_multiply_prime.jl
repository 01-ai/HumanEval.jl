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
    if a < 2
        return false
    end

    function is_prime(n::Int)::Bool
        if n < 2
            return false
        end
        for i in 2:isqrt(n)
            if n % i == 0
                return false
            end
        end
        return true
    end

    factors = Int[]
    for i in 2:a
        if a % i == 0 && is_prime(i)
            pushfirst(factors, i)
            a = a � i
        end
    end

    return length(factors) == 3 && prod(factors) == a
end
