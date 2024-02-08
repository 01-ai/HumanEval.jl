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
    counts = Dict{Int, Int}()
    for num in numbers
        counts[num] = get(counts, num, 0) + 1
    end
    output = Int[]
    for num in numbers
        if counts[num] == 1
            push_end_vector(output, num)
        end
    end
    return output
end
