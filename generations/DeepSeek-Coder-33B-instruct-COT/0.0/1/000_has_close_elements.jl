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
    result = false
    for i in 1:length(numbers)
        for j in i+1:length(numbers)
            if abs(numbers[i] - numbers[j]) <= threshold
                result = true
                break
            end
        end
        if result
            break
        end
    end
    return result
end
