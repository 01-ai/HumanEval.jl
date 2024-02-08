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
    if n % 2 != 0
        error("The number of coefficients must be even.")
    end
    
    max_coeff = maximum(abs.(xs))
    if max_coeff == 0
        error("The largest non-zero coefficient must be non-zero.")
    end
    
    if xs[1] == 0
        error("The constant term must be non-zero.")
    end
    
    if xs[n] == 0
        error("The leading coefficient must be non-zero.")
    end
    
    if xs[1] < 0 && xs[n] < 0
        error("The constant term and the leading coefficient must have opposite signs.")
    end
    
    if xs[1] > 0 && xs[n] > 0
        error("The constant term and the leading coefficient must have opposite signs.")
    end
    
    if xs[1] < 0
        xs = -xs
    end
    
    a = xs[1]
    b = xs[n]
    c = xs[2:n-1]
    
    x = 0.0
    for i in 1:100
        x = (a + b * x) / (1 + sum(c .* x .^ (1:n-2)))
    end
    
    return x
end