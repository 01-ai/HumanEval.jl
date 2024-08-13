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
    # Extract even-indexed elements and sort them
    sorted_evens = sort(l[1:2:end])
    
    # Keep odd-indexed elements as they are
    odd_elements = l[2:2:end]
    
    # Merge sorted even-indexed elements back into the original list, keeping odd-indexed elements in place
    sorted_l = copy(l)
    sorted_l[1:2:end] = sorted_evens
    
    return sorted_l
end
