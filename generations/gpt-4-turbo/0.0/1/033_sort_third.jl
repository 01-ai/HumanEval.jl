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
    third_elements = [l[i] for i in 1:length(l) if (i-1) % 3 == 2]
    
    # Sort these elements
    sorted_third_elements = sort(third_elements)
    
    # Create a new list with sorted elements at indices divisible by 3
    result = copy(l)
    sorted_index = 1
    for i in 1:length(l)
        if (i-1) % 3 == 2
            result[i] = sorted_third_elements[sorted_index]
            sorted_index += 1
        end
    end
    
    return result
end
