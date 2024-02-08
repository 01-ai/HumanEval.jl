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
    # Step 1: Initialize an empty list for values at indices divisible by three
    divisible_values = []

    # Step 2 & 3: Iterate through `l` and store values at indices divisible by three
    for (index, value) in enumerate(l)
        if index % 3 == 0
            push!(divisible_values, value)
        end
    end

    # Step 4: Sort the list of divisible values
    sort!(divisible_values)

    # Step 5: Re-insert the sorted values back into `l`
    sorted_index = 1
    for index in 1:length(l)
        if index % 3 == 0
            l[index] = divisible_values[sorted_index]
            sorted_index += 1
        end
    end

    # Step 6: Return the modified list `l`
    return l
end
