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
    # Define a function to calculate the sum of digits
    function sum_of_digits(n::Int)
        sum_digits = 0
        while n != 0
            sum_digits += abs(n % 10)
            n = div(n, 10)
        end
        return sum_digits
    end

    # Create a list of tuples with (index, number, sum of digits)
    sorted_list = [(i, num, sum_of_digits(num)) for (i, num) in enumerate(nums)]

    # Sort the list based on the sum of digits and then by index
    sorted_list = sort(sorted_list, by = x -> (x[3], x[1]))

    # Extract the numbers from the sorted list
    return [num for (_, num, _) in sorted_list]
end

# Example usage:
# order_by_points([1, 11, -1, -11, -12])
# order_by_points(Int[])
