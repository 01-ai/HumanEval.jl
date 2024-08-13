"""
    search(numbers::Vector)::Int

You are given a non-empty list of positive integers. Return the greatest integer
that is greater than zero, and has a frequency greater than or equal to the
value of the integer itself. The frequency of an integer is the number of times
it appears in the list. If no such a value exist, return -1.

# Examples

```jldoctest
julia> search([4, 1, 2, 2, 3, 1])
2

julia> search([1, 2, 2, 3, 3, 3, 4, 4, 4])
3

julia> search([5, 5, 4, 4, 4])
-1
```
"""
function search(numbers::Vector{Int})::Int
    # Create a dictionary to count the frequency of each number
    freq = Dict{Int, Int}()
    for num in numbers
        freq[num] = get(freq, num, 0) + 1
    end

    # Initialize the result as -1 (default if no valid number is found)
    result = -1

    # Check each number and its frequency
    for (num, count) in freq
        # The number must be greater than zero and its frequency should be at least the number itself
        if num > 0 && count >= num
            # Update the result with the maximum valid number found
            result = max(result, num)
        end
    end

    return result
end
