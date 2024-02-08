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
    if length(l) < 2
        return true
    end

    increasing = l[2] > l[1]

    for i in 2:length(l) - 1
        if increasing && l[i + 1] < l[i]
            return false
        elseif !increasing && l[i + 1] > l[i]
            return false
        end
    end

    return true
end
