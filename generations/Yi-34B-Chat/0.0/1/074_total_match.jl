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
    x_total = sum(length.(xs))
    y_total = sum(length.(ys))

    # If one list has fewer characters, return it
    if x_total < y_total
        return xs
    elseif x_total > y_total
        return ys
    end

    # If the lists have the same number of characters, return the first list
    return xs
end
