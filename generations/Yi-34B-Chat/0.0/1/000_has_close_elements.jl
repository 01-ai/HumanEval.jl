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
    # Initialize a boolean to track if there are any close elements
    has_close_elements = false

    # Loop through the numbers and check if any two are closer than the threshold
    for i in 1:length(numbers)
        for j in i+1:length(numbers)
            # Check if the difference between two numbers is less than the threshold
            if abs(numbers[i] - numbers[j]) < threshold
                has_close_elements = true
                break
            end
        end
    end

    return has_close_elements
end
