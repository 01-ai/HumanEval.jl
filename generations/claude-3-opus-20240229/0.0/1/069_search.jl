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
    freq = Dict{Int, Int}()
    
    # Count the frequency of each number
    for num in numbers
        freq[num] = get(freq, num, 0) + 1
    end
    
    max_num = -1
    
    # Check each number and its frequency
    for (num, count) in freq
        if num > 0 && count >= num && num > max_num
            max_num = num
        end
    end
    
    return max_num
end
