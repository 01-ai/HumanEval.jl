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
    min_val = minimum(numbers)
    max_val = maximum(numbers)
    range = max_val - min_val
    
    # Apply linear transformation to rescale numbers to unit range [0, 1]
    return (numbers .- min_val) ./ range
end
numbers = [1.0, 2.0, 3.0, 4.0, 5.0]
rescaled_numbers = rescale_to_unit(numbers)
println(rescaled_numbers)
[0.0, 0.25, 0.5, 0.75, 1.0]
