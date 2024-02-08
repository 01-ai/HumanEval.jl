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
    # Step 1: Find the minimum and maximum values
    min_val = minimum(numbers)
    max_val = maximum(numbers)

    # Step 2 & 3: Subtract the minimum and divide by the range (max - min)
    # to rescale numbers to the unit interval [0, 1]
    return [(x - min_val) / (max_val - min_val) for x in numbers]
end

# Example usage
println(rescale_to_unit([1.0, 2.0, 3.0, 4.0, 5.0]))
