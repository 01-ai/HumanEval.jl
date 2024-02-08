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
    unique_numbers = Set{Int}()
    result = Int[]
    for num in numbers
        if !(num in unique_numbers)
            push!(result, num)
            push!(unique_numbers, num)
        end
    end
    return result
end
