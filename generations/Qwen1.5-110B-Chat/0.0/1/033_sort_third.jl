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
    sorted_thirds = sort(filter((x, val) -> x % 3 == 0, enumerate(l)) do tuple
        tuple[2]
    end)
    
    result = copy(l)
    index = 1
    for (i, val) in sorted_thirds
        result[i] = val
        index += 1
    end
    
    return result
end
