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
    primes = Vector{Int}()

    # Loop through the numbers from 2 to n-1 (since n is not a prime)
    for i in 2:n-1
        # Check if the number is prime
        is_prime = true
        for j in 2:i
            if i % j == 0
                is_prime = false
                break
            end
        end

        # If the number is prime, add it to the vector
        if is_prime
            push!(primes, i)
        end
    end

    # Return the vector of prime numbers
    return primes
end
