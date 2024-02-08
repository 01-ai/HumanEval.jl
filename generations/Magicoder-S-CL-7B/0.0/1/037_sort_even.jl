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
    even_indices = [i for i in 1:length(l) if i % 2 == 0]
    even_values = l[even_indices]
    sort!(even_values)
    for (i, j) in enumerate(even_indices)
        l[j] = even_values[i]
    end
    return l
end
