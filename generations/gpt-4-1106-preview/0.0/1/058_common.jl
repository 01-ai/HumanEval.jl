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
    # Find the intersection of the two lists and convert it to a set to ensure uniqueness
    common_elements = intersect(Set(l1), Set(l2))
    
    # Convert the set back to a list and sort it
    sorted_common_elements = sort(collect(common_elements))
    
    return sorted_common_elements
end

# Examples
println(common([1, 4, 3, 34, 653, 2, 5], [5, 7, 1, 5, 9, 653, 121])) # Should print [1, 5, 653]
println(common([5, 3, 2, 8], [3, 2])) # Should print [2, 3]
