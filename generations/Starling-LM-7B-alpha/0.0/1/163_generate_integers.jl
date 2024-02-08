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
    even_numbers = Vector{Int}()
    for i in a:b
        if mod(i, 2) == 0
            push!(even_numbers, i)
        end
    end
    return sort(even_numbers)
end
