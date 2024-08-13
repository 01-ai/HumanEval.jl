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
    # Create a copy of the input vector
    l′ = copy(l)
    
    # Get the even indices of the vector
    even_indices = 2:2:length(l)
    
    # Sort the values at even indices
    sorted_even = sort(l[even_indices])
    
    # Update the even indices of l′ with the sorted values
    l′[even_indices] = sorted_even
    
    return l′
end
