"""
can_arrange(xs::Vector{Int})::Int

Create a function which returns the largest index of an element which is not
greater than or equal to the element immediately preceding it. If no such
element exists then return -1. The given array will not contain duplicate
values.

# Examples

```jldoctest
julia> can_arrange([1, 2, 4, 3, 5])
4

julia> can_arrange([1, 2, 3])
-1
```
"""
function can_arrange(xs::Vector{Int})::Int
    # Initialize the result to -1, indicating no such element exists
    result = -1

    # Iterate over the array, looking for an element that is not greater than or equal to
    # the previous element
    for i in 2:length(xs)
        if xs[i] <= xs[i-1]
            # If we find such an element, update the result
            result = i - 1
        end
    end

    # Return the result
    return result
end
