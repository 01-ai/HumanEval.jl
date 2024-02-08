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
    directions = [(0, 1), (1, 0), (0, -1), (-1, 0)]  # right, down, left, up
    visited = fill(false, N, N)
    min_path = fill(0, k)
    min_path_length = N * N + 1

    function bfs(row, col, path, path_length)
        if path_length == k
            if path < min_path
                min_path = path
                min_path_length = k
            end
            return
        end

        for (dr, dc) in directions
            nr, nc = row + dr, col + dc
            if 1 <= nr <= N && 1 <= nc <= N && !visited[nr, nc]
                visited[nr, nc] = true
                new_path = [path; grid[nr, nc]]
                bfs(nr, nc, new_path, path_length + 1)
                visited[nr, nc] = false
            end
        end
    end

    for i in 1:N, j in 1:N
        visited[i, j] = true
        bfs(i, j, [grid[i, j]], 1)
        visited[i, j] = false
    end

    return min_path[1:min_path_length]
end
