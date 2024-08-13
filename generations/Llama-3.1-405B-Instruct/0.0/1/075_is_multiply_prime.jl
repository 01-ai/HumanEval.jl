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
    # Define a helper function to check if a number is prime
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

    # Iterate over all possible combinations of three numbers that multiply to a
    for i in 2:a
        if a % i != 0
            continue
        end
        for j in 2:(a ÷ i)
            if (a ÷ i) % j != 0
                continue
            end
            k = (a ÷ i) ÷ j
            # Check if all three numbers are prime
            if is_prime(i) && is_prime(j) && is_prime(k)
                return true
            end
        end
    end
    return false
end