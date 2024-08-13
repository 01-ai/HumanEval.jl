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
    if isempty(numbers)
        throw(ArgumentError("Input vector must not be empty"))
    end

    # Calculate the mean of the dataset
    mean_value = sum(numbers) / length(numbers)

    # Calculate the sum of absolute deviations from the mean
    sum_of_absolute_deviations = sum(abs.(numbers .- mean_value))

    # Calculate the mean absolute deviation
    mad = sum_of_absolute_deviations / length(numbers)

    return mad
end
