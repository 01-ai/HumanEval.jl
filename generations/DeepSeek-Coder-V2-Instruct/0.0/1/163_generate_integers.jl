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
    a, b = min(a, b), max(a, b)
    
    # Initialize an empty vector to store the even digits
    even_digits = Vector{Int}()
    
    # Iterate through the range from a to b
    for num in a:b
        # Check if the number is even
        if num % 2 == 0
            # Append the even number to the vector
            push!(even_digits, num)
        end
    end
    
    return even_digits
end
