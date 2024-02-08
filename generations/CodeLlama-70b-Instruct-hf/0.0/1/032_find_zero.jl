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
    # Check if the input vector is valid
    if length(xs) % 2 != 0 || xs[end] == 0
        error("Invalid input vector")
    end

    # Find the zero point using the Newton-Raphson method
    x = 1.0
    while abs(poly(xs, x)) > 1e-10
        x = x - poly(xs, x) / (poly(xs, x) - poly(xs, x - 1))
    end

    return x
end

# Test the function
xs = [1, 2]
x = find_zero(xs)
println("The zero point is: ", x)

xs = [-6, 11, -6, 1]
x = find_zero(xs)
println("The zero point is: ", x)