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
    # Create a new empty vector to store the even indexed elements of the input list
    even_indices = []

    # Iterate over the input list and add every second element to the new vector
    for i in 1:2:length(l)
        push!(even_indices, l[i])
    end

    # Sort the new vector
    sort!(even_indices)

    # Create a new list that is a copy of the input list
    sorted_list = copy(l)

    # Iterate over the new list and replace every second element with the corresponding element from the sorted vector
    for i in 1:2:length(sorted_list)
        sorted_list[i] = even_indices[i]
    end

    # Return the new list
    return sorted_list
end
