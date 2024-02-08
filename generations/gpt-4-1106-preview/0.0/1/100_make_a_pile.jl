"""
    make_a_pile(n::Int)::Vector{Int}

Given a positive integer n, you have to make a pile of n levels of stones. The
first level has n stones. The number of stones in the next level is:

  - the next odd number if n is odd.
  - the next even number if n is even.

# Examples

```jldoctest
julia> make_a_pile(3)
3-element Vector{Int64}:
 3
 5
 7
```
"""
function make_a_pile(n::Int)::Vector{Int}
    # Initialize the pile with the first level of n stones
    pile = [n]
    
    # Calculate the number of stones for each subsequent level
    for i in 1:n-1
        # Determine the last stone count
        last_stone_count = pile[end]
        
        # Calculate the next stone count based on the parity of the last count
        next_stone_count = last_stone_count + (last_stone_count % 2 == 0 ? 1 : 2)
        
        # Add the next stone count to the pile
        push!(pile, next_stone_count)
    end
    
    return pile
end
