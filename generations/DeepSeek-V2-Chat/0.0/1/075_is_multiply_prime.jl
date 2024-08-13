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

    # Count the number of prime factors
    count = 0
    for i in 2:a
        while a % i == 0
            if !is_prime(i)
                return false
            end
            count += 1
            a = div(a, i)
        end
    end

    return count == 3
end

# Examples
println(is_multiply_prime(30))  # true, because 30 = 2 * 3 * 5
println(is_multiply_prime(42))  # true, because 42 = 2 * 3 * 7
println(is_multiply_prime(10))  # false, because 10 = 2 * 5 (only 2 primes)
println(is_multiply_prime(1))   # false, because 1 is not the product of any primes
