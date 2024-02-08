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
    min_num = minimum(numbers)
    max_num = maximum(numbers)
    return (numbers .- min_num) ./ (max_num - min_num)
end

# Test the function
numbers = [1.0, 2.0, 3.0, 4.0, 5.0]
rescaled_numbers = rescale_to_unit(numbers)
println(rescaled_numbers)

