"""
    get_odd_collatz(n::Int)::Vector{BigInt}

Given a positive integer `n`, return a sorted list that has the odd numbers in
collatz sequence.

The Collatz conjecture is a conjecture in mathematics that concerns a sequence
defined as follows: start with any positive integer n. Then each term is
obtained from the previous term as follows: if the previous term is even, the
next term is one half of the previous term. If the previous term is odd, the
next term is 3 times the previous term plus 1. The conjecture is that no matter
what value of n, the sequence will always reach 1.

!!! note

     1. Collatz(1) is [1].
     2. returned list sorted in increasing order.
     3. Consider using BigInt to avoid overflow

# Examples

```jldoctest
julia> get_odd_collatz(5)  # The collatz sequence for 5 is [5, 16, 8, 4, 2, 1], so the odd numbers are only 1, and 5.
2-element Vector{BigInt}:
 1
 5
```
"""
function get_odd_collatz(n::Int)::Vector{BigInt}
    # Convert n to BigInt to avoid overflow
    n = BigInt(n)
    # Initialize an empty vector to store the odd numbers
    odd_numbers = BigInt[]
    # While n is not 1
    while n != 1
        # If n is odd, add it to the vector
        if isodd(n)
            push!(odd_numbers, n)
        end
        # Apply the Collatz conjecture rule
        n = iseven(n) ? n ÷ 2 : 3n + 1
    end
    # Push 1 to the vector as it's always part of the sequence and it's odd
    push!(odd_numbers, 1)
    # Sort the vector in increasing order and return it
    return sort(odd_numbers)
end
