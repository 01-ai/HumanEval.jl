"""
Evaluates polynomial with coefficients `xs` at point `x`. Return `xs[1] + xs[2]

  - x + xs[3] * x^2 + .... xs[n] * x^n`.
"""
poly(xs::Vector, x::Float64) = sum(coeff * (x^(i - 1)) for (i, coeff) in enumerate(xs))


"""
    find_zero(xs::Vector{Int})

`xs` are coefficients of a polynomial. `find_zero` find `x` such that `poly(x) = 0`. `find_zero` returns only only zero point, even if there are many. Moreover,
`find_zero` only takes list xs having even number of coefficients and largest
non zero coefficient as it guarantees a solution.

# Examples

```jldoctest
julia> round(find_zero([1, 2]), digits = 1) # f(x) = 1 + 2x
-0.5

julia> round(find_zero([-6, 11, -6, 1]), digits = 1) # (x - 1) * (x - 2) * (x - 3) = -6 + 11x - 6x^2 + x^3
1.0
```
"""

using Roots

"""
    poly(xs::Vector, x::Float64)

Evaluates polynomial with coefficients `xs` at point `x`. Return `xs[1] + xs[2] * x + xs[3] * x^2 + .... xs[n] * x^n`.
"""
poly(xs::Vector, x::Float64) = sum(coeff * (x^(i - 1)) for (i, coeff) in enumerate(xs))

"""
    find_zero(xs::Vector{Int})

Finds `x` such that `poly(xs, x) = 0`. Assumes `xs` has an even number of coefficients and the largest non-zero coefficient, guaranteeing a solution.
"""
function find_zero(xs::Vector{Int})
    # Ensure the polynomial has an even number of coefficients
    if length(xs) % 2 != 0
        error("The polynomial must have an even number of coefficients.")
    end

    # Define the polynomial function based on the coefficients
    p(x) = poly(xs, x)

    # Find a root of the polynomial. This example uses the `find_zero` function from the `Roots` package.
    # Note: This approach finds one root, which might not be the only one.
    root = find_zero(p, (-1000.0, 1000.0)) # You might need to adjust the search interval based on the expected range of roots.

    return root
end
