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

# Function to evaluate polynomial at point x
function poly(xs::Vector, x::Float64)
    return sum(coeff * (x^(i - 1)) for (i, coeff) in enumerate(xs))
end

# Function to evaluate the derivative of the polynomial at point x
function poly_derivative(xs::Vector, x::Float64)
    return sum((i - 1) * coeff * (x^(i - 2)) for (i, coeff) in enumerate(xs) if i > 1)
end

# Function to find a zero of the polynomial using Newton-Raphson method
function find_zero(xs::Vector{Int}; tol::Float64 = 1e-7, max_iter::Int = 1000)
    x = 0.0  # Initial guess
    for iter in 1:max_iter
        f_x = poly(xs, x)
        f_prime_x = poly_derivative(xs, x)
        if abs(f_prime_x) < tol
            error("Derivative too small; Newton-Raphson method fails.")
        end
        x_new = x - f_x / f_prime_x
        if abs(x_new - x) < tol
            return x_new
        end
        x = x_new
    end
    error("Maximum iterations reached; Newton-Raphson method fails.")
end

# Examples
println(round(find_zero([1, 2]), digits = 1))  # f(x) = 1 + 2x
println(round(find_zero([-6, 11, -6, 1]), digits = 1))  # (x - 1) * (x - 2) * (x - 3)
