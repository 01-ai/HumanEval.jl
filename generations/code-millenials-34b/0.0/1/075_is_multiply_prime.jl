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
    factors = [2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53, 59, 61, 67, 71, 73, 79, 83, 89, 97]
    primes = []
    for i in factors
        if a % i == 0
            push!(primes, i)
            a = a ÷ i
        end
        if length(primes) > 3
            return false
        end
    end
    return length(primes) == 3
end

println(is_multiply_prime(30))  # true
println(is_multiply_prime(42))  # false
println(is_multiply_prime(100))  # false
println(is_multiply_prime(10))   # false
println(is_multiply_prime(34))   # false
println(is_multiply_prime(60))   # false
println(is_multiply_prime(90))   # false
println(is_multiply_prime(120))  # false
println(is_multiply_prime(180))  # false
println(is_multiply_prime(210))  # false
println(is_multiply_prime(240))  # false
println(is_multiply_prime(270))  # false
println(is_multiply_prime(300))  # false
println(is_multiply_prime(330))  # false
println(is_multiply_prime(360))  # false
println(is_multiply_prime(390))  # false
println(is_multiply_prime(420))  # false
println(is_multiply_prime(450))  # false
println(is_multiply_prime(480))  # false
println(is_multiply_prime(510))  # false
println(is_multiply_prime(540))  # false
println(is_multiply_prime(570))  # false
println(is_multiply_prime(600))  # false
println(is_multiply_prime(630))  # false
println(is_multiply_prime(660))  # false
println(is_multiply_prime(690))  # false
println(is_multiply_prime(720))  # false
println(is_multiply_prime(750))  # false
println(is_multiply_prime(780))  # false
println(is_multiply_prime(810))  # false
println(is_multiply_prime(840))  # false
println(is_multiply_prime(870))  # false
println(is_multiply_prime(900))  # false
println(is_multiply_prime(930))  # false
println(is_multiply_prime(960))  # false
println(is_multiply_prime(990))  # false

