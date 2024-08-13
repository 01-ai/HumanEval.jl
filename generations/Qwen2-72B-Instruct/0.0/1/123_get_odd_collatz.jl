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
    # Initialize the result vector with BigInt type
    odds = Vector{BigInt}()
    # Convert n to BigInt to avoid overflow
    x = BigInt(n)
    while x != 1
        # Check if x is odd
        if x % 2 == 1
            # If odd, push it to the odds vector
            push!(odds, x)
        end
        # Apply the Collatz rule
        x = x % 2 == 0 ? x ÷ 2 : 3x + 1
    end
    # Push 1 to the odds vector as it is always the last number in the sequence
    push!(odds, 1)
    # Return the sorted vector of odd numbers
    return sort!(odds)
end
