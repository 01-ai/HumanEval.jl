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

    # Create an empty list to store unique elements
    unique_list = []

    # Iterate through the sorted list
    for i in sorted_list
        # Check if the current element is not in the unique list
        if !(i in unique_list)
            # Add the current element to the unique list
            push!(unique_list, i)
        end
    end

    # Return the unique list
    return unique_list
end
