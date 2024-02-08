"""
    total_match(xs::Vector{String}, ys::Vector{String})::Vector{String}

Write a function that accepts two lists of strings and returns the list that has
total number of chars in the all strings of the list less than the other list.

If the two lists have the same number of chars, return the first list.

# Examples

```jldoctest
julia> total_match(String[], String[])
String[]

julia> total_match(["hi", "admin"], ["hI", "Hi"])
2-element Vector{String}:
 "hI"
 "Hi"

julia> total_match(["hi", "admin"], ["hi", "hi", "admin", "project"])
2-element Vector{String}:
 "hi"
 "admin"

julia> total_match(["hi", "admin"], ["hI", "hi", "hi"])
3-element Vector{String}:
 "hI"
 "hi"
 "hi"

julia> total_match(["4"], ["1", "2", "3", "4", "5"])
1-element Vector{String}:
 "4"
```
"""
function total_match(xs::Vector{String}, ys::Vector{String})::Vector{String}
    # Calculate the total number of characters in each list
    total_xs = sum(length, xs)
    total_ys = sum(length, ys)

    # If the total number of characters in xs is less than ys, return xs
    if total_xs < total_ys
        return xs
    end

    # If the total number of characters in ys is less than xs, return ys
    if total_ys < total_xs
        return ys
    end

    # If the total number of characters in xs and ys are equal, return the first list
    return xs
end
