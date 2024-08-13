"""
    sort_third(l::Vector)

This function takes a list `l` and returns a list l' such that l' is identical to
`l` in the indicies that are not divisible by three, while its values at the
indicies that are divisible by three are equal to the values of the
corresponding indicies of l, but sorted.

# Examples

```jldoctest
julia> sort_third([1, 2, 3])
3-element Vector{Int64}:
 1
 2
 3

julia> sort_third([5, 6, 3, 4, 8, 9, 2])
7-element Vector{Int64}:
 5
 6
 3
 4
 8
 9
 2
```
"""
function sort_third(l::Vector)
    # Create a copy of the input vector
    result = copy(l)
    
    # Get the indices divisible by 3
    third_indices = 3:3:length(l)
    
    # Extract the values at those indices
    third_values = l[third_indices]
    
    # Sort the extracted values
    sorted_third_values = sort(third_values)
    
    # Replace the values at the third indices with the sorted values
    result[third_indices] = sorted_third_values
    
    return result
end
