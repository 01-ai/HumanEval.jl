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
    num_wells = length(grid)
    well_depth = length(grid[1])
    
    total_fills = 0
    current_fill = zeros(Int, num_wells)
    
    for depth in 1:well_depth
        for well in 1:num_wells
            if grid[well][depth] == 1
                current_fill[well] += 1
                if current_fill[well] == capacity
                    total_fills += 1
                    current_fill[well] = 0
                end
            end
        end
    end
    
    # Handle partially filled buckets at the end
    total_fills += sum(current_fill .> 0)
    
    return total_fills
end
