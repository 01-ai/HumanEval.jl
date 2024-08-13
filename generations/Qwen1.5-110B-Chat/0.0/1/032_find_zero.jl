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
function find_zero(xs::Vector{Int})
    n = length(xs)
    @assert n % 2 == 0 "Coefficient vector must have an even number of elements."
    @assert xs[end] != 0 "The last coefficient must be non-zero."

    # Using the fact that the roots of a polynomial can be found by setting the polynomial equal to 0
    # and solving for x. For a quadratic equation ax^2 + bx + c = 0, the root can be found using the formula:
    # x = (-b ± sqrt(b^2 - 4ac)) / 2a
    # Here, we assume the polynomial is of the form xs[1]*x^(n-1) + xs[2]*x^(n-2) + ... + xs[n]*x^0
    # For even n, the "quadratic" part we're interested in is the last two coefficients.
    a = xs[n-1]
    b = xs[n]

    # Calculate the discriminant
    discriminant = b^2 - 4a*xs[1]

    # Ensure we find the real root assuming the polynomial has a real root based on the given conditions
    # We use the positive part of the formula to find a real root, assuming the conditions ensure a real solution.
    root = (-b + sqrt(discriminant)) / (2a)

    return root
end
