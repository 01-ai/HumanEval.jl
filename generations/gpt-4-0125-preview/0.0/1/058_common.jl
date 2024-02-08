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
    # Step 1: Find the intersection
    common_elements = intersect(l1, l2)
    
    # Step 2 & 3: Remove duplicates and sort (intersect already ensures uniqueness)
    sorted_common_elements = sort(common_elements)
    
    # Step 4: Return the sorted list of unique common elements
    return sorted_common_elements
end

# Examples
println(common([1, 4, 3, 34, 653, 2, 5], [5, 7, 1, 5, 9, 653, 121]))
println(common([5, 3, 2, 8], [3, 2]))
