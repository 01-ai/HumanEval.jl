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
    # Check if the list is empty
    if isempty(l)
        return true
    end

    # Check if the list has only one element
    if length(l) == 1
        return true
    end

    # Check if the list is monotonically increasing or decreasing
    for i in 2:length(l)
        if l[i-1] > l[i]
            return false
        end
    end

    return true
end
