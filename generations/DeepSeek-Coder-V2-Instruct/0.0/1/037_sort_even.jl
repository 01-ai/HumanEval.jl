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
    even_elements = sort(l[2:2:end])
    
    # Create a new list to store the result
    result = similar(l)
    
    # Copy the odd-indexed elements directly
    result[1:2:end] = l[1:2:end]
    
    # Copy the sorted even-indexed elements
    result[2:2:end] = even_elements
    
    return result
end
