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

"""
Evaluates polynomial with coefficients `xs` at point `x`. Return `xs[1] + xs[2]

  - x + xs[3] * x^2 + .... xs[n] * x^n`.
"""
poly(xs::Vector, x::Float64) = sum(coeff * (x^(i - 1)) for (i, coeff) in enumerate(xs))

"""
Evaluates the derivative of the polynomial with coefficients `xs` at point `x`.
"""
poly_derivative(xs::Vector, x::Float64) = sum((i - 1) * coeff * (x^(i - 2)) for (i, coeff) in enumerate(xs) if i > 1)

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
    # Check if the number of coefficients is even
    if length(xs) % 2 != 0
        throw(ArgumentError("The number of coefficients must be even."))
    end

    # Initial guess for the root
    x0 = 0.0
    tolerance = 1e-7
    max_iterations = 1000

    for _ in 1:max_iterations
        f_x0 = poly(xs, x0)
        f_prime_x0 = poly_derivative(xs, x0)

        if abs(f_prime_x0) < 1e-10
            throw(ArgumentError("Derivative is too close to zero, cannot proceed with Newton-Raphson method."))
        end

        x1 = x0 - f_x0 / f_prime_x0

        if abs(x1 - x0) < tolerance
            return x1
        end

        x0 = x1
    end

    throw(ArgumentError("Newton-Raphson method did not converge within the maximum number of iterations."))
end

# Examples
println(round(find_zero([1, 2]), digits = 1)) # f(x) = 1 + 2x
println(round(find_zero([-6, 11, -6, 1]), digits = 1)) # (x - 1) * (x - 2) * (x - 3) = -6 + 11x - 6x^2 + x^3
