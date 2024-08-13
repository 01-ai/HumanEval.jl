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
    # Check if the number of coefficients is even
    if length(xs) % 2 != 0
        error("The number of coefficients must be even")
    end
    
    # Check if the largest coefficient is non-zero
    if xs[end] == 0
        error("The largest coefficient must be non-zero")
    end
    
    # Define the polynomial function
    f(x) = poly(xs, x)
    
    # Define the derivative of the polynomial function
    function df(x)
        sum(coeff * (i - 1) * (x^(i - 2)) for (i, coeff) in enumerate(xs) if i > 1)
    end
    
    # Initial guess: start at x = 0
    x = 0.0
    
    # Newton's method
    for _ in 1:100  # Maximum 100 iterations
        fx = f(x)
        if abs(fx) < 1e-10  # Convergence criterion
            return x
        end
        dfx = df(x)
        if dfx == 0
            error("Derivative is zero. Cannot continue.")
        end
        x = x - fx / dfx
    end
    
    error("Failed to converge after 100 iterations")
end

# The poly function as given in the problem statement
poly(xs::Vector, x::Float64) = sum(coeff * (x^(i - 1)) for (i, coeff) in enumerate(xs))
