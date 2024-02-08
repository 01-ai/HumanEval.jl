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
    # Sort the list
    sorted_l = sort(l)

    # Check if the list has an even or odd number of elements
    if length(sorted_l) % 2 == 0
        # If even, return the average of the middle two elements
        return (sorted_l[end ÷ 2] + sorted_l[end ÷ 2 + 1]) / 2
    else
        # If odd, return the middle element
        return sorted_l[end ÷ 2 + 1]
    end
end
