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
    # Step 1: Check for trivial cases
    length_l = length(l)
    if length_l <= 1
        return true
    end
    
    # Step 2: Determine the direction of monotonicity
    increasing = nothing
    for i in 2:length_l
        if l[i] != l[i-1]
            increasing = l[i] > l[i-1]
            break
        end
    end
    
    # If all elements are equal, the list is monotonic
    if increasing === nothing
        return true
    end
    
    # Step 3: Check for monotonicity
    for i in 2:length_l
        if increasing && l[i] < l[i-1]
            return false
        elseif !increasing && l[i] > l[i-1]
            return false
        end
    end
    
    # Step 5: If no violations found, the list is monotonic
    return true
end
