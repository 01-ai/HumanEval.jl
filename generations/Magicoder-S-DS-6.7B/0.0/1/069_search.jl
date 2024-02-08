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
    for num in numbers
        if haskey(freq, num)
            freq[num] += 1
        else
            freq[num] = 1
        end
    end
    for num in sort(collect(keys(freq)), rev=true)
        if num > 0 && freq[num] >= num
            return num
        end
    end
    return -1
end
