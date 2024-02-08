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
    sorted_list = sort(l)

    # Step 2: Find the middle index
    middle_index = length(sorted_list) ÷ 2 + 1

    # Step 3: Return the median
    if iseven(length(sorted_list))
        return (sorted_list[middle_index - 1] + sorted_list[middle_index]) / 2
    else
        return sorted_list[middle_index]
    end
end
