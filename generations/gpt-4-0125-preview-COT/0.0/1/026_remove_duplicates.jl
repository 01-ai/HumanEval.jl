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
    # Step 1: Initialize the storage for unique numbers and counts
    unique_numbers = Vector{Int}()
    counts = Dict{Int, Int}()

    # Step 2: Count occurrences of each number
    for number in numbers
        counts[number] = get(counts, number, 0) + 1
    end

    # Step 3: Collect numbers that occur only once
    for number in numbers
        if counts[number] == 1
            push!(unique_numbers, number)
        end
    end

    return unique_numbers
end
