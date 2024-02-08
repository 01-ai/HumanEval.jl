"""
    sort_third(l::Vector)

This function takes a list `l` and returns a list l' such that l' is identical to
`l` in the indicies that are not divisible by three, while its values at the
indicies that are divisible by three are equal to the values of the
corresponding indicies of l, but sorted.

# Examples

```jldoctest
julia> sort_third([1, 2, 3])
3-element Vector{Int64}:
 1
 2
 3

julia> sort_third([5, 6, 3, 4, 8, 9, 2])
7-element Vector{Int64}:
 5
 6
 3
 4
 8
 9
 2
```
"""


function sort_third(l::Vector)
    third_indices = [i for i in 1:length(l) if i % 3 == 0]
    third_values = l[third_indices]
    sort!(third_values)
    l_sorted = copy(l)
    l_sorted[third_indices] = third_values
    return l_sorted
end
