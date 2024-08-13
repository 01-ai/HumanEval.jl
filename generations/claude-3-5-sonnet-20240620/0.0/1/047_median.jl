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
    sorted = sort(l)
    n = length(sorted)
    
    if n % 2 == 0
        # If the length is even, return the average of the two middle values
        return (sorted[n÷2] + sorted[n÷2 + 1]) / 2
    else
        # If the length is odd, return the middle value
        return sorted[n÷2 + 1]
    end
end
