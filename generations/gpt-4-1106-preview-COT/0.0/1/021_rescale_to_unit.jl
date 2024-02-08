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

To implement the `rescale_to_unit` function, we will follow these steps:

1. Check if the input vector `numbers` has at least two elements. If not, throw an error.
2. Find the minimum and maximum values in the `numbers` vector.
3. Calculate the range (difference between the maximum and minimum values).
4. Subtract the minimum value from each element in the `numbers` vector to shift the smallest number to 0.
5. Divide each element in the shifted vector by the range to rescale the largest number to 1.
6. Return the rescaled vector.

Now, let's write the code for the `rescale_to_unit` function following the outline above.
