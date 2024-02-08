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
    # Step 1: Initialize the maximum value to the first element of the list
    max_val = xs[1]
    
    # Step 2: Iterate through each element in the list
    for x in xs
        # If the current element is greater than the current maximum, update the maximum
        if x > max_val
            max_val = x
        end
    end
    
    # Step 3: Return the maximum value
    return max_val
end
