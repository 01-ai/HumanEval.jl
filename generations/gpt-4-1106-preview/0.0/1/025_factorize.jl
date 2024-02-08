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
    factors = Vector{Int}()
    # Handle the case of 0 and 1, which have no prime factors
    if n < 2
        return factors
    end
    # Extract factors of 2
    while n % 2 == 0
        push!(factors, 2)
        n = div(n, 2)
    end
    # Extract factors of odd numbers starting from 3
    factor = 3
    while factor * factor <= n
        while n % factor == 0
            push!(factors, factor)
            n = div(n, factor)
        end
        factor += 2
    end
    # If n is a prime number greater than 2
    if n > 2
        push!(factors, n)
    end
    return factors
end
