"""
    sort_third(l::Vector)

This function takes a list `l` and returns a list l' such that l' is identical to
`l` in the indicies that are not divisible by three, while its values at the
indicies that are divisible by three are equal to the values of the
corresponding indicies of l, but sorted.

# Examples

```jldoctest
julia> sort_third([1, 2, 3])
3-element Vector{Int64}:
 1
 2
 3

julia> sort_third([5, 6, 3, 4, 8, 9, 2])
7-element Vector{Int64}:
 5
 6
 3
 4
 8
 9
 2
```
"""
function sort_third(l::Vector)
    # Create a new vector to store the values at the indices divisible by 3
    third_values = l[3:3:end]
    
    # Sort the values
    sort!(third_values)
    
    # Create a new vector to store the result
    result = similar(l)
    
    # Fill the result vector with the sorted values
    j = 1
    for i in eachindex(l)
        if i % 3 == 0
            result[i] = third_values[j]
            j += 1
        else
            result[i] = l[i]
        end
    end
    
    return result
end
