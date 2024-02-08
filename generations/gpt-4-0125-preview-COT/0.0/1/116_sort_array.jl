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
    # Step 2 & 3: Sort the array based on the number of ones in binary representation,
    # and then by their decimal value if the number of ones is the same.
    sort(arr, by = x -> (count_ones(x), x))
end

# Helper function to count the number of ones in the binary representation of an integer
function count_ones(x::Int)::Int
    count(i -> i == '1', bitstring(x))
end

# Example usage
println(sort_array([1, 5, 2, 3, 4]))  # Output: [1, 2, 4, 3, 5]
println(sort_array([1, 0, 2, 3, 4]))  # Output: [0, 1, 2, 4, 3]
