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
    # Check if the number of coefficients is even and the largest non-zero coefficient is present
    if mod(n, 2) != 0 || maximum(abs.(xs)) == 0
        error("Invalid input: find_zero requires an even number of coefficients and a non-zero largest coefficient.")
    end

    # Calculate the sum of coefficients
    sum_coeff = sum(xs)

    # Calculate the value of x that makes the polynomial equal to zero
    x = -sum_coeff / n

    return round(x, digits = 1)
end
