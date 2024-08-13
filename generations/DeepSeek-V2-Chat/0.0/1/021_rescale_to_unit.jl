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
    if length(numbers) < 2
        throw(ArgumentError("The list must contain at least two elements"))
    end
    
    min_val = minimum(numbers)
    max_val = maximum(numbers)
    
    if min_val == max_val
        throw(ArgumentError("All numbers in the list are the same, cannot rescale"))
    end
    
    rescaled_numbers = [(x - min_val) / (max_val - min_val) for x in numbers]
    return rescaled_numbers
end