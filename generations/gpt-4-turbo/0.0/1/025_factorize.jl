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
    factors = Int[]
    if n < 2
        return factors
    end
    
    # Check for number of 2s
    while n % 2 == 0
        push!(factors, 2)
        n = n ÷ 2
    end
    
    # Check for odd factors from 3 onwards
    factor = 3
    while factor * factor <= n
        while n % factor == 0
            push!(factors, factor)
            n = n ÷ factor
        end
        factor += 2
    end
    
    # If n is still greater than 2, then it must be prime
    if n > 2
        push!(factors, n)
    end
    
    return factors
end
