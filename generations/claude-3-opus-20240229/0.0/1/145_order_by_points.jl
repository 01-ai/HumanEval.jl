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
    # Define a helper function to calculate the sum of digits
    function digit_sum(n::Int)::Int
        s = 0
        n = abs(n)
        while n > 0
            s += n % 10
            n ÷= 10
        end
        return s
    end

    # Create a vector of tuples containing the original index and digit sum for each number
    indexed_sums = [(i, digit_sum(num)) for (i, num) in enumerate(nums)]

    # Sort the vector of tuples based on digit sum and original index
    sorted_indices = sort(indexed_sums, by=x->(x[2], x[1]))

    # Extract the original numbers based on the sorted indices
    sorted_nums = [nums[i] for (i, _) in sorted_indices]

    return sorted_nums
end
