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
    sorted_indices = Int[]
    for i in 1:length(l)
        if i % 3 == 0
            push!(sorted_indices, l[i])
        end
    end
    sort!(sorted_indices)

    result = similar(l)
    sorted_index = 1
    for i in 1:length(l)
        if i % 3 == 0
            result[i] = sorted_indices[sorted_index]
            sorted_index += 1
        else
            result[i] = l[i]
        end
    end

    return result
end
