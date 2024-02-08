"""
    unique_elements(l::Vector)

Return sorted unique elements in a list.

# Examples

```jldoctest
julia> unique_elements([5, 3, 5, 2, 3, 3, 9, 0, 123])
6-element Vector{Int64}:
   0
   2
   3
   5
   9
 123
```
"""
function unique_elements(l::Vector)
    # Sort the list
    sorted_list = sort(l)

    # Initialize the unique list
    unique_list = Vector{eltype(l)}(undef, 0)

    # Loop through the sorted list and add unique elements to the unique list
    for i in 1:length(sorted_list)
        if i == 1 || sorted_list[i] != sorted_list[i-1]
            push!(unique_list, sorted_list[i])
        end
    end

    # Return the unique list
    return unique_list
end
