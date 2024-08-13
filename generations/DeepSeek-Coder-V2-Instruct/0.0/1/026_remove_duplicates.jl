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
    # Create a dictionary to count occurrences of each number
    counts = Dict{Int, Int}()
    for number in numbers
        if haskey(counts, number)
            counts[number] += 1
        else
            counts[number] = 1
        end
    end

    # Filter out numbers that occur more than once
    result = [number for number in numbers if counts[number] == 1]
    return result
end
