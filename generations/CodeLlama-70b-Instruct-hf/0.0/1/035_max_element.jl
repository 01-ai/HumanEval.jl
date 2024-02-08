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
    # Initialize the maximum element with the first element of the list
    max_element = xs[1]

    # Iterate through the list and update the maximum element if a larger element is found
    for x in xs
        if x > max_element
            max_element = x
        end
    end

    # Return the maximum element
    return max_element
end
