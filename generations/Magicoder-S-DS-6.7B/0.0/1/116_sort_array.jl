"""
    sort_array(arr::Vector{Int})::Vector{Int}

In this Kata, you have to sort an array of non-negative integers according to
number of ones in their binary representation in ascending order. For similar
number of ones, sort based on decimal value.

It must be implemented like this:

# Examples

```jldoctest
julia> sort_array([1, 5, 2, 3, 4]) == [1, 2, 4, 3, 5]
true

julia> sort_array([1, 0, 2, 3, 4]) == [0, 1, 2, 4, 3]
true
```
"""
function sort_array(arr::Vector{Int})::Vector{Int}
    # Create a tuple for each number in the array, where the first element is the
    # number of ones in its binary representation, and the second element is the
    # number itself.
    num_ones_and_nums = [(count_ones(num), num) for num in arr]

    # Sort the array based on the first element of the tuple (number of ones in
    # binary representation), and then based on the second element (the number
    # itself).
    sorted_nums = sort(num_ones_and_nums)

    # Return the sorted array of numbers.
    return [num for (_, num) in sorted_nums]
end

# Helper function to count the number of ones in the binary representation of a number.
function count_ones(num::Int)::Int
    count = 0
    while num > 0
        count += num % 2
        num = div(num, 2)
    end
    return count
end
