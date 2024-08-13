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
    maximum(xs)
end
function max_element(xs)
    isempty(xs) && error("List is empty")
    maximum(xs)
end
const max_element = maximum
function max_element(xs)
    isempty(xs) && error("List is empty")
    max = xs[1]
    for x in xs[2:end]
        x > max && (max = x)
    end
    max
end
