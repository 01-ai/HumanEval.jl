"""
    min_path(grid::Vector{Vector{Int}}, k::Int)::Vector{Int}

Given a grid with `N` rows and `N` columns (`N >= 2`) and a positive integer
`k`, each cell of the grid contains a value. Every integer in the range `[1, N * N]` inclusive appears exactly once on the cells of the grid.

You have to find the minimum path of length k in the grid. You can start from
any cell, and in each step you can move to any of the neighbor cells, in other
words, you can go to cells which share an edge with you current cell.

Please note that a path of length `k` means visiting exactly `k` cells (not
necessarily distinct).

You CANNOT go off the grid.

A path `A` (of length k) is considered less than a path `B` (of length k) if
after making the ordered lists of the values on the cells that `A` and `B` go
through (let's call them `lst_A` and `lst_B`), `lst_A` is lexicographically less
than `lst_B`, in other words, there exist an integer index `i` (1 <= i <= k)
such that `lst_A[i] < lst_B[i]` and for any `j` (1 <= j < i) we have `lst_A[j] = lst_B[j]`. It is guaranteed that the answer is unique. Return an ordered list of
the values on the cells that the minimum path go through.

# Examples

```jldoctest
julia> min_path([[1, 2, 3], [4, 5, 6], [7, 8, 9]], 3)
3-element Vector{Int64}:
 1
 2
 1

julia> min_path([[5, 9, 3], [4, 1, 6], [7, 8, 2]], 1)
1-element Vector{Int64}:
 1
```
"""
function min_path(grid::Vector{Vector{Int}}, k::Int)::Vector{Int}
    # Initialize the minimum path to be the first cell
    min_path = [grid[1][1]]
    # Initialize the current cell to be the first cell
    current_cell = grid[1][1]
    # Initialize the number of steps to be taken to 0
    num_steps = 0

    while num_steps < k
        # Get the neighbors of the current cell
        neighbors = get_neighbors(grid, current_cell)
        # Find the neighbor with the minimum value
        min_neighbor = minimum(neighbors)
        # Add the minimum neighbor to the minimum path
        min_path = [min_path; min_neighbor]
        # Update the current cell to be the minimum neighbor
        current_cell = min_neighbor
        # Increment the number of steps
        num_steps += 1
    end

    return min_path
end

# Function to get the neighbors of a cell
function get_neighbors(grid::Vector{Vector{Int}}, cell::Int)::Vector{Int}
    # Get the row and column of the cell
    row, col = cell
    # Initialize the neighbors to be an empty vector
    neighbors = Vector{Int}()

    # Check the neighbors in the same row
    for i in 1:size(grid, 1)
        if i != row && grid[i][col] != 0
            push!(neighbors, grid[i][col])
        end
    end

    # Check the neighbors in the same column
    for j in 1:size(grid, 2)
        if j != col && grid[row][j] != 0
            push!(neighbors, grid[row][j])
        end
    end

    return neighbors
end
