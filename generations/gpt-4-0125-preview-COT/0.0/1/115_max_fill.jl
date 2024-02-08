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
    # Step 1: Initialize the counter
    total_lowerings = 0

    # Step 2: Iterate through each well in the grid
    for well in grid
        # Calculate the total amount of water in the current well
        total_water = sum(well)
        
        # Determine the number of times the bucket needs to be lowered for this well
        lowerings_for_well = div(total_water, capacity)
        
        # If there's a remainder, add one more lowering
        if total_water % capacity > 0
            lowerings_for_well += 1
        end
        
        # Add the number of lowerings for this well to the total counter
        total_lowerings += lowerings_for_well
    end

    # Step 3: Return the total number of lowerings
    return total_lowerings
end
