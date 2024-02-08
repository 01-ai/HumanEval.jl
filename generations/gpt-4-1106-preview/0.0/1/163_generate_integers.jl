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
    
    # Generate the range from a to b
    range = a:b
    
    # Filter the even numbers and return them as a vector
    return filter(x -> x % 2 == 0, range)
end

# Example usage:
println(generate_integers(2, 8))
println(generate_integers(8, 2))
println(generate_integers(10, 14))
