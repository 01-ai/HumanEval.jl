"""
    prime_fib(n::Int)::Int

Returns n-th number that is a Fibonacci number and it's also prime.

```jldoctest
julia> prime_fib(1)
2

julia> prime_fib(2)
3

julia> prime_fib(3)
5

julia> prime_fib(4)
13

julia> prime_fib(5)
89
```
"""
function prime_fib(n::Int)::Int
    prime_fib_numbers = Int[]
    fib_num = 0
    next_fib_num = 1
    while length(prime_fib_numbers) < n
        fib_num, next_fib_num = next_fib_num, fib_num + next_fib_num
        if isprime(fib_num)
            push!(prime_fib_numbers, fib_num)
        end
    end
    return prime_fib_numbers[end]
end
