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
    # Step 1: Check for base cases
    if n < 2
        return Int[]
    end
    
    # Step 2: Initialize an empty array for prime numbers
    primes = Int[]
    
    # Step 3: Iterate through numbers from 2 to n-1
    for num in 2:n-1
        # Step 4: Check for primality
        is_prime = true
        for divisor in 2:sqrt(num)
            if num % divisor == 0
                is_prime = false
                break
            end
        end
        
        # Step 5: Add prime numbers to array
        if is_prime
            push!(primes, num)
        end
    end
    
    # Step 6: Return the array of prime numbers
    return primes
end
