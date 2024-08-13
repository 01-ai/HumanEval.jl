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
        throw(ArgumentError("The number of coefficients must be even."))
    end
    
    # Check if the largest coefficient is non-zero
    if xs[end] == 0
        throw(ArgumentError("The largest coefficient must be non-zero."))
    end
    
    # Define the polynomial function using the given coefficients
    f(x) = poly(xs, x)
    
    # Find a zero of the polynomial using the bisection method
    a, b = -1.0, 1.0
    while b - a > 1e-8
        c = (a + b) / 2
        if f(a) * f(c) < 0
            b = c
        else
            a = c
        end
    end
    
    return (a + b) / 2
end
