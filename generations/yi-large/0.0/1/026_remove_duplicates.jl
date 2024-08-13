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
    # Create a dictionary to keep track of the count of each number
    counts = Dict{Int, Int}()
    for number in numbers
        counts[number] = get(counts, number, 0) + 1
    end

    # Filter out numbers that occur more than once
    unique_numbers = [number for number in numbers if counts[number] == 1]

    return unique_numbers
end

# Example usage:
# julia> remove_duplicates([1, 2, 3, 2, 4])
# 3-element Vector{Int64}:
#  1
#  3
#  4
