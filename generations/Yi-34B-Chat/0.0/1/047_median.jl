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
    # Sort the list and find the middle element
    sort!(l)
    n = length(l)
    
    # If the list has an odd number of elements, return the middle element
    if n % 2 == 1
        return l[n ÷ 2 + 1]
    end
    
    # If the list has an even number of elements, return the average of the two middle elements
    else
        return (l[n ÷ 2] + l[n ÷ 2 + 1]) / 2
    end
end
