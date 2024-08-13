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
        elseif n <= 3
            return true
        elseif n % 2 == 0 || n % 3 == 0
            return false
        end
        i = 5
        while i * i <= n
            if n % i == 0 || n % (i + 2) == 0
                return false
            end
            i += 6
        end
        return true
    end

    # Generate a list of prime numbers less than 100
    primes = [i for i in 2:99 if is_prime(i)]

    # Check if a can be expressed as the product of exactly three primes
    for i in 1:length(primes)
        for j in i+1:length(primes)
            for k in j+1:length(primes)
                if primes[i] * primes[j] * primes[k] == a
                    return true
                end
            end
        end
    end

    return false
end
