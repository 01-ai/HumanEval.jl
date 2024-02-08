"""
    smallest_change(xs::Vector{Int})::Int

Given an array arr of integers, find the minimum number of elements that need to
be changed to make the array palindromic. A palindromic array is an array that
is read the same backwards and forwards. In one change, you can change one
element to any other element.

# Examples

```jldoctest
julia> smallest_change([1, 2, 3, 5, 4, 7, 9, 6])
4

julia> smallest_change([1, 2, 3, 4, 3, 2, 2])
1

julia> smallest_change([1, 2, 3, 2, 1])
0
```
"""
function smallest_change(xs::Vector{Int})::Int
    left = 1
    right = length(xs)
    changes = 0

    while left < right
        if xs[left] != xs[right]
            changes += 1
        end
        left += 1
        right -= 1
    end

    return changes
end
