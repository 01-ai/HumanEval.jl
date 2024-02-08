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
    # Step 1: Initialize an empty vector to store the unique elements.
    unique_l = Int64[]

    # Step 2: Iterate through the input list.
    for element in l
        # Step 3: Check if the element is already in the unique elements vector.
        if !(element in unique_l)
            # Step 4: If it is not, add it to the unique elements vector.
            push!(unique_l, element)
        end
    end

    # Step 5: Sort the unique elements vector.
    sort!(unique_l)

    # Step 6: Return the sorted unique elements vector.
    return unique_l
end
