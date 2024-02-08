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
    visited = zeros(Bool, N, N)
    path = Vector{Int}()

    function find_min_path(x::Int, y::Int, path_length::Int)
        if path_length == k
            push!(path, grid[x][y])
            return nothing
        end

        for dx in [-1, 0, 1]
            for dy in [-1, 0, 1]
                if abs(dx) + abs(dy) == 1 && !visited[x + dx][y + dy]
                    visited[x + dx][y + dy] = true
                    find_min_path(x + dx, y + dy, path_length + 1)
                    visited[x + dx][y + dy] = false
                end
            end
        end
    end

    for x in 1:N, y in 1:N
        if grid[x][y] <= N * N
            visited[x][y] = true
            find_min_path(x, y, 1)
            visited[x][y] = false
        end
    end

    return path
end

# Test cases
@testset "min_path" begin
    @test min_path([[1, 2, 3], [4, 5, 6], [7, 8, 9]], 3) == [1, 2, 1]
    @test min_path([[5, 9, 3], [4, 1, 6], [7, 8, 2]], 1) == [1]
end
