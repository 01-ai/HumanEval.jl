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

"""
    monotonic(l::Vector)::Bool

Return true if list elements are monotonically increasing or decreasing.

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
    is_increasing = true
    is_decreasing = true
    for i in 2:length(l)
        if l[i] < l[i-1]
            is_increasing = false
        elseif l[i] > l[i-1]
            is_decreasing = false
        end
        if !is_increasing && !is_decreasing
            return false
        end
    end
    return true
end
