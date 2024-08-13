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
function max_element(xs::Vector{T}) where T <: Real
    if isempty(xs)
        throw(ArgumentError("Input list cannot be empty"))
    end
    
    max_val = xs[1]
    for x in xs[2:end]
        if x > max_val
            max_val = x
        end
    end
    
    return max_val
end