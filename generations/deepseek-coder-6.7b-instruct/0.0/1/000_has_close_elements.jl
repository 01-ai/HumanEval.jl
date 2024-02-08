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
    length(numbers) < 2 && return false
    sort_numbers = sort(numbers)
    for i in 2:length(numbers)
        if sort_numbers[i] - sort_numbers[i-1] < threshold
            return true
        end
    end
    return false
end

# Test cases
println(has_close_elements([1.0, 2.0, 3.0], 0.5))  # false
println(has_close_elements([1.0, 2.8, 3.0, 4.0, 5.0, 2.0], 0.3))  # true

