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
    # Check if the list is empty or has one element, which is trivially monotonic
    if length(l) <= 1
        return true
    end

    # Determine the direction of monotonicity based on the first two different elements
    increasing = nothing
    for i in 1:length(l)-1
        if l[i] < l[i+1]
            increasing = true
            break
        elseif l[i] > l[i+1]
            increasing = false
            break
        end
    end

    # If all elements are the same, it's also monotonic
    if increasing === nothing
        return true
    end

    # Check the remaining elements to confirm monotonicity
    for i in 2:length(l)-1
        if increasing
            if l[i] > l[i+1]
                return false
            end
        else
            if l[i] < l[i+1]
                return false
            end
        end
    end

    return true
end
