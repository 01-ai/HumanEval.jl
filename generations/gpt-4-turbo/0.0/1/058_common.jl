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
    # Convert lists to sets to find unique elements
    set1 = Set(l1)
    set2 = Set(l2)
    
    # Find the intersection of both sets
    common_elements = intersect(set1, set2)
    
    # Convert the set back to a sorted list
    return sort(collect(common_elements))
end