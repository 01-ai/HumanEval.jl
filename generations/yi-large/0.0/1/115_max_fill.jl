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
    # Initialize the total water extracted to 0
    total_extracted = 0
    
    # Loop through each well (row) in the grid
    for well in grid
        # Count the number of units of water in the current well
        water_in_well = count(x -> x == 1, well)
        
        # If there is water in the well, extract it in batches of the bucket's capacity
        if water_in_well > 0
            # Add the number of extractions needed for the current well to the total
            total_extracted += ceil(Int, water_in_well / capacity)
        end
    end
    
    # Return the total number of extractions
    return total_extracted
end

# Examples
# julia> max_fill([[0, 0, 1, 0], [0, 1, 0, 0], [1, 1, 1, 1]], 1)
# 6

# julia> max_fill([[0, 0, 1, 1], [0, 0, 0, 0], [1, 1, 1, 1], [0, 1, 1, 1]], 2)
# 5

# julia> max_fill([[0, 0, 0], [0, 0, 0]], 5)
# 0
