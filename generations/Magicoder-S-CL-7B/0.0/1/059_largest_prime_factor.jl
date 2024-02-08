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
    # Initialize the largest prime factor as 1
    largest_prime = 1

    # Divide n by 2 until n is odd
    while n % 2 == 0
        largest_prime = 2
        n = n ÷ 2
    end

    # n must be odd at this point, thus a skip of 2 can be used
    for i in range(3, stop=floor(sqrt(n)), step=2)
        while n % i == 0
            largest_prime = i
            n = n ÷ i
        end
    end

    # This condition is to handle the case when n is a prime number
    # greater than 2
    if n > 2
        largest_prime = n
    end

    return largest_prime
end
