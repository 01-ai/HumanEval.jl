"""
    rounded_avg(n::Int, m::Int)::Union{Int, String}

You are given two positive integers n and m, and your task is to compute the
average of the integers from n through m (including n and m). Round the answer
to the nearest integer and convert that to binary. If n is greater than m,
return -1.

# Examples

```jldoctest
julia> rounded_avg(1, 5)
"11"

julia> rounded_avg(7, 5)
-1

julia> rounded_avg(10, 20)
"1111"

julia> rounded_avg(20, 33)
"11010"
```
"""

To implement the `rounded_avg` function, we will follow these steps:

1. Check if `n` is greater than `m`. If it is, return `-1` as specified in the doc string.
2. Calculate the sum of all integers from `n` to `m` using the formula for the sum of an arithmetic series: `sum = (m - n + 1) * (n + m) / 2`.
3. Calculate the average by dividing the sum by the number of elements, which is `m - n + 1`.
4. Round the average to the nearest integer using the `round` function.
5. Convert the rounded average to binary using the `bin` function.
6. Return the binary string representation of the rounded average.

Now, let's write the code for the `rounded_avg` function following the outline above.
