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
    function is_prime(n)
        n < 2 && return false
        n == 2 && return true
        for j = 2:ceil(Int, sqrt(n))
            if n % j == 0
                return false
            end
        end
        return true
    end

    for i = 2:100
        !is_prime(i) && continue
        for j = 2:100
            !is_prime(j) && continue
            for k = 2:100
                !is_prime(k) && continue
                i * j * k == a && return true
            end
        end
    end

    false
end
