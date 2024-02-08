"""
    factorize(n::Int)::Vector{Int}

Return list of prime factors of given integer in the order from smallest to
largest. Each of the factors should be listed number of times corresponding to
how many times it appeares in factorization. Input number should be equal to the
product of all factors.

# Examples

```jldoctest
julia> factorize(8)
3-element Vector{Int64}:
 2
 2
 2

julia> factorize(25)
2-element Vector{Int64}:
 5
 5

julia> factorize(70)
3-element Vector{Int64}:
 2
 5
 7
```
"""
function factorize(n::Int)::Vector{Int}
    # Initialize an empty vector to store the prime factors
    factors = Vector{Int}()

    # Loop through the numbers starting from 2 to sqrt(n)
    for i in 2:sqrt(n)
        # If n is divisible by i, then i is a factor of n
        while n % i == 0
            # Add i to the vector of factors
            push!(factors, i)
            # Update n by removing the factor i
            n = n // i
            # If n is now divisible by i^2, then i^2 is also a factor
            if n % i == 0
                # Add i again to the vector of factors
                push!(factors, i)
                # Update n by removing the factor i^2
                n = n // i^2
            }
        end
    end

    # If n is greater than 1, it means we have a prime factor greater than sqrt(n)
    if n > 1
        push!(factors, n)
    end

    # Return the vector of prime factors
    return factors
end
