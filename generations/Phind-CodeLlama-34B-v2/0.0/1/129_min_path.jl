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
    visited = falses(N, N)
    dists = PriorityQueue{Tuple{Int,Int,Int},Int}()
    enqueue!(dists, (grid[1][1], 0, 0), 1)
    prev = Dict{Tuple{Int,Int},Tuple{Int,Int}}()

    function neighbors(r, c)
        for dr in [-1, 0, 1], dc in [-1, 0, 1]
            if !(dr == 0 && dc == 0) && 1 <= r + dr <= N && 1 <= c + dc <= N
                yield(r + dr, c + dc)
            end
        end
    end

    while !isempty(dists)
        (val, d, (r, c)), _ = dequeue_pair!(dists)
        if d == k - 1
            path = Int[]
            rc = (r, c)
            for _ in 1:k
                push!(path, grid[rc[1]][rc[2]])
                rc = prev[rc]
            end
            return reverse(path)
        end
        for nr, nc in neighbors(r, c)
            if !visited[nr, nc]
                visited[nr, nc] = true
                enqueue!(dists, (grid[nr][nc], d + 1, (nr, nc)), grid[nr][nc])
                prev[(nr, nc)] = (r, c)
            end
        end
    end
end