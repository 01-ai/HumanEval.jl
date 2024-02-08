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
    # Check if a and b are positive integers
    if a <= 0 || b <= 0
        throw(DomainError("a and b must be positive integers"))
    end

    # Initialize an empty vector to store the even digits
    even_digits = Vector{Int}()

    # Loop through the range of integers between a and b, inclusive
    for i in a:b
        # Check if the integer is even
        if rem(i, 2) == 0
            # Add the integer to the vector if it's not already present
            if !(i in even_digits)
                push!(even_digits, i)
            end
        end
    end

    # Sort the vector in ascending order
    sort!(even_digits)

    # Return the vector of even digits
    return even_digits
end
