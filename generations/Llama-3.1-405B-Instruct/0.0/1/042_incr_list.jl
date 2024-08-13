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
    return xs .+ 1
end
