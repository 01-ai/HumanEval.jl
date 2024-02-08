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
    # Step 2: Filter the input vector to include only integers between 1 and 9
    filtered_xs = filter(x -> 1 <= x <= 9, xs)
    
    # Step 3: Sort the filtered vector in ascending order
    sorted_xs = sort(filtered_xs)
    
    # Step 4: Reverse the sorted vector
    reversed_xs = reverse(sorted_xs)
    
    # Step 5: Map each integer to its corresponding name
    names = ["One", "Two", "Three", "Four", "Five", "Six", "Seven", "Eight", "Nine"]
    result = map(x -> names[x], reversed_xs)
    
    # Step 6: Return the resulting vector of strings
    return result
end
