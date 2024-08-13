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

function generate_primes(limit::Int)
    primes = Int[]
    for i in 2:limit
        if is_prime(i)
            push!(primes, i)
        end
    end
    return primes
end

function is_multiply_prime(a::Int)::Bool
    primes = generate_primes(31)  # Generate primes up to 31
    n = length(primes)
    for i in 1:n
        for j in i:n
            for k in j:n
                if primes[i] * primes[j] * primes[k] == a
                    return true
                end
            end
        end
    end
    return false
end
