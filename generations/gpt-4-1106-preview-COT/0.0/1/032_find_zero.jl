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

To implement the `find_zero` function, we will follow these steps:

1. Validate the input:
   - Ensure that the input `xs` is a vector of integers.
   - Check that the number of coefficients is even.
   - Check that the largest coefficient is non-zero.

2. Find the zero of the polynomial:
   - Since the polynomial is guaranteed to have a zero due to the constraints, we can use a numerical method to find a zero. We will use the Newton-Raphson method for root-finding.

3. Implement the Newton-Raphson method:
   - Choose an initial guess for `x`. A reasonable starting point could be 0.
   - Define the polynomial function `f(x)` using the given coefficients.
   - Define the derivative of the polynomial function `f'(x)`.
   - Iterate the Newton-Raphson formula `x = x - f(x)/f'(x)` until convergence.
   - Check for convergence by seeing if the absolute value of `f(x)` is below a certain threshold (e.g., 1e-7).

4. Return the found zero of the polynomial.

Now, let's write the code for the `find_zero` function.
