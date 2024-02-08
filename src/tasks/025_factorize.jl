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
    fact = []
    i = 2
    while i <= ceil(Int, sqrt(n))
        if n % i == 0
            push!(fact, i)
            n = n ÷ i
        else
            i += 1
        end
    end

    if n > 1
        push!(fact, n)
    end
    return fact
end
