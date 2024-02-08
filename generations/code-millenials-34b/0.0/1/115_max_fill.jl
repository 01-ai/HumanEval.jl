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
    count = 0
    for row in grid
        for i in 1:capacity:length(row)
            count += sum(row[i:i+capacity-1])
        end
    end
    return count
end

# Test cases
println(max_fill([[0, 0, 1, 0], [0, 1, 0, 0], [1, 1, 1, 1]], 1)) # Expected output: 6
println(max_fill([[0, 0, 1, 1], [0, 0, 0, 0], [1, 1, 1, 1], [0, 1, 1, 1]], 2)) # Expected output: 5
println(max_fill([[0, 0, 0], [0, 0, 0]], 5)) # Expected output: 0
