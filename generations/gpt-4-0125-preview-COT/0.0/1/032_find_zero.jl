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

### Outline for `find_zero` Function

1. **Input Validation**: Check if the input list `xs` has an even number of coefficients and the largest coefficient is non-zero. If not, return an error or a message indicating the requirements are not met.

2. **Root Finding Strategy**: Since the polynomial is guaranteed to have a real root due to the constraints (even number of coefficients and largest non-zero coefficient), we can use a numerical method to find a root. A common approach is to use the Newton-Raphson method or a binary search method if the polynomial's behavior is not well-suited for Newton-Raphson.

3. **Implementing Newton-Raphson Method** (if chosen):
   - Choose an initial guess `x0`. A simple choice could be `0` or any random value.
   - Define the derivative of the polynomial function.
   - Iteratively update the guess using the formula: `x1 = x0 - f(x0) / f'(x0)`.
   - Continue until the change in `x` is below a certain threshold or a maximum number of iterations is reached.

4. **Implementing Binary Search Method** (alternative):
   - Identify a range `[a, b]` where the polynomial changes sign (indicating a root exists within).
   - Repeatedly narrow the range by selecting the midpoint and determining which half contains the root based on the sign change.
   - Continue until the range is sufficiently small.

5. **Return the Found Root**: Once the root is found to a satisfactory precision, return this value as the function's result.

6. **Integration with `poly` Function**: Utilize the previously defined `poly` function to evaluate the polynomial at given points during the root-finding process.

### Implementation of `find_zero`

Given the outline, let's proceed with the implementation. We'll choose the Newton-Raphson method for its simplicity and efficiency, assuming the polynomial's behavior is suitable.

