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
    # Step 2: Initialize a counter
    bucket_lowerings = 0

    # Step 3: Iterate over each well
    for well in grid
        # Step 4: Count the water units in the well
        water_units = sum(well)

        # Step 5: Calculate the number of bucket lowerings for the well
        lowerings_for_well = div(water_units, capacity)
        if water_units % capacity != 0
            lowerings_for_well += 1
        end

        # Step 6: Update the counter
        bucket_lowerings += lowerings_for_well
    end

    # Step 7: Return the total number of bucket lowerings
    return bucket_lowerings
end
