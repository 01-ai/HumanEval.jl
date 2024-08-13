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
    # Dictionary to count occurrences of each number
    count_dict = Dict{Int, Int}()

    # Count occurrences of each number
    for num in numbers
        count_dict[num] = get(count_dict, num, 0) + 1
    end

    # Filter out numbers that occur more than once
    result = Int[]
    for num in numbers
        if count_dict[num] == 1
            push!(result, num)
        end
    end

    return result
end
