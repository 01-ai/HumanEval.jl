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
    # Initialize an empty vector to store prime numbers
    primes = Vector{Int}()

    # Iterate over all numbers from 2 to n-1
    for i in 2:(n-1)
        # Assume the number is prime
        is_prime = true

        # Check if the number is divisible by any previously found prime
        for p in primes
            if i % p == 0
                # If it is, mark it as not prime and break the loop
                is_prime = false
                break
            end
        end

        # If the number is prime, add it to the vector of primes
        if is_prime
            push!(primes, i)
        end
    end

    # Return the vector of primes
    return primes
end
function count_up_to(n::Int)::Vector{Int}
    primes = Vector{Int}()

    for i in 2:(n-1)
        is_prime = true

        # Only need to check up to the square root of i
        for p in primes
            if p^2 > i
                break
            end
            if i % p == 0
                is_prime = false
                break
            end
        end

        if is_prime
            push!(primes, i)
        end
    end

    return primes
end