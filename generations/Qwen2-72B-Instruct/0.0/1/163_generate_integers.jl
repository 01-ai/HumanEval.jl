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
    # Ensure a is less than or equal to b for the range
    if a > b
        a, b = b, a
    end

    # Generate the range of numbers and filter for even digits
    evens = [i for i in a:b if iseven(i)]
    
    return evens
end
function generate_integers(a::Int, b::Int)::Vector{Int}
    # Ensure a is less than or equal to b for the range
    if a > b
        a, b = b, a
    end

    # Generate the range of numbers and extract digits
    digits = [parse(Int, d) for i in a:b for d in string(i)]

    # Filter for even digits and sort
    evens = sort!(filter(d -> iseven(d), digits))
    
    return evens
end
