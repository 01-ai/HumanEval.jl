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


function rolling_max(numbers::Vector{Int})::Vector{Int}
    max_val = numbers[1]
    result = Int[]
    for num in numbers
        if num > max_val
            max_val = num
        end
        push!(result, max_val)
    end
    return result
end

# Testing the function
numbers = [1, 2, 3, 2, 3, 4, 2]
println(rolling_max(numbers)) # Expected output: [1, 2, 3, 3, 3, 4, 4]
