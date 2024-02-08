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
    # Sort the vector
    sorted_l = sort(l)
    
    n = length(sorted_l)
    
    # If the length of the vector is odd, return the middle element
    if n % 2 != 0
        return sorted_l[div(n + 1, 2)]
    else
        # If the length is even, return the average of the two middle elements
        mid1 = sorted_l[n ÷ 2]
        mid2 = sorted_l[n ÷ 2 + 1]
        return (mid1 + mid2) / 2
    end
end
