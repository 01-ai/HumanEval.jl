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
    # Initialize an empty vector to store the sorted list
    l_sorted = Vector{eltype(l)}(undef, length(l))

    # Loop through the indices of the list
    for i in eachindex(l)
        # If the index is divisible by 3, sort the elements at those indices
        if i % 3 == 0
            # Get the indices of elements to be sorted
            inds_to_sort = findall(x -> x % 3 == 0, eachindex(l))
            # Sort the elements at those indices
            l_sorted[inds_to_sort] = sort(l[inds_to_sort])
        # Otherwise, copy the element from the original list
        else
            l_sorted[i] = l[i]
        end
    end

    # Return the sorted list
    return l_sorted
end
