"""
    by_length(xs::Vector{Int})::Vector{String}

Given an array of integers, sort the integers that are between 1 and 9
inclusive, reverse the resulting array, and then replace each digit by its
corresponding name from "One", "Two", "Three", "Four", "Five", "Six", "Seven",
"Eight", "Nine".

If the array is empty, return an empty array.

# Example

```jldoctest
julia> by_length([2, 1, 1, 4, 5, 8, 2, 3])  # sort & filtered: [1, 1, 2, 2, 3, 4, 5, 8], reversed: [8, 5, 4, 3, 2, 2, 1, 1]
8-element Vector{String}:
 "Eight"
 "Five"
 "Four"
 "Three"
 "Two"
 "Two"
 "One"
 "One"

julia> by_length(Int[])
String[]

julia> by_length([1, -1, 55])  # sorte & filtered: [1], reversed: [1]
1-element Vector{String}:
 "One"
```
"""
function by_length(xs::Vector{Int})::Vector{String}
    # Sort the array and filter out numbers that are not between 1 and 9 inclusive
    sorted_xs = sort(xs)
    filtered_xs = sorted_xs[sorted_xs .>= 1]
    filtered_xs = filtered_xs[filtered_xs .<= 9]

    # Reverse the filtered array
    reversed_xs = reverse(filtered_xs)

    # Replace each digit with its corresponding name
    names = ["One", "Two", "Three", "Four", "Five", "Six", "Seven", "Eight", "Nine"]
    names_xs = [names[x] for x in reversed_xs]

    return names_xs
end
