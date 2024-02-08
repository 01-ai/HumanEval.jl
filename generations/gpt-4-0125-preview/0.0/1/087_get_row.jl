"""
    get_row(xs::Vector{Vector{Int}}, x::Int)::Vector{Tuple{Int, Int}}

You are given a 2 dimensional data, as a nested lists, which is similar to
matrix, however, unlike matrices, each row may contain a different number of
columns. Given `xs`, and integer `x`, find integers `x` in the list `xs`, and
return list of tuples, [(x1, y1), (x2, y2) ...] such that each tuple is a
coordinate - (row, columns), starting with `1`. Sort coordinates initially by
rows in ascending order. Also, sort coordinates of the row by columns in
descending order.

# Examples

```jldoctest
julia> get_row([[1, 2, 3, 4, 5, 6], [1, 2, 3, 4, 1, 6], [1, 2, 3, 4, 5, 1]], 1)
5-element Vector{Tuple{Int64, Int64}}:
 (1, 1)
 (2, 5)
 (2, 1)
 (3, 6)
 (3, 1)

julia> get_row(Vector{Int}[], 1)
Tuple{Int64, Int64}[]

julia> get_row(Vector{Int}[Int[], [1], [1, 2, 3]], 3)
1-element Vector{Tuple{Int64, Int64}}:
 (3, 3)
```
"""
function get_row(xs::Vector{Vector{Int}}, x::Int)::Vector{Tuple{Int, Int}}
    # Initialize an empty list to store the positions of x
    positions = Tuple{Int, Int}[]

    # Iterate through each row and column to find x
    for (i, row) in enumerate(xs)
        for (j, value) in enumerate(row)
            if value == x
                # If x is found, append its position (row, column) to the list
                push!(positions, (i, j))
            end
        end
    end

    # Sort the positions first by row in ascending order, then by column in descending order
    sort!(positions, by = t -> (t[1], -t[2]))

    return positions
end
