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
    # Step 2: Initialize an empty list for odd numbers
    odd_numbers = BigInt[]

    # Step 3: Generate the Collatz sequence
    current = BigInt(n)
    while current != 1
        # Check if the current number is odd
        if current % 2 != 0
            push!(odd_numbers, current)
        end
        # Apply the Collatz rule
        current = current % 2 == 0 ? current ÷ 2 : 3*current + 1
    end

    # Add the final number 1 to the list if it's not already there
    if 1 ∉ odd_numbers
        push!(odd_numbers, BigInt(1))
    end

    # Step 5: Sort the list of odd numbers
    sort!(odd_numbers)

    # Step 6: Return the sorted list
    return odd_numbers
end
