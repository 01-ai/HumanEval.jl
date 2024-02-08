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
    # Merge the two input vectors into a single vector
    merged = [l1; l2]
    
    # Use the `unique` function to remove duplicate elements
    unique_merged = unique(merged)
    
    # Sort the resulting vector in ascending order
    sorted_unique_merged = sort(unique_merged)
    
    # Return the sorted vector of common elements
    return sorted_unique_merged
end
