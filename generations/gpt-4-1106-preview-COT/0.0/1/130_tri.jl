"""
    tri(n::Int)::Vector{Int}

Everyone knows Fibonacci sequence, it was studied deeply by mathematicians in
the last couple centuries. However, what people don't know is Tribonacci
sequence. Tribonacci sequence is defined by the recurrence:

tri(1) = 1

tri(n) = 1 + n / 2, if n is even.

tri(n) =  tri(n - 1) + tri(n - 2) + tri(n + 1), if n is odd.

For example:

tri(2) = 1 + (2 / 2) = 2

tri(4) = 3

tri(3) = tri(2) + tri(1) + tri(4) = 2 + 1 + 3 = 6

You are given a non-negative integer number n, you have to a return a list of
the first n numbers of the Tribonacci sequence.

# Examples

```jldoctest
julia> tri(3)
3-element Vector{Int64}:
 1
 2
 6
```
"""

To implement the `tri` function, we will follow these steps:

1. Initialize an empty vector to store the Tribonacci sequence.
2. Check if `n` is less than or equal to 0, if so, return an empty vector.
3. If `n` is 1, return a vector containing only the number 1.
4. Start a loop from 1 to `n` to calculate the Tribonacci numbers.
5. Inside the loop, check if the current index `i` is 1, then append 1 to the sequence.
6. If `i` is even, calculate `1 + i / 2` and append it to the sequence.
7. If `i` is odd and greater than 1, calculate `tri(i - 1) + tri(i - 2) + tri(i + 1)` using the previously calculated values in the sequence. Note that for `i + 1`, we need to handle the case where it goes beyond the current length of the sequence.
8. After the loop, return the vector containing the Tribonacci sequence.

Now, let's write the code for the `tri` function.
