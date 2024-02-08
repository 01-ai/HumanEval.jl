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
    # Handle edge cases where the list has less than 2 elements
    if length(l) < 2
        return true
    end

    # Determine if the list is initially increasing or decreasing
    increasing = l[2] > l[1]
    decreasing = l[2] < l[1]

    # Check for monotonicity
    for i in 2:length(l)-1
        if increasing && l[i] > l[i+1]
            return false
        elseif decreasing && l[i] < l[i+1]
            return false
        end
    end

    return true
end
