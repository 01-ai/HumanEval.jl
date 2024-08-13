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
    # Initialize the pile with the first level having n stones
    pile = [n]
    
    # Determine the next number of stones based on the parity of the current top level
    current_stones = n
    for i in 2:n
        if current_stones % 2 == 0
            current_stones += 2  # Next even number
        else
            current_stones += 2  # Next odd number
        end
        push!(pile, current_stones)
    end
    
    return pile
end
