"""
    make_a_pile(n::Int)::Vector{Int}

Given a positive integer n, you have to make a pile of n levels of stones. The
first level has n stones. The number of stones in the next level is:

  - the next odd number if n is odd.
  - the next even number if n is even.

# Examples

```jldoctest
julia> make_a_pile(3)
3-element Vector{Int64}:
 3
 5
 7
```
"""

Here is a step-by-step outline of how to solve this problem:

1. Initialize an empty vector to store the number of stones in each level.
2. If n is odd, start with n and add 2 to get the number of stones in the next level.
3. If n is even, start with n+1 and add 2 to get the number of stones in the next level.
4. Repeat step 3 until you have n levels.
5. Return the vector of stones.

Here is the Julia code that implements this outline:

