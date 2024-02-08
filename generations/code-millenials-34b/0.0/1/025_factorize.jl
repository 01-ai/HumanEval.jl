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
    # Start factorizing from smallest prime number, which is 2.
    while n % 2 == 0
        push!(factors, 2)
        n = div(n, 2)
    end
    # n must be odd at this point, thus skip one element (Note i = i +2)
    for i = 3:2:sqrt(n)
        while n % i == 0
            push!(factors, i)
            n = div(n, i)
        end
    end
    # This condition is to handle the case when n is a prime number
    # greater than 2
    if n > 2
        push!(factors, n)
    end
    return factors
end

# Test cases
println(factorize(8))
println(factorize(25))
println(factorize(70))

