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
    pile = Int[]
    current_level = n
    while current_level > 0
        push!(pile, current_level)
        if isodd(current_level)
            current_level -= 2
        else
            current_level -= 1
        end
    end
    return reverse(pile)
end
