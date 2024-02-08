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
    if n <= 1
        return true
    end
    
    increasing = true
    decreasing = true
    
    for i in 2:n
        if l[i] > l[i-1]
            decreasing = false
        elseif l[i] < l[i-1]
            increasing = false
        end
    end
    
    return increasing || decreasing
end
