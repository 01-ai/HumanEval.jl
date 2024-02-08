"""
    max_element(xs)

Return maximum element in the list.

# Examples

```jldoctest
julia> max_element([1, 2, 3])
3

julia> max_element([5, 3, -5, 2, -3, 3, 9, 0, 123, 1, -10])
123
```
"""
function max_element(xs)
    # Check if the list is empty
    if isempty(xs)
        error("List is empty")
    end

    # Initialize max_val with the first element of the list
    max_val = xs[1]

    # Iterate through the list to find the maximum value
    for x in xs
        if x > max_val
            max_val = x
        end
    end

    return max_val
end
