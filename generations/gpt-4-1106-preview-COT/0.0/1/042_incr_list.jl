"""
    incr_list(xs::Vector)::Vector

Return list with elements incremented by 1.

```jldoctest
julia> incr_list([1, 2, 3])
3-element Vector{Int64}:
 2
 3
 4

julia> incr_list([5, 3, 5, 2, 3, 3, 9, 0, 123])
9-element Vector{Int64}:
   6
   4
   6
   3
   4
   4
  10
   1
 124
```
"""
function incr_list(xs::Vector)::Vector
    # Create a new vector to store incremented values
    incremented_xs = Vector{Int}(undef, length(xs))
    
    # Iterate over the input vector and increment each element
    for (i, x) in enumerate(xs)
        incremented_xs[i] = x + 1
    end
    
    # Return the new vector with incremented values
    return incremented_xs
end
println(incr_list([1, 2, 3])) # Should print [2, 3, 4]
println(incr_list([5, 3, 5, 2, 3, 3, 9, 0, 123])) # Should print [6, 4, 6, 3, 4, 4, 10, 1, 124]
