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
    n = length(xs)
    if n == 0
        return true
    end

    # Find the index where the sorted array is broken
    break_point = 0
    for i in 1:n-1
        if xs[i] > xs[i+1]
            break_point = i
            break
        end
    end

    # Check if the array is already sorted or has a single break point
    if break_point == 0
        return true
    end

    # Check if the array can be sorted by a single right shift
    for i in 1:break_point
        if xs[i] < xs[i+1]
            return false
        end
    end
    for i in break_point+1:n-1
        if xs[i] > xs[i+1]
            return false
        end
    end
    if xs[1] < xs[n]
        return false
    end

    return true
end
function move_one_ball(xs::Vector{Int})::Bool
    n = length(xs)
    if n == 0
        return true
    end

    # Count the number of break points in the array
    break_points = 0
    for i in 1:n-1
        if xs[i] > xs[i+1]
            break_points += 1
        end
    end

    # Check if the last element is greater than the first element
    if xs[n] > xs[1]
        break_points += 1
    end

    # If there is at most one break point, the array can be sorted by right shift operations
    if break_points <= 1
        return true
    else
        return false
    end
end
