"""
    count_up_to(n::Int)::Vector{Int}

Implement a function that takes an non-negative integer and returns an array of
the first n integers that are prime numbers and less than n.

# Example

```jldoctest
julia> count_up_to(5)
2-element Vector{Int64}:
 2
 3

julia> count_up_to(11)
4-element Vector{Int64}:
 2
 3
 5
 7

julia> count_up_to(0)
Int64[]

julia> count_up_to(20)
8-element Vector{Int64}:
  2
  3
  5
  7
 11
 13
 17
 19

julia> count_up_to(1)
Int64[]

julia> count_up_to(18)
7-element Vector{Int64}:
  2
  3
  5
  7
 11
 13
 17
```
"""
function count_up_to(n::Int)::Vector{Int}
    if n < 2
        return Int[]
    end

    primes = Int[]
    for x in 2:n
        is_prime = true
        for y in 2:sqrt(x)
            if x % y == 0
                is_prime = false
                break
            end
        end
        if is_prime
            push(primes, x)
        end
    end
    return primes
end

println(count_up_to(5))
println(count_up_to(11))
println(count_up_to(0))
println(count_up_to(20))
println(count_up_to(1))
println(count_up_to(18))

