"""
    generate_integers(a::Int, b::Int)::Vector{Int}

Given two positive integers a and b, return the even digits between a and b, in
ascending order.

# Example

```jldoctest
julia> generate_integers(2, 8)
4-element Vector{Int64}:
 2
 4
 6
 8

julia> generate_integers(8, 2)
4-element Vector{Int64}:
 2
 4
 6
 8

julia> generate_integers(10, 14)
Int64[]
```
"""


function generate_integers(a::Int, b::Int)::Vector{Int}
    min_val = min(a, b)
    max_val = max(a, b)
    even_digits = Int[]

    for i in min_val:max_val
        if i % 2 == 0
            push!(even_digits, i)
        end
    end

    return even_digits
end

# Test cases
println(generate_integers(2, 8))
println(generate_integers(8, 2))
println(generate_integers(10, 14))

