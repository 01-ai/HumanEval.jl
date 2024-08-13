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
function is_prime(num::Int)::Bool
    if num <= 1
        return false
    elseif num <= 3
        return true
    elseif num % 2 == 0 || num % 3 == 0
        return false
    end
    i = 5
    while i * i <= num
        if num % i == 0 || num % (i + 2) == 0
            return false
        end
        i += 6
    end
    return true
end

function count_up_to(n::Int)::Vector{Int}
    primes = Int[]
    for i in 2:n-1
        if is_prime(i)
            push!(primes, i)
        end
    end
    return primes
end
