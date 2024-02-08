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
    primes = [2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53, 59, 61, 67, 71, 73, 79, 83, 89, 97]
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

# Testing the function
println(is_multiply_prime(30))  # true
println(is_multiply_prime(50))  # false
