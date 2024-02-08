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
    # Step 2: Initialize an empty array to store the tuples of coordinates
    coordinates = Tuple{Int, Int}[]

    # Step 3: Loop through each row in `xs`
    for (row_idx, row) in enumerate(xs)
        # Step 4: Check if `x` is present in the current row
        if x in row
            # Step 5: Loop through the elements of the row to find all occurrences of `x`
            for (col_idx, value) in enumerate(row)
                if value == x
                    # Step 6: Append the tuple to the array of coordinates
                    push!(coordinates, (row_idx, col_idx))
                end
            end
        end
    end

    # Step 7: Sort the array of coordinates
    sort!(coordinates, by = t -> (t[1], -t[2]))

    # Step 8: Return the sorted array of coordinates
    return coordinates
end
