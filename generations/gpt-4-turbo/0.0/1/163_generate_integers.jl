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
    # Determine the range in ascending order regardless of input order
    start_val = min(a, b)
    end_val = max(a, b)
    
    # Filter and collect even numbers in the range
    even_numbers = [x for x in start_val:end_val if x % 2 == 0]
    
    return even_numbers
end
