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

# Step 1: Define the function
function sort_array(arr::Vector{Int})::Vector{Int}
    # Step 2: Create a custom sorting function
    function sort_criteria(x, y)
        # Count the number of ones in the binary representation
        x_ones = count(isequal('1'), bin(x))
        y_ones = count(isequal('1'), bin(y))
        # Compare based on the number of ones, then by value
        if x_ones == y_ones
            return x < y
        else
            return x_ones < y_ones
        end
    end
    
    # Step 3: Use the built-in `sort` function with the custom sorting function
    sorted_arr = sort(arr, by=x -> (count(isequal('1'), bin(x)), x))
    
    # Step 4: Return the sorted array
    return sorted_arr
end
