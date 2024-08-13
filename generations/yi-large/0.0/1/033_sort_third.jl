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
    # Create a copy of the list to avoid modifying the original
    sorted_list = copy(l)
    
    # Find the indices that are divisible by 3
    threes_indices = findall(i -> i % 3 == 0, 1:length(l))
    
    # Sort the elements at these indices
    threes_elements = sort(l[threes_indices])
    
    # Assign the sorted elements back to the corresponding indices in the new list
    for (i, index) in enumerate(threes_indices)
        sorted_list[index] = threes_elements[i]
    end
    
    return sorted_list
end

# Test the function with the provided examples
println(sort_third([1, 2, 3]))
println(sort_third([5, 6, 3, 4, 8, 9, 2]))
