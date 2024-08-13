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
    # Helper function to determine if a number is prime
    function is_prime(x::Int)::Bool
        if x <= 1
            return false
        elseif x <= 3
            return true
        elseif x % 2 == 0 || x % 3 == 0
            return false
        end
        i = 5
        while i * i <= x
            if x % i == 0 || x % (i + 2) == 0
                return false
            end
            i += 6
        end
        return true
    end

    # Main logic to find primes less than n
    primes = Int[]
    for i in 2:(n-1)
        if is_prime(i)
            push!(primes, i)
        end
    end
    return primes
end
