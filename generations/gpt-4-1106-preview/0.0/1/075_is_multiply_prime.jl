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
    # Helper function to check if a number is prime
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

    # Check if the number is a product of three prime numbers
    for i in 2:a
        if is_prime(i) && a % i == 0
            for j in i:a
                if is_prime(j) && a % (i * j) == 0
                    k = a ÷ (i * j)
                    if is_prime(k) && i * j * k == a
                        return true
                    end
                end
            end
        end
    end
    return false
end

# Example usage
println(is_multiply_prime(30))  # Should return true
