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
    if a > b
        a, b = b, a
    end
    return [i for i in a:b if i % 2 == 0]
end

# Test cases
println(generate_integers(2, 8))  # [2, 4, 6, 8]
println(generate_integers(8, 2))  # [2, 4, 6, 8]
println(generate_integers(10, 14))  # []
