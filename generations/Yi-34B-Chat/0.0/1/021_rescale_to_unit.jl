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
    # Check if there are at least two elements in the vector
    if length(numbers) < 2
        throw(ArgumentError("The vector must contain at least two elements."))
    end

    # Find the minimum and maximum values in the vector
    min_val = minimum(numbers)
    max_val = maximum(numbers)

    # Create an empty vector to hold the rescaled numbers
    rescaled_numbers = Vector{Float64}(undef, length(numbers))

    # Rescale each number in the vector
    for (i, num) in enumerate(numbers)
        rescaled_numbers[i] = (num - min_val) / (max_val - min_val)
    end

    return rescaled_numbers
end
