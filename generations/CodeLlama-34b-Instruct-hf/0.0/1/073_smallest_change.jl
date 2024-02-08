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
    # Check if the array is already palindromic
    if is_palindromic(xs)
        return 0
    end

    # Find the first element that is not equal to the last element
    i = 1
    while i <= length(xs) && xs[i] == xs[end-i+1]
        i += 1
    end

    # If we reached the end of the array, all elements are equal
    if i > length(xs)
        return 0
    end

    # Find the first element that is not equal to the last element
    j = length(xs)
    while j >= 1 && xs[j] == xs[end-j+1]
        j -= 1
    end

    # If we reached the beginning of the array, all elements are equal
    if j < 1
        return 0
    end

    # Return the minimum number of changes needed to make the array palindromic
    return min(i-1, j)
end

# Test the function
@assert smallest_change([1, 2, 3, 5, 4, 7, 9, 6]) == 4
@assert smallest_change([1, 2, 3, 4, 3, 2, 2]) == 1
@assert smallest_change([1, 2, 3, 2, 1]) == 0
