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
    # Extract elements at even indices (1-based indexing)
    even_indices_elements = [l[i] for i in 2:2:length(l)]
    
    # Sort the extracted elements
    sorted_even_indices_elements = sort(even_indices_elements)
    
    # Replace elements at even indices with sorted elements
    l_prime = copy(l) # Create a copy to modify and return
    j = 1 # Index for sorted_even_indices_elements
    for i in 2:2:length(l)
        l_prime[i] = sorted_even_indices_elements[j]
        j += 1
    end
    
    return l_prime
end
