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
    # Initialize the count of times the bucket needs to be lowered
    count = 0
    
    # Iterate over each well (row) in the grid
    for well in grid
        # Initialize the current capacity of the bucket
        current_capacity = capacity
        
        # Iterate over each unit of water in the well
        for water in well
            # If there is water and the bucket is not full
            if water == 1 && current_capacity > 0
                # Fill the bucket and decrement its capacity
                current_capacity -= 1
            # If the bucket is full or there is no water, move to the next well
            elseif current_capacity == 0 || water == 0
                # Increment the count of times the bucket needs to be lowered
                count += 1
                # Reset the bucket's capacity
                current_capacity = capacity
            end
        end
        # If the bucket is not empty after processing the well, increment the count
        if current_capacity < capacity
            count += 1
        end
    end
    
    # Return the total count of times the bucket needs to be lowered
    return count
end
