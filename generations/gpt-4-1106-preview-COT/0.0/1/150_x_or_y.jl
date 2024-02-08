"""
    x_or_y(n::Int, x::Int, y::Int)::Int

A simple program which should return the value of x if n is a prime number and
should return the value of y otherwise.

# Examples

```jldoctest
julia> x_or_y(7, 34, 12)
34

julia> x_or_y(15, 8, 5)
5
```
"""

To implement the `x_or_y` function, we will follow these steps:

1. Define the function `x_or_y` with the appropriate signature.
2. Implement a helper function `is_prime` that takes an integer `n` and returns `true` if `n` is a prime number, and `false` otherwise.
   - Start by handling edge cases: if `n` is less than 2, it is not a prime number.
   - Use a loop to check if `n` has any divisors other than 1 and itself. If it does, return `false`.
   - If no divisors are found, return `true`.
3. In the `x_or_y` function, use the `is_prime` helper function to check if `n` is a prime number.
4. If `n` is a prime number, return `x`; otherwise, return `y`.

Now, let's write the code for the `x_or_y` function and the `is_prime` helper function.
