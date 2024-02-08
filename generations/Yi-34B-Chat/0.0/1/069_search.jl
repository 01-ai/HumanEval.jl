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
    # Initialize a dictionary to count the frequencies of each integer
    freq_dict = Dict{Int, Int}()
    
    # Count the frequencies of each integer in the list
    for number in numbers
        if number > 0
            freq_dict[number] = get(freq_dict, number, 0) + 1
        end
    end
    
    # Find the greatest integer with a frequency greater than or equal to itself
    max_freq = -1
    max_num = -1
    for (num, freq) in freq_dict
        if freq >= num && (max_freq == -1 || freq > max_freq)
            max_freq = freq
            max_num = num
        end
    end
    
    # Return the greatest integer if found, otherwise return -1
    return max_num == -1 ? -1 : max_num
end
