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
    # Step 1: Count the frequency of each number
    freq = Dict{Int, Int}()
    for num in numbers
        freq[num] = get(freq, num, 0) + 1
    end

    # Step 2: Find the greatest integer that satisfies the condition
    greatest = -1
    for (num, count) in freq
        if num <= count && num > greatest
            greatest = num
        end
    end

    return greatest
end

# Example usage:
# julia> search([4, 1, 2, 2, 3, 1])
# 2
#
# julia> search([1, 2, 2, 3, 3, 3, 4, 4, 4])
# 3
#
# julia> search([5, 5, 4, 4, 4])
# -1
