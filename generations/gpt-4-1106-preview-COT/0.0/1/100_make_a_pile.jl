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
    # Step 1: Initialize the pile vector
    pile = Vector{Int}(undef, n)
    
    # Step 2: Add the first level to the pile
    pile[1] = n
    
    # Step 3 and 4: Calculate the number of stones for each subsequent level
    for i in 2:n
        pile[i] = pile[i-1] + 2
    end
    
    # Step 5: Return the pile vector
    return pile
end
