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
    # Step 1: Sort the list
    sorted_l = sort(l)
    
    # Step 2: Determine the length of the list
    n = length(sorted_l)
    
    # Step 3: Calculate and return the median
    if n % 2 == 1
        # If the list length is odd, return the middle element
        return sorted_l[div(n + 1, 2)]
    else
        # If the list length is even, return the average of the two middle elements
        mid1 = sorted_l[n ÷ 2]
        mid2 = sorted_l[n ÷ 2 + 1]
        return (mid1 + mid2) / 2
    end
end
