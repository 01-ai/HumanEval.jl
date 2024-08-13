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
    third_elements = l[3:3:end]
    
    # Sort the extracted elements
    sorted_third_elements = sort(third_elements)
    
    # Create a copy of the original list
    result = copy(l)
    
    # Replace elements at indices divisible by 3 with the sorted elements
    result[3:3:end] = sorted_third_elements
    
    return result
end