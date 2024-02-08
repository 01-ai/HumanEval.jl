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
    # Step 1: Sort the input vector
    sorted_l = sort(l)
    
    # Step 2: Determine the number of elements
    n = length(sorted_l)
    
    # Step 3 and 4: Calculate the median based on the number of elements
    if n % 2 == 1
        # If odd, return the middle element
        return sorted_l[div(n + 1, 2)]
    else
        # If even, return the average of the two middle elements
        return (sorted_l[n ÷ 2] + sorted_l[n ÷ 2 + 1]) / 2
    end
end
