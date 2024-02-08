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
    even_indices = collect(2:2:length(l))
    sorted_even_values = sort(l[even_indices])
    return vcat(l[1:1:end], sorted_even_values)
end
