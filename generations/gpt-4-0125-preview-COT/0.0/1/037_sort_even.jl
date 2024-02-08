"""
    sort_even(l::Vector)::Vector

This function takes a list l and returns a list l' such that l' is identical to
l in the odd indicies, while its values at the even indicies are equal to the
values of the even indicies of l, but sorted.

# Examples

```jldoctest
julia> sort_even([1, 2, 3]) == [1, 2, 3]
true

julia> sort_even([5, 6, 3, 4]) == [5, 4, 3, 6]
true
```
"""
function sort_even(l::Vector)::Vector
    # Step 1: Extract elements at even indices
    even_indices_elements = [l[i] for i in 2:2:length(l)]
    
    # Step 2: Sort the extracted list
    sorted_even_indices_elements = sort(even_indices_elements)
    
    # Step 3: Replace even indices in original list with sorted elements
    for (i, val) in enumerate(sorted_even_indices_elements)
        l[2*i] = val
    end
    
    # Step 4: Return the modified list
    return l
end
