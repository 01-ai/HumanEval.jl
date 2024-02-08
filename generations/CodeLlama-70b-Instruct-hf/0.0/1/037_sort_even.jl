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
function sort_even(l::Vector)
    # Create a copy of the input list
    l_copy = copy(l)

    # Extract the even indices from the list
    even_indices = l_copy[2:2:end]

    # Sort the even indices
    sorted_even_indices = sort(even_indices)

    # Replace the even indices in the list with the sorted even indices
    l_copy[2:2:end] = sorted_even_indices

    # Return the modified list
    return l_copy
end
