"""
common(l1::Vector, l2::Vector)::Vector

Return sorted unique common elements for two lists.

# Examples

```jldoctest
julia> common([1, 4, 3, 34, 653, 2, 5], [5, 7, 1, 5, 9, 653, 121])
3-element Vector{Int64}:
   1
   5
 653

julia> common([5, 3, 2, 8], [3, 2])
2-element Vector{Int64}:
 2
 3
```
"""
 function common(l1::Vector, l2::Vector)::Vector
    sorted_l1 = sort(unique(l1))
    sorted_l2 = sort(unique(l2))
    common_elements = intersect(sorted_l1, sorted_l2)
    return common_elements
end
