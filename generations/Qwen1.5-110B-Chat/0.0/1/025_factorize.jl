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
    d = 2
    while d * d ≤ n
        while n % d == 0
            push!(factors, d)
            n = n ÷ d
        end
        d = d + 1
    end
    if n > 1
        push!(factors, n)
    end
    return factors
end
