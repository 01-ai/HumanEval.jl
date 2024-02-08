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
    # Initialize the pile with the first level
    pile = [n]
    
    # Loop to fill the rest of the levels
    for i in 2:n
        # Check if the last number of stones added was odd or even
        # and add the next odd or even number accordingly
        if pile[end] % 2 == 0
            push!(pile, pile[end] + 2)
        else
            push!(pile, pile[end] + 2)
        end
    end
    
    return pile
end
