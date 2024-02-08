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
    # Calculate the number of times each well needs to be emptied
    bucket_lowers = 0
    for well in grid
        # Count the number of units of water in the well
        units_of_water = sum(well)
        # Calculate the number of times the bucket needs to be lowered for this well
        # and add it to the total count
        bucket_lowers += ceil(units_of_water / capacity)
    end
    return Int(bucket_lowers)
end

# Examples
println(max_fill([[0, 0, 1, 0], [0, 1, 0, 0], [1, 1, 1, 1]], 1)) # Output: 6
println(max_fill([[0, 0, 1, 1], [0, 0, 0, 0], [1, 1, 1, 1], [0, 1, 1, 1]], 2)) # Output: 5
println(max_fill([[0, 0, 0], [0, 0, 0]], 5)) # Output: 0
