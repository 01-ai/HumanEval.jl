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

### Outline

To implement the `move_one_ball` function, we can follow these steps:

1. **Check for an empty array**: If the array is empty, return `true` as per the problem statement.

2. **Identify if the array is already sorted**: If the input array is already in non-decreasing order, return `true` because no operation is needed.

3. **Find the number of shifts needed**:
    - The array can be made sorted in non-decreasing order by right shifts if there is exactly one place in the array where the sequence of numbers breaks the non-decreasing order. This is because a right shift operation can only fix a single "wrap-around" point in the sequence.
    - Iterate through the array to find if there's exactly one point where `xs[i] > xs[i+1]` (considering the array to be 1-indexed as per Julia convention). Keep track of such occurrences.
    - If there's more than one such point, return `false` because it's not possible to sort the array with right shift operations under these conditions.

4. **Check if the array can be sorted with a single shift**:
    - If there's exactly one point where `xs[i] > xs[i+1]`, check if the first element of the array is greater than or equal to the last element. If not, it means the array cannot be sorted into non-decreasing order with a single right shift operation, so return `false`.
    - Otherwise, return `true`.

### Code

Now, let's implement the code based on the outline:

