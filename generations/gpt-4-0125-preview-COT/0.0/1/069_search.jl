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
    # Step 1: Initialize a frequency dictionary
    freq_dict = Dict{Int, Int}()

    # Step 2: Populate the frequency dictionary
    for num in numbers
        freq_dict[num] = get(freq_dict, num, 0) + 1
    end

    # Step 3: Search for the greatest integer
    greatest_int = -1
    for (num, freq) in freq_dict
        if freq >= num && num > greatest_int
            greatest_int = num
        end
    end

    # Step 4: Return the result
    return greatest_int
end
