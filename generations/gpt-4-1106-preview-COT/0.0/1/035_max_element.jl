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
    # Step 2: Check if the list is empty
    if isempty(xs)
        throw(ArgumentError("The list cannot be empty"))
    end
    
    # Step 3: Initialize max_val with the first element of the list
    max_val = xs[1]
    
    # Step 4: Iterate over the elements of the list
    for x in xs[2:end]
        # Step 5: Update max_val if the current element is greater
        if x > max_val
            max_val = x
        end
    end
    
    # Step 6: Return the maximum element
    return max_val
end
println(max_element([1, 2, 3])) # Should print 3
println(max_element([5, 3, -5, 2, -3, 3, 9, 0, 123, 1, -10])) # Should print 123
