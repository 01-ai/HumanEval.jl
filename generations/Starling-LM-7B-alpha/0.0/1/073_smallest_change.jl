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
    # Initialize count to 0
    count = 0

    # Check if the array is already palindromic
    if xs == reverse(xs)
        return count
    end

    # Iterate through the array from both ends
    left = 1
    right = length(xs)

    while left < right
        # If the elements at the left and right indices are not equal, increment the count
        if xs[left] != xs[right]
            count += 1
        end

        # Move the left index one step to the right
        left += 1
        # Move the right index one step to the left
        right -= 1
    end

    # Return the minimum number of elements that need to be changed
    return count
end
