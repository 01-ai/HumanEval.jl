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
    # Helper function to check if a number is prime
    function is_prime(n::Int)::Bool
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

    # Helper function to find all prime factors of a number
    function prime_factors(n::Int)::Vector{Int}
        factors = Int[]
        for i in 2:n
            while n % i == 0 && is_prime(i)
                push!(factors, i)
                n ÷= i
            end
        end
        return factors
    end

    # Get the prime factors of the given number
    factors = prime_factors(a)

    # Check if the number of prime factors is exactly 3
    return length(factors) == 3
end

# Testing the function
println(is_multiply_prime(30))  # Should return true
println(is_multiply_prime(60))  # Should return false
println(is_multiply_prime(105)) # Should return true (105 = 3 * 5 * 7)
println(is_multiply_prime(1))   # Should return false
