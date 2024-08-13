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
    # Extract the elements at indices divisible by 3
    third_elements = [l[i] for i in 1:length(l) if i % 3 == 0]
    
    # Sort these elements
    sorted_third_elements = sort(third_elements)
    
    # Create a copy of the original list to modify
    l_prime = copy(l)
    
    # Replace the elements at indices divisible by 3 with the sorted elements
    j = 1
    for i in 1:length(l)
        if i % 3 == 0
            l_prime[i] = sorted_third_elements[j]
            j += 1
        end
    end
    
    return l_prime
end

# Examples
println(sort_third([1, 2, 3]))  # Output: [1, 2, 3]
println(sort_third([5, 6, 3, 4, 8, 9, 2]))  # Output: [5, 6, 3, 4, 8, 9, 2]
