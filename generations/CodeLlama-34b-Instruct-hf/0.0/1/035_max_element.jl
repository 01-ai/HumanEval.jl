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
    if isempty(xs)
        return nothing
    end
    m = xs[1]
    for x in xs
        if x > m
            m = x
        end
    end
    return m
end
