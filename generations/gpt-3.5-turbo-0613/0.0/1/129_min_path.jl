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
    min_path = []
    min_path_value = Inf
    
    function dfs(cell::Tuple{Int, Int}, path::Vector{Int})
        if length(path) == k
            if path < min_path_value
                min_path_value = path
                min_path = copy(path)
            end
            return
        end
        
        x, y = cell
        for dx = -1:1, dy = -1:1
            nx, ny = x + dx, y + dy
            if 1 <= nx <= N && 1 <= ny <= N && (dx == 0 || dy == 0)
                push!(path, grid[nx][ny])
                dfs((nx, ny), path)
                pop!(path)
            end
        end
    end
    
    for i = 1:N, j = 1:N
        dfs((i, j), [grid[i][j]])
    end
    
    return min_path
end
println(min_path([[1, 2, 3], [4, 5, 6], [7, 8, 9]], 3))  # [1, 2, 1]
println(min_path([[5, 9, 3], [4, 1, 6], [7, 8, 2]], 1))  # [1]
