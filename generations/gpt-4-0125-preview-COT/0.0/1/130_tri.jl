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

### Step-by-Step Outline

1. **Initialize the Tribonacci sequence**: Start by creating a vector to hold the Tribonacci sequence. Since the sequence is defined recursively, we need to initialize the first few values manually. According to the problem statement, `tri(1) = 1`. However, the recursive definition for odd numbers includes `tri(n + 1)`, which implies we need to calculate values beyond `n` to compute `tri(n)` for odd `n`. To simplify, we'll compute values up to `n` and handle edge cases as needed.

2. **Handle Base Cases**: For `n = 1`, return `[1]`. For `n = 2`, return `[1, 2]` since `tri(2) = 1 + (2 / 2) = 2`.

3. **Compute Tribonacci Values**: Iterate from `3` to `n`, and for each `i`, compute `tri(i)` based on the given rules:
   - If `i` is even, use the formula `tri(i) = 1 + i / 2`.
   - If `i` is odd, calculate `tri(i)` as the sum of `tri(i - 1)`, `tri(i - 2)`, and `tri(i + 1)` if `i + 1` is within bounds; otherwise, just sum `tri(i - 1)` and `tri(i - 2)`.

4. **Return the Tribonacci Sequence**: After populating the vector with the first `n` Tribonacci numbers, return the vector.

### Julia Code Implementation

