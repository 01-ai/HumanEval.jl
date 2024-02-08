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
    n = length(l)
    s = sort(l)
    return n % 2 == 0 ? (s[n ÷ 2] + s[n ÷ 2 + 1]) / 2 : s[div(n + 1, 2)]
end
