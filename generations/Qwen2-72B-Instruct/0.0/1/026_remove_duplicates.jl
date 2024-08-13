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
    occurrence = Dict{Int, Int}()
    result = Vector{Int}()
    
    # Count occurrences of each number
    for number in numbers
        occurrence[number] = occurrence.get(number, 0) + 1
    end
    
    # Add numbers to result that occur exactly once
    for number in numbers
        if occurrence[number] == 1
            push!(result, number)
        end
    end
    
    return result
end
function remove_duplicates(numbers::Vector{Int})::Vector{Int}
    seen = Set{Int}()
    duplicates = Set{Int}()
    result = Vector{Int}()
    
    for number in numbers
        if number in seen
            push!(duplicates, number)
        else
            push!(seen, number)
        end
    end
    
    for number in numbers
        if !(number in duplicates)
            push!(result, number)
        end
    end
    
    return result
end
function remove_duplicates(numbers::Vector{Int})::Vector{Int}
    seen = Set{Int}()
    unique_numbers = filter(x -> !(x in seen) && push!(seen, x), numbers)
    return unique_numbers
end
