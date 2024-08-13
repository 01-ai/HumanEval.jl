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
    n = length(xs)
    if n <= 1
        return zeros(Int, max(n-1, 0))
    end

    derivative_coefficients = zeros(Int, n-1)

    for i in 2:n
        derivative_coefficients[i-1] = i * xs[i]
    end

    return derivative_coefficients
end