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
    end
    for i in 2:sqrt(n)
        if n % i == 0
            return false
        end
    end
    return true
end

function is_multiply_prime(a::Int)::Bool
    primes = [i for i in 2:100 if is_prime(i)]
    for i in 1:length(primes)
        for j in i:length(primes)
            for k in j:length(primes)
                if primes[i] * primes[j] * primes[k] == a
                    return true
                end
            end
        end
    end
    return false
end
