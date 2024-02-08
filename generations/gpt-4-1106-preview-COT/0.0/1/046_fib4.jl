"""
    fib4(n::Int)::Int

The `fib4` number sequence is a sequence similar to the Fibbonacci sequnece
that's defined as follows:

fib4(0) -> 0 fib4(1) -> 0 fib4(2) -> 2 fib4(3) -> 0 fib4(n) -> fib4(n-1) +
fib4(n-2) + fib4(n-3) + fib4(n-4).

Please write a function to efficiently compute the n-th element of the fib4
number sequence. Do not use recursion.

# Examples

```jldoctest
julia> fib4(5)
4

julia> fib4(6)
8

julia> fib4(7)
14
```
"""

To implement the `fib4` function, we will follow these steps:

1. Check if `n` is less than 4 and return the corresponding base case value.
2. Initialize an array or four variables to store the last four computed values of the fib4 sequence.
3. Use a loop to calculate the fib4 values from 4 up to `n`.
4. In each iteration, calculate the next fib4 value by summing the last four values.
5. Update the stored last four fib4 values.
6. After the loop, return the last computed fib4 value.

Now, let's write the code for the `fib4` function.
