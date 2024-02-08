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
    # Step 1: Filter the array to include only integers between 1 and 9
    filtered_xs = filter(x -> 1 <= x <= 9, xs)
    
    # Step 2: Sort the filtered array in ascending order
    sorted_xs = sort(filtered_xs)
    
    # Step 3: Reverse the sorted array
    reversed_xs = reverse(sorted_xs)
    
    # Step 4: Convert digits to names
    digit_to_name = ["One", "Two", "Three", "Four", "Five", "Six", "Seven", "Eight", "Nine"]
    names = map(x -> digit_to_name[x], reversed_xs)
    
    # Step 5: Return the result
    return names
end
