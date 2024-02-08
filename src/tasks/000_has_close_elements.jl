"""
    has_close_elements(numbers::Vector{Float64}, threshold::Float64)::Bool

Check if in given list of `numbers`, are any two numbers closer to each other than
given `threshold`.

# Examples

```jldoctest
julia> has_close_elements([1.0, 2.0, 3.0], 0.5)
false

julia> has_close_elements([1.0, 2.8, 3.0, 4.0, 5.0, 2.0], 0.3)
true
```
"""
function has_close_elements(numbers::Vector{Float64}, threshold::Float64)::Bool
    for (i, x) in enumerate(numbers)
        for (j, y) in enumerate(numbers)
            if i != j
                distance = abs(x - y)
                if distance < threshold
                    return true
                end
            end
        end
    end

    return false
end
