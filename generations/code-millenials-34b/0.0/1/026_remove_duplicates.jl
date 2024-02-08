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
    seen = Set{Int}()
    result = Int[]
    for number in numbers
        if !(number in seen)
            push!(seen, number)
            push!(result, number)
        end
    end
    return result
end

# Test the function
numbers = [1, 2, 3, 2, 4]
@assert remove_duplicates(numbers) == [1, 3, 4]

