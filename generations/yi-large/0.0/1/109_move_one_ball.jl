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
    # Check if the array is empty or has only one element
    if length(xs) <= 1
        return true
    end

    # Find the minimum element and its index
    min_val = minimum(xs)
    min_index = findfirst(isequal(min_val), xs)

    # Check if the array is already sorted from the minimum element
    is_sorted = true
    for i in min_index:length(xs)-1
        if xs[i] > xs[i+1]
            is_sorted = false
            break
        end
    end

    # Check if the array is sorted from the minimum element to the end, and then from the start to the element before the minimum
    if is_sorted
        for i in 1:min_index-1
            if xs[i] < xs[min_index]
                return false
            end
        end
        return true
    else
        return false
    end
end

# Test cases
println(move_one_ball([3, 4, 5, 1, 2]))  # true
println(move_one_ball([3, 5, 4, 1, 2]))  # false

