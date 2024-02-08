"""
    median(l::Vector)

Return median of elements in the list l.

# Examples

```jldoctest
julia> median([3, 1, 2, 4, 5])
3

julia> median([-10, 4, 6, 1000, 10, 20])
8.0
```
"""
 function median(l::Vector)
    sorted_l = sort(l)
    length_l = length(l)
    if length_l % 2 == 0
        return (sorted_l[end] + sorted_l[end-1]) / 2
    else
        return sorted_l[ceil(Int, (length_l + 1) / 2)]
    end
end
