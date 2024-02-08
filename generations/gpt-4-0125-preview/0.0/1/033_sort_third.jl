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
    # Step 1: Identify indices divisible by three (adjusting for Julia's 1-based indexing)
    divisible_by_three_indices = 3:3:length(l)
    
    # Step 2: Extract values at these indices
    values_to_sort = [l[i] for i in divisible_by_three_indices]
    
    # Step 3: Sort these values
    sorted_values = sort(values_to_sort)
    
    # Step 4: Replace original values with sorted values
    for (i, index) in enumerate(divisible_by_three_indices)
        l[index] = sorted_values[i]
    end
    
    # Step 5: Return the modified list
    return l
end
