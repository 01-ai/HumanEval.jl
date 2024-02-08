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



# Step-by-step outline:
# 1. Initialize an empty list to store the coordinates.
# 2. Iterate over the rows of the given nested list.
# 3. For each row, iterate over the elements and check if the element is equal to `x`.
# 4. If the element is equal to `x`, add a tuple of the current row and column index to the coordinates list.
# 5. After iterating over all rows, sort the coordinates list first by rows in ascending order and then by columns in descending order.
# 6. Return the sorted coordinates list.

# Code:
function get_row(xs::Vector{Vector{Int}}, x::Int)::Vector{Tuple{Int, Int}}
    # Initialize an empty list to store the coordinates
    coordinates = Tuple{Int, Int}[]

    # Iterate over the rows of the given nested list
    for (row_index, row) in enumerate(xs)
        # Iterate over the elements of the current row
        for (col_index, col) in enumerate(row)
            # Check if the element is equal to `x`
            if col == x
                # Add a tuple of the current row and column index to the coordinates list
                push!(coordinates, (row_index, col_index))
            end
        end
    end

    # Sort the coordinates list first by rows in ascending order and then by columns in descending order
    sort!(coordinates, by = ((row, col),) -> (row, -col))

    # Return the sorted coordinates list
    return coordinates
end
