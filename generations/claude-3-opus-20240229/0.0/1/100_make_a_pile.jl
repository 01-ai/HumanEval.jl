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
    pile = Vector{Int}()
    num = n

    for i in 1:n
        push!(pile, num)
        if isodd(num)
            num += 2
        else
            num += 1
        end
    end

    return pile
end