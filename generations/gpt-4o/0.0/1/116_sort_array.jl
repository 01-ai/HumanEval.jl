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
    function custom_sort(x, y)
        # Count the number of ones in the binary representation
        count_ones_x = count_ones(x)
        count_ones_y = count_ones(y)
        
        # First, compare based on the number of ones
        if count_ones_x != count_ones_y
            return count_ones_x < count_ones_y
        else
            # If the number of ones is the same, compare based on the decimal value
            return x < y
        end
    end
    
    # Sort the array using the custom sorting function
    return sort(arr, lt=custom_sort)
end

# Helper function to count the number of ones in the binary representation
function count_ones(n::Int)::Int
    return count(ch -> ch == '1', bitstring(n))
end
