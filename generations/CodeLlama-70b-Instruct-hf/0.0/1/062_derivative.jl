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
    # Check if the input is a vector
    if !isa(xs, Vector)
        throw(ArgumentError("Input must be a vector"))
    end

    # Check if the input is empty
    if isempty(xs)
        throw(ArgumentError("Input vector cannot be empty"))
    end

    # Initialize the derivative vector
    derivative = Vector{Int64}(undef, length(xs) - 1)

    # Calculate the derivative
    for i in 1:length(xs) - 1
        derivative[i] = xs[i + 1] * (i + 1)
    end

    return derivative
end