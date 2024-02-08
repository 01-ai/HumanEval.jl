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
    # Step 1: Initialize an empty dictionary to store the frequency of each integer in the input vector.
    frequency = Dict{Int, Int}()

    # Step 2: Iterate through the input vector and for each integer, increment its count in the dictionary.
    for number in numbers
        if haskey(frequency, number)
            frequency[number] += 1
        else
            frequency[number] = 1
        end
    end

    # Step 3: Initialize an empty vector to store the final result.
    result = Int[]

    # Step 4: Iterate through the input vector again and for each integer, if its count in the dictionary is 1, append it to the result vector.
    for number in numbers
        if frequency[number] == 1
            push!(result, number)
        end
    end

    # Step 5: Return the result vector.
    return result
end
