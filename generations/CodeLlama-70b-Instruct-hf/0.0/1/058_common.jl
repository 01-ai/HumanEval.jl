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
    # Create a set of unique elements from l1
    s1 = Set(l1)

    # Create a set of unique elements from l2
    s2 = Set(l2)

    # Find the intersection of s1 and s2
    common_elements = intersect(s1, s2)

    # Sort and return the common elements as a vector
    return sort(collect(common_elements))
end
