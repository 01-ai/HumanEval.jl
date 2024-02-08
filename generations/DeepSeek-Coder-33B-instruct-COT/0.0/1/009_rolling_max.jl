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
    max_numbers = Int[]
    max_so_far = typemin(Int)
    for num in numbers
        max_so_far = max(max_so_far, num)
        push_max_numbers(max_numbers, max_so_far)
    end
    return max_numbers
end
function push_max_numbers(max_numbers::Vector{Int}, max_so_far::Int)
    push_max_numbers(max_numbers, max_so_far)
end
