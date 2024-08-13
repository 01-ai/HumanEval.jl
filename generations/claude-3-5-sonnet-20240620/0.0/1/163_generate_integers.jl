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
    # Ensure a is the smaller number
    start, stop = minmax(a, b)
    
    # Initialize an empty vector to store the result
    result = Int[]
    
    # Iterate through the range and add even digits
    for num in start:stop
        if 0 <= num <= 9 && iseven(num)
            push!(result, num)
        end
    end
    
    # Sort the result in ascending order
    sort!(result)
    
    return result
end
