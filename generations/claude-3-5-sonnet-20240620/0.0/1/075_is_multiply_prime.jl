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
    # Function to check if a number is prime
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

    # Function to find prime factors
    function prime_factors(n::Int)::Vector{Int}
        factors = Int[]
        for i in 2:n
            while n % i == 0 && is_prime(i)
                push!(factors, i)
                n ÷= i
            end
            if n == 1
                break
            end
        end
        return factors
    end

    # Main logic
    if a <= 1 || a >= 100
        return false
    end

    factors = prime_factors(a)
    return length(factors) == 3 && prod(factors) == a
end
