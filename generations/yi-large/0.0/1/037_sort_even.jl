"""
    sort_even(l::Vector)::Vector

This function takes a list l and returns a list l' such that l' is identical to
l in the odd indicies, while its values at the even indicies are equal to the
values of the even indicies of l, but sorted.

# Examples

```jldoctest
julia> sort_even([1, 2, 3]) == [1, 2, 3]
true

julia> sort_even([5, 6, 3, 4]) == [5, 4, 3, 6]
true
```
"""
function sort_even(l::Vector)::Vector
    # First, extract the even indices of the input list
    evens = l[2:2:end]
    # Sort the even indices
    sorted_evens = sort(evens)
    # Now, create the output list
    l_prime = Vector{eltype(l)}(undef, length(l))
    # Fill the odd indices of the output list with the original values
    l_prime[1:2:end] = l[1:2:end]
    # Fill the even indices of the output list with the sorted values
    l_prime[2:2:end] = sorted_evens
    # Return the modified list
    return l_prime
end

# Test the function
println(sort_even([1, 2, 3]) == [1, 2, 3])
println(sort_even([5, 6, 3, 4]) == [5, 4, 3, 6])
