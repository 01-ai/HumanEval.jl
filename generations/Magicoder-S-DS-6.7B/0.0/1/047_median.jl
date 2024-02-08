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
    n = length(l)
    if n % 2 == 0
        return (sorted_l[n � 2] + sorted_l[n � 2 + 1]) / 2
    else
        return sorted_l[div(n + 1, 2)]
    end
end
