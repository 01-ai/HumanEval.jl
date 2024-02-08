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
    function is_prime(n)
        if n <= 1
            return false
        end
        for i in 2:isqrt(n)
            if n % i == 0
                return false
            end
        end
        return true
    end

    function find_prime_factors(n)
        factors = []
        for i in 2:n
            if n % i == 0 && is_prime(i)
                push!(factors, i)
            end
        end
        return factors
    end

    prime_factors = find_prime_factors(a)
    if length(prime_factors) == 3
        return true
    else
        return false
    end
end
