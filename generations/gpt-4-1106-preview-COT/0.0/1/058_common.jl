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
    # Step 2: Find the common elements
    common_elements = intersect(l1, l2)
    
    # Step 3: Remove duplicates (though `intersect` should already return unique elements)
    unique_common_elements = unique(common_elements)
    
    # Step 4: Sort the unique common elements
    sorted_common_elements = sort(unique_common_elements)
    
    # Step 5: Return the sorted vector
    return sorted_common_elements
end
println(common([1, 4, 3, 34, 653, 2, 5], [5, 7, 1, 5, 9, 653, 121]))
println(common([5, 3, 2, 8], [3, 2]))
[1, 5, 653]
[2, 3]
