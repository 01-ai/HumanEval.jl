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
    # Initialize an empty vector to store the prime numbers
    primes = Int[]

    # Iterate from 2 to n-1
    for num in 2:n-1
        # Check if the current number is prime
        if is_prime(num)
            # If it's prime, append it to the primes vector
            push!(primes, num)
        end
    end

    # Return the vector of prime numbers
    return primes
end

function is_prime(num::Int)::Bool
    # Handle the case when num is less than 2
    if num < 2
        return false
    end

    # Iterate from 2 to the square root of num
    for i in 2:isqrt(num)
        # If num is divisible by i, it's not prime
        if num % i == 0
            return false
        end
    end

    # If no divisors found, num is prime
    return true
end
