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
    # Check if n is less than or equal to 1
    if n <= 1
        throw(ArgumentError("n must be greater than 1"))
    end

    # Start with the smallest prime number
    factor = 2

    # Loop until n is fully factored
    while factor <= n
        # If factor is a divisor of n, divide n by factor as many times as possible
        if isinteger(n / factor)
            n ÷= factor
        else
            # If factor is not a divisor, increment factor
            # If factor is 2, increment to 3 (next prime), otherwise increment by 2 (skip even numbers)
            factor = factor == 2 ? 3 : factor + 2
        end
    end

    # The last factor is the largest prime factor
    return factor
end

# Example usage
# println(largest_prime_factor(13195))  # Output: 29
# println(largest_prime_factor(2048))   # Output: 2
