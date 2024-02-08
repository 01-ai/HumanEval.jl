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
    # Step 1: Find the Minimum and Maximum Values
    min_val = minimum(numbers)
    max_val = maximum(numbers)

    # Ensure there are at least two distinct elements
    if min_val == max_val
        error("Input vector must contain at least two distinct elements.")
    end

    # Step 2: No explicit calculation for scale and shift needed, directly apply in transformation

    # Step 3: Transform the Numbers
    transformed_numbers = ((numbers .- min_val) ./ (max_val - min_val))

    # Step 4: Return the Transformed Vector
    return transformed_numbers
end
