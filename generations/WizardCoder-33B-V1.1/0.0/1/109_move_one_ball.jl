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
    if isempty(xs)
        return true
    end

    # Find the index of the maximum element
    max_index = findmax(xs)[2]

    # Check if the array is already sorted
    if issorted(xs)
        return true
    end

    # Perform right shift operation
    xs = circshift(xs, -max_index)

    # Check if the array is sorted after right shift operation
    if issorted(xs)
        return true
    else
        return false
    end
end

# Test cases
println(move_one_ball([3, 4, 5, 1, 2]))  # true
println(move_one_ball([3, 5, 4, 1, 2]))  # false
println(move_one_ball([]))  # true
println(move_one_ball([1, 2, 3, 4, 5]))  # true
println(move_one_ball([5, 4, 3, 2, 1]))  # true
println(move_one_ball([1, 3, 2, 5, 4]))  # false
println(move_one_ball([1]))  # true
println(move_one_ball([2, 1]))  # true
println(move_one_ball([1, 2]))  # true
println(move_one_ball([2, 1, 3]))  # false
println(move_one_ball([3, 2, 1]))  # true
println(move_one_ball([1, 3, 2]))  # true
println(move_one_ball([2, 3, 1]))  # false
println(move_one_ball([1, 2, 3, 4, 5, 6]))  # true
println(move_one_ball([6, 1, 2, 3, 4, 5]))  # true
println(move_one_ball([5, 6, 1, 2, 3, 4]))  # false
println(move_one_ball([1, 2, 3, 4, 5, 6, 7]))  # true
println(move_one_ball([7, 1, 2, 3, 4, 5, 6]))  # true
println(move_one_ball([6, 7, 1, 2, 3, 4, 5]))  # false
println(move_one_ball([1, 2, 3, 4, 5, 6, 7, 8]))  # true
println(move_one_ball([8, 1, 2, 3, 4, 5, 6, 7]))  # true
println(move_one_ball([7, 8, 1, 2, 3, 4, 5, 6]))  # false
println(move_one_ball([1, 2, 3, 4, 5, 6, 7, 8, 9]))  # true
println(move_one_ball([9, 1, 2, 3, 4, 5, 6, 7, 8]))  # true
println(move_one_ball([8, 9, 1, 2, 3, 4, 5, 6, 7]))  # false
println(move_one_ball([1, 2, 3, 4, 5, 6, 7, 8, 9, 10]))  # true
println(move_one_ball([10, 1, 2, 3, 4, 5, 6, 7, 8, 9]))  # true
println(move_one_ball([9, 10, 1, 2, 3, 4, 5, 6, 7, 8]))  # false
println(move_one_ball([1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11]))  # true
println(move_one_ball([11, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10]))  # true
println(move_one_ball([10, 11, 1, 2, 3, 4, 5, 6, 7, 8, 9]))  # false
println(move_one_ball([1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12]))  # true
println(move_one_ball([12, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11]))  # true
println(move_one_ball([11, 12, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10]))  # false
println(move_one_ball([1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13]))  # true
println(move_one_ball([13, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12]))  # true
println(move_one_ball([12, 13, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11]))  # false
println(move_one_ball([1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14]))  # true
println(move_one_ball([14, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13]))  # true
println(move_one_ball([13, 14, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12]))  # false
println(move_one_ball([1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15]))  # true
println(move_one_ball([15, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14]))  # true
println(move_one_ball([14, 15, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13]))  # false
println(move_one_ball([1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16]))  # true
println(move_one_ball([16, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15]))  # true
println(move_one_ball([15, 16, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14]))  # false
println(move_one_ball([1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17]))  # true
println(move_one_ball([17, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16]))  # true
println(move_one_ball([16, 17, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15]))  # false
println(move_one_ball([1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18]))  # true
println(move_one_ball([18, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17]))  # true
println(move_one_ball([17, 18, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16]))  # false
println(move_one_ball([1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19]))  # true
println(move_one_ball([19, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18]))  # true
println(move_one_ball([18, 19, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17]))  # false
println(move_one_ball([1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20]))  # true
println(move_one_ball([20, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19]))  # true
println(move_one_ball([19, 20, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18]))  # false
println(move_one_ball([1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21]))  # true
println(move_one_ball([21, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20]))  # true
println(move_one_ball([20, 21, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19]))  # false
println(move_one_ball([1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22]))  # true
println(move_one_ball([22, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21]))  # true
println(move_one_ball([21, 22, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20]))  # false
println(move_one_ball([1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23]))  # true
println(move_one_ball([23, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22]))  # true
println(move_one_ball([22, 23, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21]))  # false
println(move_one_ball([1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24]))  # true
println(move_one_ball([24, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23]))  # true
println(move_one_ball([23, 24, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22]))  # false
println(move_one_ball([1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25]))  # true
println(move_one_ball([25, 1, 2, 3,
