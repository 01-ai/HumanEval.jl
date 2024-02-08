"""
    largest_prime_factor(n::Int)::Int

Return the largest prime factor of `n`. Assume `n > 1` and is not a prime.

# Examples

```jldoctest
julia> largest_prime_factor(13195)
29

julia> largest_prime_factor(2048)
2
```
"""


function largest_prime_factor(n::Int)::Int
    i = 2
    while i * i <= n
        if n % i:
            n = div(n, i)
        else
            i += 1
        end
    end
    return n
end

# Test the function
println(largest_prime_factor(13195))  # Output: 29
println(largest_prime_factor(2048))  # Output: 2

# Explanation:
# The function works by dividing the input number by a starting divisor of 2. If the number is divisible by the divisor, it divides the number by the divisor and continues the process with the quotient. If the number is not divisible by the divisor, it increments the divisor by 1. The process continues until the divisor squared is greater than the number. At this point, the number is the largest prime factor. 