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
    n = length(l)
    if n < 2
        return true
    end

    increasing = l[end] > l[1]

    for i in 1:n-1
        if increasing && l[i] > l[i+1]
            return false
        elseif !increasing && l[i] < l[i+1]
            return false
        end
    end

    return true
end
