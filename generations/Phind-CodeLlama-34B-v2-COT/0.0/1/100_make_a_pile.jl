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
    # Initialize an empty vector to store the number of stones in each level
    pile = Int[]

    # Iterate from 1 to n
    for i in 1:n
        # Check if n is odd or even
        if n % 2 == 1
            # If n is odd, add the next odd number to the vector
            push!(pile, n + 2)
        else
            # If n is even, add the next even number to the vector
            push!(pile, n + 1)
        end
    end

    # Return the vector
    return pile
end
