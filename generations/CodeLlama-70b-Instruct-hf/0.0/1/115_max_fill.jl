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
    # Initialize the number of times the buckets are lowered
    times_lowered = 0

    # Iterate over each row of the grid
    for row in grid
        # Initialize the number of units of water in the current row
        units_water = 0

        # Iterate over each column of the current row
        for col in row
            # If the current cell contains water, increment the number of units of water
            if col == 1
                units_water += 1
            end
        end

        # Calculate the number of times the buckets need to be lowered for the current row
        times_lowered += ceil(Int, units_water / capacity)
    end

    return times_lowered
end
