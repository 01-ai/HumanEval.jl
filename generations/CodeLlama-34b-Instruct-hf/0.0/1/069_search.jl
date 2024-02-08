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
function search(numbers::Vector)::Int
    # Create a dictionary to keep track of the frequency of each integer
    freq = Dict{Int, Int}()
    for num in numbers
        freq[num] = get(freq, num, 0) + 1
    end

    # Find the greatest integer that has a frequency greater than or equal to its value
    max_freq = -1
    for (num, freq) in freq
        if freq >= num && freq > max_freq
            max_freq = freq
        end
    end

    # Return the greatest integer that has a frequency greater than or equal to its value, or -1 if no such integer exists
    return max_freq == -1 ? -1 : max_freq
end
