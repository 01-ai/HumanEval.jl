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
    xs_total_chars = sum(length, xs)
    ys_total_chars = sum(length, ys)
    
    # Compare the total number of characters and return the list with fewer characters
    # If they are equal, return the first list
    if xs_total_chars < ys_total_chars
        return xs
    else
        return ys
    end
end

# Examples
println(total_match(String[], String[])) # Should print String[]
println(total_match(["hi", "admin"], ["hI", "Hi"])) # Should print ["hI", "Hi"]
println(total_match(["hi", "admin"], ["hi", "hi", "admin", "project"])) # Should print ["hi", "admin"]
println(total_match(["hi", "admin"], ["hI", "hi", "hi"])) # Should print ["hI", "hi", "hi"]
println(total_match(["4"], ["1", "2", "3", "4", "5"])) # Should print ["4"]
