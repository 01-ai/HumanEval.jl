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
    for i in 1:n
        if n % 2 == 0
            push!(pile, i * 2 - 1)
        else
            push!(pile, i * 2)
        end
    end
    return pile
end

# Test cases
println(make_a_pile(3))  # Expected output: [3, 5, 7]
println(make_a_pile(4))  # Expected output: [4, 6, 8, 10]
println(make_a_pile(5))  # Expected output: [5, 7, 9, 11, 13]

