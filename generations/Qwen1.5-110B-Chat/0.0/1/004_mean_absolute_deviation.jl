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
    n = length(numbers)
    if n == 0
        error("Input vector cannot be empty.")
    end
    mean_value = sum(numbers) / n
    absolute_deviations = abs.(numbers .- mean_value)
    return sum(absolute_deviations) / n
end
