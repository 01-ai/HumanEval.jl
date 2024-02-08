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
    # filter for numbers between 1 and 9
    filtered = filter(x -> 1 <= x <= 9, xs)
    # sort the array
    sorted = sort(filtered)
    # reverse the array
    reversed = reverse(sorted)
    # map the numbers to their names
    names = map(reversed) do x
        if x == 1
            "One"
        elseif x == 2
            "Two"
        elseif x == 3
            "Three"
        elseif x == 4
            "Four"
        elseif x == 5
            "Five"
        elseif x == 6
            "Six"
        elseif x == 7
            "Seven"
        elseif x == 8
            "Eight"
        elseif x == 9
            "Nine"
        end
    end
    names
end

# Test cases
println(by_length([2, 1, 1, 4, 5, 8, 2, 3]))
println(by_length(Int[]))
println(by_length([1, -1, 55]))

