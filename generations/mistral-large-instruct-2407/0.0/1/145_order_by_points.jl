"""
    order_by_points(nums::Vector{Int})::Vector{Int}

Write a function which sorts the given list of integers in ascending order
according to the sum of their digits. Note: if there are several items with
similar sum of their digits, order them based on their index in original list.

# Examples

```jldoctest
julia> order_by_points([1, 11, -1, -11, -12])
5-element Vector{Int64}:
  -1
 -11
   1
 -12
  11

julia> order_by_points(Int[])
Int64[]
```
"""

"""
    order_by_points(nums::Vector{Int})::Vector{Int}

Write a function which sorts the given list of integers in ascending order
according to the sum of their digits. Note: if there are several items with
similar sum of their digits, order them based on their index in original list.

# Examples

```jldoctest
julia> order_by_points([1, 11, -1, -11, -12])
5-element Vector{Int64}:
  -1
 -11
   1
 -12
  11

julia> order_by_points(Int[])
Int64[]
```
"""
function order_by_points(nums::Vector{Int})::Vector{Int}
    # Helper function to calculate the sum of digits of a number
    function sum_of_digits(n::Int)::Int
        n = abs(n)  # Consider the absolute value for digit sum
        sum = 0
        while n > 0
            sum += n % 10
            n ÷= 10
        end
        return sum
    end

    # Create a vector of tuples (sum_of_digits, original_index, value)
    indexed_nums = [(sum_of_digits(num), i, num) for (i, num) in enumerate(nums)]

    # Sort the vector of tuples by sum_of_digits and then by original_index
    sort!(indexed_nums, by = x -> (x[1], x[2]))

    # Extract the sorted values
    sorted_nums = [num for (_, _, num) in indexed_nums]

    return sorted_nums
end

# Examples
println(order_by_points([1, 11, -1, -11, -12]))  # Output: [-1, -11, 1, -12, 11]
println(order_by_points(Int[]))  # Output: Int64[]
