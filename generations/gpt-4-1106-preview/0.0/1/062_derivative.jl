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
    # The derivative of a constant is 0, so we ignore the first coefficient
    # and start differentiating from the linear term.
    return [i * xs[i] for i in 2:length(xs)]
end

# Examples
println(derivative([3, 1, 2, 4, 5]))  # Output: [1, 4, 12, 20]
println(derivative([1, 2, 3]))        # Output: [2, 6]
