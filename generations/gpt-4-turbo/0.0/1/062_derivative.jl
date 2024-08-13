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
function derivative(xs::Vector)
    # Length of the input vector
    n = length(xs)
    
    # If the polynomial is a constant or empty, the derivative is an empty vector
    if n <= 1
        return Int[]
    end
    
    # Initialize the result vector for the derivative coefficients
    derivative_coeffs = Vector{Int}(undef, n - 1)
    
    # Compute the derivative coefficients
    for i in 2:n
        derivative_coeffs[i - 1] = xs[i] * (i - 1)
    end
    
    return derivative_coeffs
end
