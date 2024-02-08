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
    # Check if the input vector is empty or contains a single element
    if length(numbers) < 2
        throw(ArgumentError("Input vector must contain at least two elements."))
    end

    # Find the minimum and maximum values in the input vector
    min_val, max_val = extrema(numbers)

    # Check if the input vector contains only one unique value
    if min_val == max_val
        throw(ArgumentError("Input vector must contain at least two unique values."))
    end

    # Apply the linear transformation to rescale the input vector
    return (numbers .- min_val) ./ (max_val - min_val)
end
