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
    # Get the values at the indices divisible by 3
    div_by_three = l[i for i in 1:length(l) if i % 3 == 0]

    # Sort these values
    sorted_div_by_three = sort(div_by_three)

    # Replace the values at the indices divisible by 3 with the sorted values
    for i in 1:length(l)
        if i % 3 == 0
            l[i] = sorted_div_by_three[i � 3]
        end
    end

    return l
end
