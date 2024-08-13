"""
    remove_duplicates(numbers::Vector{Int})::Vector{Int}

From a list of integers, remove all elements that occur more than once. Keep
order of elements left the same as in the input.

# Examples

```jldoctest
julia> remove_duplicates([1, 2, 3, 2, 4])
3-element Vector{Int64}:
 1
 3
 4
```
"""
function remove_duplicates(numbers::Vector{Int})::Vector{Int}
    unique_numbers = Int[]  # Initialize an empty array to store unique elements
    seen = Set()  # Initialize a set to keep track of seen elements

    for num in numbers
        if num ∉ seen  # Check if the element is not in the seen set
            push!(unique_numbers, num)  # Add the element to the unique_numbers array
            push!(seen, num)  # Add the element to the seen set
        end
    end

    return unique_numbers
end
