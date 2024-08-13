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
        throw(ArgumentError("n must be a positive integer"))
    end
    
    result = Vector{Int}(undef, n)
    result[1] = n
    
    for i in 2:n
        if n % 2 == 0  # n is even
            result[i] = result[i-1] + 2
        else  # n is odd
            result[i] = result[i-1] + 2
        end
    end
    
    return result
end
