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
    
    # Loop through the levels, adding the next odd or even number
    while length(pile) < n
        if n % 2 == 1
            # If n is odd, add the next odd number
            push!(pile, n + 2)
            n += 2
        else
            # If n is even, add the next even number
            push!(pile, n + 1)
            n += 1
        end
    end
    
    return pile
end
