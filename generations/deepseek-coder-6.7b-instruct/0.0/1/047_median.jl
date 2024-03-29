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
    len = length(l)
    if len % 2 == 0
        return (sorted_l[len � 2] + sorted_l[len � 2 + 1]) / 2
    else
        return sorted_l[div(len + 1, 2)]
    end
end

println(median([3, 1, 2, 4, 5]))
println(median([-10, 4, 6, 1000, 10, 20]))

