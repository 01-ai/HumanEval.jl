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
    # Create a dictionary to store the count of each number
    count = Dict{Int, Int}()

    # Iterate through the numbers
    for num in numbers
        # If the number is not in the dictionary, add it with a count of 1
        if !haskey(count, num)
            count[num] = 1
        # If the number is already in the dictionary, increment its count
        else
            count[num] += 1
        end
    end

    # Create an empty array to store the unique numbers
    unique_numbers = Int[]

    # Iterate through the numbers again
    for num in numbers
        # If the number's count is 1, add it to the unique numbers array
        if count[num] == 1
            push!(unique_numbers, num)
        end
    end

    return unique_numbers
end
