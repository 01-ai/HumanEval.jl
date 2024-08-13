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
    count_dict = Dict{Int, Int}()
    for number in numbers
        if haskey(count_dict, number)
            count_dict[number] += 1
        else
            count_dict[number] = 1
        end
    end
    max_value = -1
    for (key, value) in count_dict
        if key <= value && key > max_value
            max_value = key
        end
    end
    return max_value
end
