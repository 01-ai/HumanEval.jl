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
    # Base case: array is already palindromic
    if ispalindrome(xs)
        return 0
    end

    # Initialize the minimum number of changes needed
    min_changes = Int(length(xs) / 2)

    # Loop through the array and check if we can make it palindromic by
    # changing the first half with the second half
    for i in 1:min_changes
        if ispalindrome(xs[1:i] ∪ xs[end - i + 1:end])
            return i
        end
    end

    # If we didn't find a solution with the first half, try with the second half
    for i in min_changes:-1:1
        if ispalindrome(xs[1:i] ∪ xs[end - i + 1:end])
            return i
        end
    end

    # If we didn't find a solution with the first or second half, we need to
    # change the entire array
    return length(xs)
end

# Helper function to check if an array is palindromic
function ispalindrome(xs::Vector{Int})
    for i in 1:length(xs)÷2
        if xs[i] != xs[length(xs) - i + 1]
            return false
        end
    end
    return true
end
