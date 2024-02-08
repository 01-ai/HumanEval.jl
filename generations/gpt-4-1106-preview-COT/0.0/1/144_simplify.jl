"""
    simplify(x::String, n::String)::Bool

Your task is to implement a function that will simplify the expression x * n.
The function returns True if x * n evaluates to a whole number and False
otherwise. Both x and n, are string representation of a fraction, and have the
following format, <numerator>/<denominator> where both numerator and denominator
are positive whole numbers.

You can assume that x, and n are valid fractions, and do not have zero as
denominator.

# Examples

```jldoctest
julia> simplify("1/5", "5/1")
true

julia> simplify("1/6", "2/1")
false

julia> simplify("7/10", "10/2")
false
```
"""

To implement the `simplify` function, we will follow these steps:

1. Parse the input strings `x` and `n` to extract the numerators and denominators.
2. Convert the extracted numerators and denominators to integers.
3. Calculate the product of the two fractions by multiplying the numerators together and the denominators together.
4. Simplify the resulting fraction by dividing both the numerator and the denominator by their greatest common divisor (GCD).
5. Check if the simplified denominator is 1, which would mean the product is a whole number.
6. Return `true` if the product is a whole number, otherwise return `false`.

Now, let's write the code for the `simplify` function following the outline above.
