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
    # Iterate through each number in the list
    for i in 1:length(numbers)
        # Compare it with every other number
        for j in 1:length(numbers)
            # Skip comparison with itself
            if i != j
                # Check if the absolute difference is less than the threshold
                if abs(numbers[i] - numbers[j]) < threshold
                    return true
                end
            end
        end
    end
    # If no close elements are found, return false
    return false
end
