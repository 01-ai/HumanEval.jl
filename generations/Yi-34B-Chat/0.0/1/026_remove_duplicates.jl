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
    # Initialize an output vector with the same length as the input vector
    output = Vector{Int}(undef, length(numbers))
    
    # Loop through the input vector and add elements to the output vector
    # only if they are not present in the output vector already
    for i in 1:length(numbers)
        if !(numbers[i] in output)
            output[findfirst(==(numbers[i]), output) + 1] = numbers[i]
        end
    end
    
    # Return the output vector
    return output
end
