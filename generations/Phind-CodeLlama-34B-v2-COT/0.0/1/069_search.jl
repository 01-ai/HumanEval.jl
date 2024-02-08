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
    # Create a dictionary to store the frequency of each integer
    freq = Dict{Int, Int}()

    # Iterate over the list and update the frequency of each integer
    for num in numbers
        if haskey(freq, num)
            freq[num] += 1
        else
            freq[num] = 1
        end
    end

    # Iterate over the dictionary and return the first integer that satisfies the condition
    for (i, f) in freq
        if f >= i
            return i
        end
    end

    # If no such integer is found, return -1
    return -1
end
