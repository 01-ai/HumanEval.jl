"""
    mean_absolute_deviation(numbers::Vector{Float64})::Float64

For a given list of input numbers, calculate Mean Absolute Deviation around the
mean of this dataset. Mean Absolute Deviation is the average absolute difference
between each element and a centerpoint (mean in this case):

MAD = average | x - x_mean |

# Examples

```jldoctest
julia> mean_absolute_deviation([1.0, 2.0, 3.0, 4.0])
1.0
```
"""
function mean_absolute_deviation(numbers::Vector{Float64})::Float64
    # Step 1: Calculate the mean of the numbers
    mean_value = mean(numbers)
    
    # Step 2: Compute the absolute differences from the mean
    absolute_differences = abs.(numbers .- mean_value)
    
    # Step 3: Calculate the average of these absolute differences
    mad = mean(absolute_differences)
    
    return mad
end
