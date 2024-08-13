"""
    move_one_ball(xs::Vector{Int})::Bool

We have an array `xs` of N integers xs[1], xs[2], ..., xs[N].The numbers in the
array will be randomly ordered. Your task is to determine if it is possible to
get an array sorted in non-decreasing order by performing the following
operation on the given array: You are allowed to perform right shift operation
any number of times.

One right shift operation means shifting all elements of the array by one
position in the right direction. The last element of the array will be moved to
the starting position in the array.

If it is possible to obtain the sorted array by performing the above operation
then return `true` else return `false`. If the given array is empty then return
`true`.

Note: The given list is guaranteed to have unique elements.

# Examples

```jldoctest
julia> move_one_ball([3, 4, 5, 1, 2])  # By performin 2 right shift operations, non-decreasing order can be achieved for the given array.
true

julia> move_one_ball([3, 5, 4, 1, 2])  # It is not possible to get non-decreasing order for the given array by performing any number of right shift operations.
false
```
"""
function move_one_ball(xs::Vector{Int})::Bool
    # If the array is empty, return true
    if isempty(xs)
        return true
    end

    # Create a sorted version of the array
    sorted_xs = sort(xs)

    # Check if the array can be sorted by right shifting
    for i in 1:length(xs)
        # Rotate the array by i positions
        rotated_xs = circshift(xs, i)
        # Check if the rotated array is sorted
        if rotated_xs == sorted_xs
            return true
        end
    end

    # If no rotation results in a sorted array, return false
    return false
end
