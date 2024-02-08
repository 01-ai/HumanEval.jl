"""
    sort_array(arr::Vector{Int})::Vector{Int}

In this Kata, you have to sort an array of non-negative integers according to
number of ones in their binary representation in ascending order. For similar
number of ones, sort based on decimal value.

It must be implemented like this:

# Examples

```jldoctest
julia> sort_array([1, 5, 2, 3, 4]) == [1, 2, 4, 3, 5]
true

julia> sort_array([1, 0, 2, 3, 4]) == [0, 1, 2, 4, 3]
true
```
"""
function sort_array(arr::Vector{Int})::Vector{Int}
    # Create a dictionary to store the count of ones and the integers
    count_dict = Dict{Int, Vector{Int}}()

    # Iterate over the input array
    for num in arr
        # Convert the integer to binary and count the number of ones
        ones_count = count_ones(num)

        # If the count of ones is already in the dictionary, append the integer
        # Otherwise, create a new vector with the integer
        if haskey(count_dict, ones_count)
            push!(count_dict[ones_count], num)
        else
            count_dict[ones_count] = [num]
        end
    end

    # Initialize the output vector
    output = Int[]

    # Iterate over the sorted keys of the dictionary
    for ones_count in sort(collect(keys(count_dict)))
        # Sort the values for the current key and append them to the output vector
        append!(output, sort(count_dict[ones_count]))
    end

    return output
end
