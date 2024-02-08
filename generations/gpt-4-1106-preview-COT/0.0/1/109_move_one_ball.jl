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
    # Step 1: Check if the array is empty
    if isempty(xs)
        return true
    end
    
    # Step 2: Find the index where the array is not sorted
    n = length(xs)
    index = 0
    for i in 1:(n-1)
        if xs[i] > xs[i+1]
            index = i
            break
        end
    end
    
    # Step 3: If no such index is found, the array is already sorted
    if index == 0
        return true
    end
    
    # Step 4: Check if the subarray is sorted and the last element is less than or equal to the first element
    for i in (index+1):(n-1)
        if xs[i] > xs[i+1]
            return false
        end
    end
    
    # Step 5: Return true if the last element is less than or equal to the first element
    return xs[n] <= xs[1]
end
