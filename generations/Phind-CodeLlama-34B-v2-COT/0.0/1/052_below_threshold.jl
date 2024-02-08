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



# Outline:
# 1. Initialize a variable `all_below` as `true`.
# 2. Iterate over each element in the list `l`.
# 3. For each element, check if it is greater than or equal to the threshold `t`.
# 4. If it is, set `all_below` to `false` and break the loop.
# 5. After the loop, return `all_below`.

# Code:
function below_threshold(l::Vector, t::Number)::Bool
    all_below = true
    for elem in l
        if elem >= t
            all_below = false
            break
        end
    end
    return all_below
end
