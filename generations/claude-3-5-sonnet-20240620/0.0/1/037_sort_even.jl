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
    # Create a copy of the input list
    result = copy(l)
    
    # Extract even-indexed elements
    even_elements = l[2:2:end]
    
    # Sort the even-indexed elements
    sorted_even = sort(even_elements)
    
    # Replace the even-indexed elements in the result with the sorted values
    result[2:2:end] = sorted_even
    
    return result
end
println(sort_even([1, 2, 3]) == [1, 2, 3])  # Should print true
println(sort_even([5, 6, 3, 4]) == [5, 4, 3, 6])  # Should print true
