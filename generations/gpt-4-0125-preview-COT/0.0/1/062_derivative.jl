"""
    derivative(xs::Vector)::Vector

`xs` represent coefficients of a polynomial. `xs[0] + xs[1] * x + xs[2] * x^2 + ....` Return derivative of this polynomial in the same form.

# Examples

```jldoctest
julia> derivative([3, 1, 2, 4, 5])
4-element Vector{Int64}:
  1
  4
 12
 20

julia> derivative([1, 2, 3])
2-element Vector{Int64}:
 2
 6
```
"""
function derivative(xs::Vector)::Vector
    # Step 1: Initialize an empty vector for the derivative coefficients
    derivative_coeffs = Vector{Int64}()
    
    # Step 2 & 3: Iterate through xs, skipping the first element
    for (index, coeff) in enumerate(xs)
        if index > 1  # Skip the first element
            # Calculate the derivative and append to the derivative_coeffs vector
            push!(derivative_coeffs, coeff * (index - 1))
        end
    end
    
    # Step 4: Return the derivative coefficients vector
    return derivative_coeffs
end
