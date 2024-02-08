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
    # Create a copy of the input list
    l_prime = copy(l)

    # Get the indices of elements divisible by 3
    divisible_by_three = findall(i -> i % 3 == 0, 1:length(l))

    # Sort the elements at these indices
    sorted_values = sort(l[divisible_by_three])

    # Replace the elements at these indices with the sorted values
    l_prime[divisible_by_three] .= sorted_values

    return l_prime
end
