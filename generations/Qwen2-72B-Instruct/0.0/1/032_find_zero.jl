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
    # Calculate the derivative of the polynomial
    function derivative(xs, x)
        return sum(i * coeff * (x^(i - 2)) for (i, coeff) in enumerate(xs) if i > 1)
    end

    # Initial guess
    x = 1.0

    # Tolerance for convergence
    tol = 1e-10

    # Maximum number of iterations
    max_iter = 1000

    for _ in 1:max_iter
        # Calculate the value of the polynomial and its derivative at x
        poly_val = poly(xs, x)
        deriv_val = derivative(xs, x)

        # Check if the derivative is zero to avoid division by zero
        if deriv_val == 0
            break
        end

        # Update the guess using the Newton-Raphson formula
        x -= poly_val / deriv_val

        # Check for convergence
        if abs(poly_val) < tol
            return x
        end
    end

    # If the method did not converge, return the last guess
    return x
end
