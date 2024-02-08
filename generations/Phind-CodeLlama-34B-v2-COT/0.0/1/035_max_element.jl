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
    # Step 1: Initialize max_val with the first element of the list
    max_val = xs[1]

    # Step 2: Iterate over the list starting from the second element
    for x in xs[2:end]
        # Step 3: Compare each element with max_val and update max_val if necessary
        if x > max_val
            max_val = x
        end
    end

    # Step 4: Return the maximum element
    return max_val
end
