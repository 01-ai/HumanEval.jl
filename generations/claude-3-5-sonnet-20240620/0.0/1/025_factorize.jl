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
    
    # Handle special cases
    if n <= 1
        return factors
    end
    
    # Start with the smallest prime factor, 2
    factor = 2
    
    while n > 1
        if n % factor == 0
            push!(factors, factor)
            n = div(n, factor)
        else
            # If the current factor doesn't divide n, move to the next potential factor
            factor += (factor == 2) ? 1 : 2
        end
    end
    
    return factors
end
