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
    length(l) <= 1 && return true

    # Step 2: Determine the direction of monotonicity
    direction = 0  # 1 for increasing, -1 for decreasing, 0 for undecided
    for i in 1:length(l)-1
        if l[i] < l[i+1]
            direction = 1
            break
        elseif l[i] > l[i+1]
            direction = -1
            break
        end
    end

    # If direction remains 0, all elements are the same
    direction == 0 && return true

    # Step 3: Check for monotonicity
    for i in 1:length(l)-1
        if direction == 1 && l[i] > l[i+1] || direction == -1 && l[i] < l[i+1]
            return false
        end
    end

    # Step 4: Return true if no violations found
    return true
end
