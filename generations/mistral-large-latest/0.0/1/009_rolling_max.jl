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
    rolling_max_seq = Vector{Int}()
    max_so_far = typemin(Int)
    for number in numbers
        max_so_far = max(max_so_far, number)
        push!(rolling_max_seq, max_so_far)
    end
    return rolling_max_seq
end
