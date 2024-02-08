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
    # Step 2 & 3: Calculate the sum of digits for each number and pair it with its original index
    nums_with_sum_and_index = [(num, sum(digits(abs(num))), index) for (index, num) in enumerate(nums)]
    
    # Step 4: Sort the numbers based on the sum of their digits and then by their original index
    sort!(nums_with_sum_and_index, by = x -> (x[2], x[3]))
    
    # Step 5: Extract and return the sorted numbers
    return [x[1] for x in nums_with_sum_and_index]
end
