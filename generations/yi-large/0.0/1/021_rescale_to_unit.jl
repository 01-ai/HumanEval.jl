"""
    rescale_to_unit(numbers::Vector{Float64})::Vector{Float64}

Given list of numbers (of at least two elements), apply a linear transform to
that list, such that the smallest number will become 0 and the largest will
become 1

# Examples

```jldoctest
julia> rescale_to_unit([1.0, 2.0, 3.0, 4.0, 5.0])
5-element Vector{Float64}:
 0.0
 0.25
 0.5
 0.75
 1.0
```
"""
function rescale_to_unit(numbers::Vector{Float64})::Vector{Float64}
    # Find the minimum and maximum values in the list
    min_val, max_val = extrema(numbers)
    
    # Check if the range is already [0, 1]
    if min_val == 0 && max_val == 1
        return numbers
    end
    
    # Calculate the range of the original data
    original_range = max_val - min_val
    
    # Apply the linear transform to each number in the list
    rescaled = [(x - min_val) / original_range for x in numbers]
    
    return rescaled
end

# Example usage:
# julia> rescale_to_unit([1.0, 2.0, 3.0, 4.0, 5.0])
# 5-element Vector{Float64}:
#  0.0
#  0.25
#  0.5
#  0.75
#  1.0

# Note: This implementation assumes that the input vector `numbers` contains at least two elements.
