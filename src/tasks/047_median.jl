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
    l = sort(l)
    n = length(l)
    mid = n ÷ 2
    if iseven(n)
        (l[mid] + l[mid+1]) / 2
    else
        l[mid+1]
    end
end
