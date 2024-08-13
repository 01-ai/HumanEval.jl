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
    # Define a dictionary to map integers to their corresponding names
    digit_names = Dict(1 => "One", 2 => "Two", 3 => "Three", 4 => "Four", 5 => "Five", 
                       6 => "Six", 7 => "Seven", 8 => "Eight", 9 => "Nine")
    
    # Filter the integers to keep only those between 1 and 9 inclusive
    filtered = filter(x -> 1 <= x <= 9, xs)
    
    # Sort the filtered integers
    sorted_filtered = sort(filtered)
    
    # Reverse the sorted list
    reversed_sorted = reverse(sorted_filtered)
    
    # Map each integer to its corresponding name
    result = [digit_names[x] for x in reversed_sorted]
    
    return result
end
println(by_length([2, 1, 1, 4, 5, 8, 2, 3]))  # Expected: ["Eight", "Five", "Four", "Three", "Two", "Two", "One", "One"]
println(by_length(Int[]))  # Expected: String[]
println(by_length([1, -1, 55]))  # Expected: ["One"]
