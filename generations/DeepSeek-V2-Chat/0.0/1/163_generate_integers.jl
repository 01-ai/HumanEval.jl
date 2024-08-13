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
    # Ensure a is the smaller number and b is the larger number
    a, b = min(a, b), max(a, b)
    
    # Initialize an empty vector to store the even numbers
    even_numbers = Int[]
    
    # Loop through the range from a to b
    for i in a:b
        # Check if the number is even
        if i % 2 == 0
            # Append the even number to the vector
            push!(even_numbers, i)
        end
    end
    
    return even_numbers
end
