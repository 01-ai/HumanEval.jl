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
    # Check if the list is empty or contains only one element
    if length(l) <= 1
        return true
    end

    # Check if the list is monotonically increasing
    for i in 2:length(l)
        if l[i] <= l[i-1]
            return false
        end
    end

    # Check if the list is monotonically decreasing
    for i in length(l):-1:2
        if l[i] >= l[i-1]
            return false
        end
    end

    # If we reach this point, the list is either
    # monotonically increasing or decreasing
    return true
end
