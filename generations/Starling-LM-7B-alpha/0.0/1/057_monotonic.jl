"""
    monotonic(l::Vector)::Bool

Return true is list elements are monotonically increasing or decreasing.

# Examples

```jldoctest
julia> monotonic([1, 2, 4, 20])
true

julia> monotonic([1, 20, 4, 10])
false

julia> monotonic([4, 1, 0, -10])
true
```
"""
 function monotonic(l::Vector)::Bool
    # Check if the list elements are monotonically increasing or decreasing
    if all(l .<= l[end]) || all(l .>= l[end])
        return true
    else
        return false
    end
end
