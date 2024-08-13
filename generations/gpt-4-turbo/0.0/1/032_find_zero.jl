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
    poly(xs::Vector, x::Float64) -> Float64

Evaluates polynomial with coefficients `xs` at point `x`. Return `xs[1] + xs[2] * x + xs[3] * x^2 + .... xs[n] * x^n`.
"""
function poly(xs::Vector, x::Float64)
    return sum(coeff * (x^(i - 1)) for (i, coeff) in enumerate(xs))
end

"""
    find_zero(xs::Vector{Int}) -> Float64

`xs` are coefficients of a polynomial. `find_zero` finds `x` such that `poly(xs, x) = 0`. `find_zero` returns only one zero point, even if there are many. Moreover,
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
    # Check if the number of coefficients is even and the last coefficient is non-zero
    if length(xs) % 2 != 0 || xs[end] == 0
        error("The polynomial must have an even number of coefficients and the highest degree coefficient must be non-zero.")
    end

    # Define the polynomial function
    polynomial = x -> poly(xs, x)

    # Find a zero using the Roots package
    zero = find_zero(polynomial)

    return zero
end