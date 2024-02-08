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
    # Define a custom sorting function
    function sort_criteria(x)
        # Count the number of ones in the binary representation
        ones_count = count(isequal('1'), bin(x))
        # Return a tuple with ones count and the number itself for sorting
        return (ones_count, x)
    end
    
    # Sort the array using the custom sorting function
    return sort(arr, by=sort_criteria)
end

# Examples
println(sort_array([1, 5, 2, 3, 4]) == [1, 2, 4, 3, 5]) # true
println(sort_array([1, 0, 2, 3, 4]) == [0, 1, 2, 4, 3]) # true
