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
    result = Int[]
    for i in a:2:b
        if i % 2 == 0
            push!(result, i)
        end
    end
    return result
end