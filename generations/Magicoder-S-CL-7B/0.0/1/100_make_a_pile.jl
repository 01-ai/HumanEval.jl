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
    pile = Vector{Int}(undef, n)
    for i in 1:n
        if n % 2 == 0
            pile[i] = 2 * (i - 1) + 1
        else
            pile[i] = 2 * (i - 1) + 2
        end
    end
    return pile
end
