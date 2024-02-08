"""
    max_element(xs)

Return maximum element in the list.

# Examples

```jldoctest
julia> max_element([1, 2, 3])
3

julia> max_element([5, 3, -5, 2, -3, 3, 9, 0, 123, 1, -10])
123
```
"""


function max_element(xs)
    max_val = xs[1]
    for x in xs
        if x > max_val
            max_val = x
        end
    end
    return max_val
end

# Test cases
@assert max_element([1, 2, 3]) == 3
@assert max_element([5, 3, -5, 2, -3, 3, 9, 0, 123, 1, -10]) == 123
@assert max_element([-1, -2, -3, -4, -5]) == -1
@assert max_element([1]) == 1
@assert max_element([1, 1, 1, 1, 1]) == 1

