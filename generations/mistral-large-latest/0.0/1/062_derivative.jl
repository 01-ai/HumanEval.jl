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
    # Calculate the derivative of a polynomial given its coefficients
    # The derivative of x^n is n*x^(n-1), so we multiply each coefficient by its index and decrease the index by 1
    # The constant term (xs[1]) has a derivative of 0, so we start from the second element
    return [i * xs[i] for i in 2:length(xs)]
end
