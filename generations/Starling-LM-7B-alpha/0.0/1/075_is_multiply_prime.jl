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
    # Check if a is divisible by 3, 5, or 7
    if a % 3 == 0 || a % 5 == 0 || a % 7 == 0
        return false
    end

    # Check if a is less than 100
    if a < 100
        # Generate all prime numbers up to a
        primes = [2, 3, 5, 7]
        for i in 8:(floor(Int, sqrt(a)) - 1)
            if isprime(i)
                push!(primes, i)
            end
        end

        # Check if a can be expressed as the product of three primes in the list
        for i in 1:length(primes)
            for j in (i+1):length(primes)
                product = primes[i] * primes[j]
                if product <= a
                    if a % product == 0
                        return true
                    end
                else
                    break
                end
            end
        end
    end

    return false
end

function isprime(n::Int)::Bool
    if n <= 1
        return false
    end
    if n <= 3
        return true
    end
    if n % 2 == 0 || n % 3 == 0
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

# Test cases
println(is_multiply_prime(30))  # 30 = 2 * 3 * 5
println(is_multiply_prime(45))  # 45 = 3 * 3 * 5
println(is_multiply_prime(72))  # 72 = 2 * 2 * 3 * 3
println(is_multiply_prime(100)) # 100 = 2 * 2 * 5 * 5
println(is_multiply_prime(101)) # 101 is not the product of three primes
println(is_multiply_prime(1000)) # 1000 is not the product of three primes
