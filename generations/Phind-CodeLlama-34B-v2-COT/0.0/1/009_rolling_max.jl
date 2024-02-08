"""
    rolling_max(numbers::Vector{Int})::Vector{Int}

From a given list of integers, generate a list of rolling maximum element found
until given moment in the sequence.

```jldoctest
julia> rolling_max([1, 2, 3, 2, 3, 4, 2])
7-element Vector{Int64}:
 1
 2
 3
 3
 3
 4
 4
```
"""



# Outline:
# 1. Initialize an empty vector to store the rolling maximums.
# 2. Iterate through the given list of integers.
# 3. For each integer, compare it with the current maximum.
# 4. If the integer is greater than the current maximum, update the maximum and add it to the rolling maximums.
# 5. If the integer is less than or equal to the current maximum, just add the current maximum to the rolling maximums.
# 6. Return the vector of rolling maximums.

# Code:
function rolling_max(numbers::Vector{Int})::Vector{Int}
    # 1. Initialize an empty vector to store the rolling maximums.
    rolling_maximums = Int[]

    # 2. Iterate through the given list of integers.
    for number in numbers
        # 3. For each integer, compare it with the current maximum.
        if isempty(rolling_maximums) || number > rolling_maximums[end]
            # 4. If the integer is greater than the current maximum, update the maximum and add it to the rolling maximums.
            push!(rolling_maximums, number)
        else
            # 5. If the integer is less than or equal to the current maximum, just add the current maximum to the rolling maximums.
            push!(rolling_maximums, rolling_maximums[end])
        end
    end

    # 6. Return the vector of rolling maximums.
    return rolling_maximums
end
