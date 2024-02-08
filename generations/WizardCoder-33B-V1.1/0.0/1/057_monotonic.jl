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
    diffs = [l[i] - l[i-1] for i in 2:length(l)]
    return all(x -> x >= 0, diffs) || all(x -> x <= 0, diffs)
end

# Test cases
println(monotonic([1, 2, 4, 20])) # true
println(monotonic([1, 20, 4, 10])) # false
println(monotonic([4, 1, 0, -10])) # true 