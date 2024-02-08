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
    # Check if n is positive
    if n < 1
        throw(DomainError(n, "Input must be a positive integer"))
    end

    # Initialize the collatz sequence
    collatz_sequence = BigInt[]

    # Start with n
    current_number = BigInt(n)

    # Iterate until we reach 1
    while current_number != 1
        # If the current number is odd, add it to the sequence
        if current_number % 2 == 1
            push!(collatz_sequence, current_number)
        end

        # Calculate the next number in the sequence
        if current_number % 2 == 0
            current_number = current_number ÷ 2
        else
            current_number = 3 * current_number + 1
        end
    end

    # Add 1 to the sequence
    push!(collatz_sequence, 1)

    # Sort the sequence in increasing order
    sort!(collatz_sequence)

    return collatz_sequence
end
