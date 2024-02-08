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
    if length(xs) == 0
        return -1
    end

    max_index = 1
    for i in 2:length(xs)
        if xs[i] < xs[i - 1]
            max_index = i - 1
            break
        end
    end

    return max_index
end
