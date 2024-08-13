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

function find_zero(xs::Vector{Int})
    @assert length(xs) % 2 == 0 "The number of coefficients must be even"
    @assert xs[end] != 0 "The highest coefficient must be non-zero"

    # Define the polynomial function
    f(x) = sum(coeff * (x^(i - 1)) for (i, coeff) in enumerate(xs))

    # Find an interval [a, b] such that f(a) and f(b) have opposite signs
    a = 0.0
    b = 1.0
    while f(a) * f(b) >= 0
        b *= 2
    end

    # Use the bisection method to find a root
    root = find_zero(f, a, b)

    return root
end
