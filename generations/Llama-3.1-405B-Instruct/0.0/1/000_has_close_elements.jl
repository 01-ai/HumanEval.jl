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
    # Sort the numbers in ascending order
    sorted_numbers = sort(numbers)
    
    # Iterate over the sorted numbers and check if any two adjacent numbers are closer than the threshold
    for i in 1:(length(sorted_numbers) - 1)
        if sorted_numbers[i + 1] - sorted_numbers[i] <= threshold
            return true
        end
    end
    
    # If no close elements are found, return false
    return false
end
