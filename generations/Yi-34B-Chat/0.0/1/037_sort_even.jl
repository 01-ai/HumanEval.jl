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
    # Initialize an output vector with the same length as the input vector
    out = Vector{eltype(l)}(undef, length(l))

    # Loop over the odd indices and copy the values to the output vector
    for i in 1:length(l) - 1:2
        out[i] = l[i]
    end

    # Sort the even indices of the input vector and copy the sorted values to the
    # output vector
    even_indices = 2:2:length(l)
    even_sorted = sort(l[even_indices])
    for i in even_indices
        out[i] = even_sorted[i - 1]
    end

    # Return the output vector
    return out
end
