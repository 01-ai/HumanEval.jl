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
    # Calculate the total number of times buckets need to be lowered
    total_dips = 0
    
    # Iterate over each well (each row in the grid)
    for well in grid
        # Count the number of units of water in the current well
        water_units = sum(well)
        
        # Calculate the number of dips needed for this well
        # Each dip can remove 'capacity' units of water
        dips_for_this_well = (water_units + capacity - 1) ÷ capacity
        
        # Accumulate the total number of dips
        total_dips += dips_for_this_well
    end
    
    return total_dips
end
