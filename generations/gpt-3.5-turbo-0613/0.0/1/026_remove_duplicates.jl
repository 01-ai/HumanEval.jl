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
    result = Vector{Int}()
    
    for number in numbers
        if !(number in unique_numbers)
            push!(result, number)
            push!(unique_numbers, number)
        end
    end
    
    return result
end
