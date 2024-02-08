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
    # Step 1: Initialize a flag for increasing (inc) and decreasing (dec)
    inc, dec = true, true

    # Step 2: Iterate over the list and check for increasing and decreasing
    for i in 2:length(l)
        if l[i] > l[i-1]
            dec = false
        elseif l[i] < l[i-1]
            inc = false
        end
    end

    # Step 3: Return true if list is either increasing or decreasing
    return inc || dec
end
