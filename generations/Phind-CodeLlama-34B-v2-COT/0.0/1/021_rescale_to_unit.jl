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
    # Find the minimum and maximum values
    min_value = minimum(numbers)
    max_value = maximum(numbers)

    # Calculate the range of the input data
    range_value = max_value - min_value

    # Create a new vector to store the rescaled numbers
    rescaled_numbers = similar(numbers)

    # Iterate over the input vector and rescale each number
    for i in eachindex(numbers)
        rescaled_numbers[i] = (numbers[i] - min_value) / range_value
    end

    # Return the vector with the rescaled numbers
    return rescaled_numbers
end
