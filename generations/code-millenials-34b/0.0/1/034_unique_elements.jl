"""
    unique_elements(l::Vector)

Return sorted unique elements in a list.

# Examples

```jldoctest
julia> unique_elements([5, 3, 5, 2, 3, 3, 9, 0, 123])
6-element Vector{Int64}:
   0
   2
   3
   5
   9
 123
```
"""


function unique_elements(l::Vector)
    return sort(unique(l))
end

# Test the function
@test unique_elements([5, 3, 5, 2, 3, 3, 9, 0, 123]) == [0, 2, 3, 5, 9, 123]
@test unique_elements([1, 1, 1, 1, 1, 1]) == [1]
@test unique_elements([]) == []
@test unique_elements([1, 2, 3, 4, 5]) == [1, 2, 3, 4, 5]
