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
    # Create a dictionary to store the sum of digits and the index of each number
    num_dict = Dict{Int, Vector{Int}}()
    for (i, num) in enumerate(nums)
        digit_sum = sum(map(x -> parse(Int, x), string(abs(num))))
        if haskey(num_dict, digit_sum)
            push!(num_dict[digit_sum], i)
        else
            num_dict[digit_sum] = [i]
        end
    end

    # Sort the keys of the dictionary in ascending order
    sorted_keys = sort(collect(keys(num_dict)))

    # Create a vector to store the sorted numbers
    sorted_nums = Int[]

    # Iterate over the sorted keys and append the numbers to the sorted_nums vector
    for key in sorted_keys
        for i in num_dict[key]
            push!(sorted_nums, nums[i])
        end
    end

    return sorted_nums
end
