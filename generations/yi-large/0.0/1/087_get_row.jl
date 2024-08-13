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
    # Initialize an empty list to store the coordinates
    coordinates = Tuple{Int, Int}[]

    # Iterate over each row in xs
    for (row_index, row) in enumerate(xs)
        # Find the indices of elements equal to x in the current row
        # and append them to the list of coordinates
        for col_index in findall(isequal(x), row)
            push!(coordinates, (row_index + 1, col_index + 1))
        end
    end

    # Sort the coordinates first by row index in ascending order,
    # and then by column index in descending order
    sort!(coordinates, by = x -> (x[1], -x[2]))

    return coordinates
end

# Example usage:
# julia> get_row([[1, 2, 3, 4, 5, 6], [1, 2, 3, 4, 1, 6], [1, 2, 3, 4, 5, 1]], 1)
# 5-element Vector{Tuple{Int64, Int64}}:
#  (1, 1)
#  (2, 5)
#  (2, 1)
#  (3, 6)
#  (3, 1)

# julia> get_row(Vector{Int}[], 1)
# Tuple{Int64, Int64}[]

# julia> get_row(Vector{Int}[Int[], [1], [1, 2, 3]], 3)
# 1-element Vector{Tuple{Int64, Int64}}:
#  (3, 3)
