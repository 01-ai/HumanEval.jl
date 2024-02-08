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
    # The derivative of a constant (the first element of xs) is 0, so we skip it.
    # We start from the second element (if it exists) and calculate the derivative.
    return [i * xs[i+1] for i in 1:length(xs)-1]
end

# Examples to test the function
println(derivative([3, 1, 2, 4, 5]))  # Expected: [1, 4, 12, 20]
println(derivative([1, 2, 3]))        # Expected: [2, 6]
