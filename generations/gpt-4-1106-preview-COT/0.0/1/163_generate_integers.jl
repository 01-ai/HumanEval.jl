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
    # Ensure a is less than or equal to b
    if a > b
        a, b = b, a
    end
    
    # Initialize an empty vector to store even digits
    even_digits = Int[]
    
    # Iterate from a to b and collect even digits
    for num in a:b
        if num % 2 == 0
            push!(even_digits, num)
        end
    end
    
    return even_digits
end
