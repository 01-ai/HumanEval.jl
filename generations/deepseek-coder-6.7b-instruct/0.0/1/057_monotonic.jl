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

    increasing = true
    decreasing = true

    for i in 2:length(l)
        if l[i-1] > l[i]
            increasing = false
        elseif l[i-1] < l[i]
            decreasing = false
        end

        if !increasing && !decreasing
            return false
        end
    end

    return true
end

println(monotonic([1, 2, 4, 20]))
println(monotonic([1, 20, 4, 10]))
println(monotonic([4, 1, 0, -10]))

