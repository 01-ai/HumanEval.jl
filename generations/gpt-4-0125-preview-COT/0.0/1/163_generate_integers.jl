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
    # Step 1: Input Validation
    if a <= 0 || b <= 0
        return Int[]
    end
    
    # Step 2: Range Determination
    start_point = min(a, b)
    end_point = max(a, b)
    
    # Step 3 & 4: Even Digit Extraction and Compilation
    even_digits = [i for i in start_point:end_point if i % 2 == 0]
    
    # Step 5: Return Result
    return even_digits
end
