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
    # Check if the grid is empty or the k is less than 1
    if isempty(grid) || k < 1
        return []
    end

    # Initialize the result array
    result = []

    # Find the minimum value in the grid
    min_val = minimum(grid)

    # Find the index of the minimum value in the grid
    min_idx = findfirst(x -> x == min_val, grid)

    # Append the minimum value to the result array
    push!(result, min_val)

    # Repeat the process k times
    for i in 1:k
        # Find the neighboring cells of the current cell
        neighbors = find_neighbors(grid, min_idx)

        # Find the minimum value among the neighbors
        min_val = minimum(neighbors)

        # Find the index of the minimum value among the neighbors
        min_idx = findfirst(x -> x == min_val, neighbors)

        # Append the minimum value to the result array
        push!(result, min_val)
    end

    return result
end

# Function to find the neighboring cells of a given cell
function find_neighbors(grid::Vector{Vector{Int}}, idx::CartesianIndex)
    neighbors = []

    # Check if the cell has a neighbor to the left
    if idx[2] > 1
        push!(neighbors, grid[idx[1]][idx[2] - 1])
    end

    # Check if the cell has a neighbor to the right
    if idx[2] < length(grid[idx[1]])
        push!(neighbors, grid[idx[1]][idx[2] + 1])
    end

    # Check if the cell has a neighbor above
    if idx[1] > 1
        push!(neighbors, grid[idx[1] - 1][idx[2]])
    end

    # Check if the cell has a neighbor below
    if idx[1] < length(grid)
        push!(neighbors, grid[idx[1] + 1][idx[2]])
    end

    return neighbors
end
