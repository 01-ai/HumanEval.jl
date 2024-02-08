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
    # Create a dictionary to store the frequency of each number
    freq = Dict{Int, Int}()

    # Iterate through the numbers and update the frequency
    for num in numbers
        if haskey(freq, num)
            freq[num] += 1
        else
            freq[num] = 1
        end
    end

    # Find the greatest number with frequency greater than or equal to itself
    max_num = -1
    for (num, freq) in freq
        if freq >= num && num > max_num
            max_num = num
        end
    end

    return max_num
end
