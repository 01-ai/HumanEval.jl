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
function monotonic(l::Vector)
    if length(l) < 2
        return true
    end

    increasing = false
    decreasing = false

    for i in 1:(length(l)-1)
        if l[i+1] > l[i]
            increasing = true
        elseif l[i+1] < l[i]
            decreasing = true
        end

        if increasing && decreasing
            return false
        end
    end

    return true
end
function monotonic(l::Vector)
    return all(x -> x >= 0, diff(l)) || all(x -> x <= 0, diff(l))
end
