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

using DataStructures

function min_path(grid::Vector{Vector{Int}}, k::Int)::Vector{Int}
    N = length(grid)
    directions = [(-1, 0), (1, 0), (0, -1), (0, 1)]

    function is_valid(x, y)
        return 1 <= x <= N && 1 <= y <= N
    end

    function bfs(start_x, start_y)
        queue = Queue{Tuple{Int, Int, Vector{Int}}}()
        enqueue!(queue, (start_x, start_y, [grid[start_x][start_y]]))

        while !isempty(queue)
            x, y, path = dequeue!(queue)

            if length(path) == k
                return path
            end

            for dir in directions
                new_x, new_y = x + dir[1], y + dir[2]
                if is_valid(new_x, new_y)
                    new_path = copy(path)
                    push!(new_path, grid[new_x][new_y])
                    enqueue!(queue, (new_x, new_y, new_path))
                end
            end
        end

        return []
    end

    min_path = []
    for i in 1:N
        for j in 1:N
            path = bfs(i, j)
            if isempty(min_path) || path < min_path
                min_path = path
            end
        end
    end

    return min_path
end

# Examples
println(min_path([[1, 2, 3], [4, 5, 6], [7, 8, 9]], 3))
println(min_path([[5, 9, 3], [4, 1, 6], [7, 8, 2]], 1))
