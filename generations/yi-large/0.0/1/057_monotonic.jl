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
    # Check if the list is empty or has only one element
    if length(l) <= 1
        return true
    end

    # Determine the direction of the monotonicity
    increasing = l[1] < l[2]

    # Check if the list is monotonically increasing or decreasing
    for i in 2:(length(l) - 1)
        if increasing
            if l[i] > l[i + 1]
                return false
            end
        else
            if l[i] < l[i + 1]
                return false
            end
        end
    end

    return true
end

# Test the function
println(monotonic([1, 2, 4, 20]))   # true
println(monotonic([1, 20, 4, 10]))  # false
println(monotonic([4, 1, 0, -10]))  # true
