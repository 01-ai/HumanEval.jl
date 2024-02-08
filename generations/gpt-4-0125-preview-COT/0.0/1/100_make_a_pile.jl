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
    # Step 1: Initialize the vector and the current number of stones
    pile = Int[]
    current_stones = n
    
    # Step 2: Determine the pattern (odd or even)
    increment = n % 2 == 0 ? 2 : 2  # Both odd and even numbers will increment by 2
    
    # Step 3: Build the pile
    for _ in 1:n
        push!(pile, current_stones)
        current_stones += increment  # Move to the next number in the sequence
    end
    
    # Step 4: Return the vector
    return pile
end
