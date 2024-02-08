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
    # Step 2: Return an empty array if n is less than 2
    if n < 2
        return Int[]
    end

    # Step 3: Initialize an empty array to store prime numbers
    primes = Int[]

    # Step 4: Iterate from 2 to n-1 to check for prime numbers
    for i in 2:n-1
        # Step 5: Check if i is a prime number
        is_prime = true
        for j in 2:sqrt(i)
            if i % j == 0
                is_prime = false
                break
            end
        end

        # Step 6: If i is prime, append it to the array of prime numbers
        if is_prime
            push!(primes, i)
        end
    end

    # Step 7: Return the array of prime numbers
    return primes
end
