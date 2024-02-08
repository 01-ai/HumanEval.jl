"""
    unique_elements(l::Vector)

Return sorted unique elements in a list.

# Examples

```jldoctest
julia> unique_elements([5, 3, 5, 2, 3, 3, 9, 0, 123])
6-element Vector{Int64}:
   0
   2
   3
   5
   9
 123
```
"""
function unique_elements(l::Vector)
    # Step 2: Remove duplicates
    unique_l = unique(l)
    
    # Step 3: Sort the unique elements
    sorted_unique_l = sort(unique_l)
    
    # Step 4: Return the sorted vector of unique elements
    return sorted_unique_l
end

# Example usage
println(unique_elements([5, 3, 5, 2, 3, 3, 9, 0, 123]))
