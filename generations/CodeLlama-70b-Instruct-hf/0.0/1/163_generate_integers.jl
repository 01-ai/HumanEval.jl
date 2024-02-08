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
    # Ensure that a and b are positive integers
    if a < 0 || b < 0
        throw(DomainError("a and b must be positive integers"))
    end

    # Swap a and b if necessary to ensure a <= b
    if a > b
        a, b = b, a
    end

    # Generate the even digits between a and b
    result = Int[]
    for i = a:b
        if i % 2 == 0
            push!(result, i)
        end
    end

    return result
end
