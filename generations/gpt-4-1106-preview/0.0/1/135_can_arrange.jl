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
    # Iterate through the array from the second element to the end
    for i in 2:length(xs)
        # Check if the current element is not greater than or equal to the previous one
        if xs[i] < xs[i-1]
            # Return the index of the current element
            return i
        end
    end
    # If no such element is found, return -1
    return -1
end

# Examples
println(can_arrange([1, 2, 4, 3, 5])) # Should print 4
println(can_arrange([1, 2, 3]))       # Should print -1
