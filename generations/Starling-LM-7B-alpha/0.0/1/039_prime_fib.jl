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
    fib_nums = [2, 3]
    fib_index = 2
    while length(fib_nums) < n
        fib_num = fib_nums[fib_index] + fib_nums[fib_index-1]
        push!(fib_nums, fib_num)
        fib_index += 1
    end

    for fib_num in fib_nums
        if isprime(fib_num)
            return fib_num
        end
    end
end
