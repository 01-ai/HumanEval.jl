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
    # Check if n is positive
    if n < 1
        throw(DomainError(n, "n must be positive"))
    end

    # Initialize the pile
    pile = Int[]

    # Add the first level with n stones
    push!(pile, n)

    # Iterate over the remaining levels
    for i in 1:n-1
        # If the current level is odd, add the next odd number
        if pile[i] % 2 == 1
            push!(pile, pile[i] + 2)
        # If the current level is even, add the next even number
        else
            push!(pile, pile[i] + 1)
        end
    end

    return pile
end
