"""
    max_fill(grid::Vector{Vector{Int}}, capacity::Int)::Int

You are given a rectangular grid of wells. Each row represents a single well,
and each 1 in a row represents a single unit of water. Each well has a
corresponding bucket that can be used to extract water from it, and all buckets
have the same capacity. Your task is to use the buckets to empty the wells.
Output the number of times you need to lower the buckets.

!!! note

    Constraints: * all wells have the same length * 1 <= grid.length <= 10^2 * 1 <= grid[:,1].length <= 10^2 * grid[i][j] -> 0 | 1 * 1 <= capacity <= 10

# Examples

```jldoctest
julia> max_fill([[0, 0, 1, 0], [0, 1, 0, 0], [1, 1, 1, 1]], 1)
6

julia> max_fill([[0, 0, 1, 1], [0, 0, 0, 0], [1, 1, 1, 1], [0, 1, 1, 1]], 2)
5

julia> max_fill([[0, 0, 0], [0, 0, 0]], 5)
0
```
"""


function max_fill(grid::Vector{Vector{Int}}, capacity::Int)::Int
    m, n = size(grid)
    bucket_count = 0
    for j in 1:n
        bucket_capacity = capacity
        for i in 1:m
            if grid[i][j] == 1
                bucket_capacity -= 1
                if bucket_capacity < 0
                    bucket_count += 1
                    bucket_capacity = capacity - 1
                end
            end
        end
        if bucket_capacity < capacity
            bucket_count += 1
        end
    end
    return bucket_count
end

# Test cases
println(max_fill([[0, 0, 1, 0], [0, 1, 0, 0], [1, 1, 1, 1]], 1)) # 6
println(max_fill([[0, 0, 1, 1], [0, 0, 0, 0], [1, 1, 1, 1], [0, 1, 1, 1]], 2)) # 5
println(max_fill([[0, 0, 0], [0, 0, 0]], 5)) # 0 
