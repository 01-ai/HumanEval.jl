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
    N = length(grid)
    if N < 2
        throw(ArgumentError("Grid must have at least 2 rows and 2 columns."))
    end

    # Initialize the minimum path with the first cell's value
    min_path = [typemax(Int)]

    # Define a helper function to check if a move is valid
    function is_valid(row, col)
        return 1 <= row <= N && 1 <= col <= N
    end

    # Define a helper function to get the neighbors of a cell
    function get_neighbors(row, col)
        neighbors = []
        for dr = -1:1, dc = -1:1
            if dr != 0 || dc != 0  # Exclude the current cell
                new_row, new_col = row + dr, col + dc
                if is_valid(new_row, new_col)
                    push!(neighbors, (new_row, new_col))
                end
            end
        end
        return neighbors
    end

    # Define a recursive function to explore paths
    function explore_path(row, col, path, depth)
        if depth == k
            # If the current path is lexicographically less than the current minimum, update it
            if path < min_path
                global min_path = path
            end
            return
        end

        # Explore neighbors
        for (new_row, new_col) in get_neighbors(row, col)
            new_path = vcat(path, grid[new_row][new_col])
            explore_path(new_row, new_col, new_path, depth + 1)
        end
    end

    # Start exploring from each cell
    for i in 1:N, j in 1:N
        explore_path(i, j, [grid[i][j]], 1)
    end

    return min_path
end

# Example usage
# grid = [[1, 2, 3
