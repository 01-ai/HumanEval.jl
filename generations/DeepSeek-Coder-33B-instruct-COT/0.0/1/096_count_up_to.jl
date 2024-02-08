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
    primes = Int[]
    for i in 2:n
        if isprime(i)
            push_prime = push(primes, i)
        end
    end
    return primes
end

function isprime(n::Int)::Bool
    if n == 2
        return true
    elseif n == 1 || n % 2 == 0
        return false
    end
    d = 3
    while d * d <= n
        if n % d == 0
            return false
        end
        d += 2
    end
    return true
end
