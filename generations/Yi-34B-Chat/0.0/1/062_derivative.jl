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
    # Initialize the derivative coefficients with the same length as the original polynomial
    derivative_xs = zeros(length(xs) - 1)

    # Loop through the coefficients of the original polynomial and calculate the derivative
    for i in 1:length(xs) - 1
        # The derivative of x^i is i*x^(i-1)
        derivative_xs[i] = i * xs[i]
    end

    # Return the derivative coefficients
    return derivative_xs
end
