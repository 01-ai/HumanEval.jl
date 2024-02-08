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
    if n <= 0
        error("Input must be a positive integer")
    end

    stones = Int[]
    for i in 1:n
        if n % 2 == 0
            pushfirst(stones, n + 2i - 1)
        else
            pushfirst(stones, n + 2i - 1)
        end
    end
    return stones
end
