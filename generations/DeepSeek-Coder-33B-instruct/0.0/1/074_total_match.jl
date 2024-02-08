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
    xs_total = sum(length.(xs))
    ys_total = sum(length.(ys))
    return xs_total < ys_total ? xs : ys
end
println(total_match(String[], String[]))
println(total_match(["hi", "admin"], ["hI", "Hi"]))
println(total_match(["hi", "admin"], ["hi", "hi", "admin", "project"]))
println(total_match(["hi", "admin"], ["hI", "hi", "hi"]))
println(total_match(["4"], ["1", "2", "3", "4", "5"]))
String[]
2-element Vector{String}:
 "hI"
 "Hi"
2-element Vector{String}:
 "hi"
 "admin"
3-element Vector{String}:
 "hI"
 "hi"
 "hi"
1-element Vector{String}:
 "4"