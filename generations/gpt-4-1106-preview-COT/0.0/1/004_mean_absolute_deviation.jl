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
    # Step 1: Calculate the mean of the input numbers
    x_mean = mean(numbers)
    
    # Step 2: Compute the absolute differences
    abs_diffs = abs.(numbers .- x_mean)
    
    # Step 3: Calculate the average of the absolute differences
    mad = mean(abs_diffs)
    
    # Step 4: Return the result
    return mad
end
mean_absolute_deviation([1.0, 2.0, 3.0, 4.0])
