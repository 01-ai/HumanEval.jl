"""
    below_threshold(l::Vector, t::Number)::Bool

Return `true` if all numbers in the list `l` are below threshold t.

```jldoctest
julia> below_threshold([1, 2, 4, 10], 100)
true

julia> below_threshold([1, 20, 4, 10], 5)
false
```
"""
function below_threshold(l::Vector, t::Number)
    for i in l
        if i >= t
            return false
        end
    end
    return true
end
