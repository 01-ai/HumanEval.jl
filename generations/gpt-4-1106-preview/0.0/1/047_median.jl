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
    len = length(sorted_l)
    
    if len % 2 == 1
        # If the length is odd, return the middle element
        return sorted_l[div(len + 1, 2)]
    else
        # If the length is even, return the average of the two middle elements
        return (sorted_l[len ÷ 2] + sorted_l[len ÷ 2 + 1]) / 2
    end
end

# Examples
println(median([3, 1, 2, 4, 5])) # Should print 3
println(median([-10, 4, 6, 1000, 10, 20])) # Should print 8.0
