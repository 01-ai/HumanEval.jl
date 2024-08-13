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
    # Initialize the current value with n and prepare a list to store odd numbers
    current = BigInt(n)
    odd_numbers = BigInt[]

    # Continue the sequence until it reaches 1
    while current != 1
        # If current is odd, add to the list
        if current % 2 != 0
            push!(odd_numbers, current)
        end
        
        # Apply the Collatz rule
        if current % 2 == 0
            current ÷= 2
        else
            current = 3 * current + 1
        end
    end

    # Add the final 1 to the list if not already included
    push!(odd_numbers, BigInt(1))

    # Sort the list of odd numbers
    sort!(odd_numbers)
    return odd_numbers
end
