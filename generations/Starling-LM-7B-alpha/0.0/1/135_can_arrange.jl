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
    n = length(xs)
    result = -1
    for i in 1:(n-1)
        if xs[i] < xs[i+1]
            result = i
        end
    end
    return result
end
