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
    diffs = [l[i+1] - l[i] for i in 1:(length(l)-1)]
    return all(x -> x >= 0, diffs) || all(x -> x <= 0, diffs)
end
