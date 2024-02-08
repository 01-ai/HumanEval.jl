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
    # Initialize the number of fills to 0
    fills = 0

    # Loop through the rows of the grid
    for i in 1:length(grid)
        # Initialize the number of units to fill in this row
        units_to_fill = 0

        # Loop through the columns of the current row
        for j in 1:length(grid[i])
            # If the current cell is 1, add to the units to fill
            if grid[i][j] == 1
                units_to_fill += 1
            end

            # If the bucket is full, add a fill to the total
            if units_to_fill == capacity
                fills += 1
            end
        end
    end

    return fills
end
