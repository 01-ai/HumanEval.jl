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
    
    # Initialize an empty vector to store the even digits
    even_digits = Int[]
    
    # Iterate through the range from a to b
    for i in a:b
        # Check if the number is even and a single digit
        if i % 2 == 0 && i < 10
            push!(even_digits, i)
        end
    end
    
    return even_digits
end

# Example usage
println(generate_integers(2, 8))  # Output: [2, 4, 6, 8]
println(generate_integers(8, 2))  # Output: [2, 4, 6, 8]
println(generate_integers(10, 14))  # Output: []
