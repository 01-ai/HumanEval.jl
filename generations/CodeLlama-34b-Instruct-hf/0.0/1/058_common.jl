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
    # Get the unique elements of both lists
    l1_unique = unique(l1)
    l2_unique = unique(l2)

    # Get the intersection of the two lists
    common_elements = intersect(l1_unique, l2_unique)

    # Return the sorted unique common elements
    return sort(common_elements)
end
