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
    # Extract elements at indices divisible by 3
    div3_elements = l[3:3:end]
    # Sort these elements
    sorted_div3 = sort(div3_elements)
    # Create a copy of the original list to modify
    l_prime = copy(l)
    # Replace elements at indices divisible by 3 with sorted elements
    for i in 1:length(sorted_div3)
        l_prime[3i] = sorted_div3[i]
    end
    return l_prime
end
