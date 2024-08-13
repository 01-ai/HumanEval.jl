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

To implement the `find_zero` function in Julia, we can use the fact that the polynomial has an even number of coefficients and the largest non-zero coefficient guarantees a solution. This suggests that the polynomial is of an odd degree and thus must have at least one real root by the fundamental theorem of algebra.

We can use numerical methods to find this root, such as the Newton-Raphson method. However, since we are dealing with a polynomial with an even number of coefficients and the largest non-zero coefficient, we can simplify the problem by looking for a root near the endpoints of the interval where the polynomial changes sign.

Here's a simple implementation of `find_zero` using a bisection method to find a root:

