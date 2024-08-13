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
    # Extract elements at indices divisible by 3
    divisible_by_three = l[3:3:end]
    
    # Sort these elements
    sorted_divisible_by_three = sort(divisible_by_three)
    
    # Create a copy of the original list to modify
    result = copy(l)
    
    # Replace the elements at indices divisible by 3 with the sorted elements
    for (i, idx) in enumerate(3:3:length(l))
        result[idx] = sorted_divisible_by_three[i]
    end
    
    return result
end
