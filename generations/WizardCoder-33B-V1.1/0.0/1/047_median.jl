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
    n = length(sorted_l)
    if n % 2 == 0
        return (sorted_l[n � 2] + sorted_l[n � 2 + 1]) / 2
    else
        return sorted_l[div(n + 1, 2)]
    end
end

# Testing the function
println(median([3, 1, 2, 4, 5]))  # Output: 3
println(median([-10, 4, 6, 1000, 10, 20]))  # Output: 8.0

The function works by first sorting the input list and then finding the middle element(s). If the list has an odd number of elements, the function returns the middle element. If the list has an even number of elements, the function returns the average of the two middle elements. 
