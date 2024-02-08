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
    # Check if the vector has at least two elements
    if length(numbers) < 2
        error("The input vector must have at least two elements.")
    end

    # Find the minimum and maximum values in the vector
    min_val = minimum(numbers)
    max_val = maximum(numbers)

    # Check if all numbers are the same, which would cause division by zero
    if min_val == max_val
        error("All numbers in the vector are the same. Rescaling is not possible.")
    end

    # Apply the linear transformation to rescale the numbers
    return (numbers .- min_val) ./ (max_val - min_val)
end

# Example usage
println(rescale_to_unit([1.0, 2.0, 3.0, 4.0, 5.0]))
