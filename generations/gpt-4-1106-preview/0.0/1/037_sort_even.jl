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
    # Extract the elements at even indices (1-based indexing in Julia)
    even_indices_elements = l[2:2:end]
    
    # Sort the elements at even indices
    sorted_even_elements = sort(even_indices_elements)
    
    # Create a copy of the original list to modify
    l_prime = copy(l)
    
    # Replace the elements at even indices with the sorted elements
    l_prime[2:2:end] = sorted_even_elements
    
    return l_prime
end

# Examples
println(sort_even([1, 2, 3]) == [1, 2, 3]) # true
println(sort_even([5, 6, 3, 4]) == [5, 4, 3, 6]) # true
