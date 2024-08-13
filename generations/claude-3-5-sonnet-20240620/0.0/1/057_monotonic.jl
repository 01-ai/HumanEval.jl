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
    if length(l) <= 1
        return true
    end
    
    increasing = decreasing = true
    
    for i in 2:length(l)
        if l[i] < l[i-1]
            increasing = false
        end
        if l[i] > l[i-1]
            decreasing = false
        end
        if !increasing && !decreasing
            return false
        end
    end
    
    return true
end
println(monotonic([1, 2, 4, 20]))   # true
println(monotonic([1, 20, 4, 10]))  # false
println(monotonic([4, 1, 0, -10]))  # true
