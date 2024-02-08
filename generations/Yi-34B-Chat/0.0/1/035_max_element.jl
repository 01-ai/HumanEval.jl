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
    # Base case: empty list
    if length(xs) == 0
        throw(ArgumentError("Empty list cannot have a maximum element"))
    end

    # Initialize the maximum element to the first element of the list
    max_so_far = xs[1]

    # Iterate through the list and update the maximum element
    for x in xs[2:end]
        if x > max_so_far
            max_so_far = x
        end
    end

    return max_so_far
end
