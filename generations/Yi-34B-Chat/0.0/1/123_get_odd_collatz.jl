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
    # Initialize an empty vector to store the odd numbers
    odd_numbers = Vector{BigInt}()

    # Iterate until the Collatz sequence reaches 1
    current_number = n
    while current_number ≠ 1
        # If the current number is odd, add it to the vector
        if current_number % 2 ≠ 0
            push!(odd_numbers, current_number)
        end

        # Apply the Collatz rule
        if current_number % 2 == 0
            current_number //= 2
        else
            current_number = 3current_number + 1
        end
    end

    # Sort the vector in increasing order
    sort!(odd_numbers)

    # Return the vector of odd numbers
    return odd_numbers
end
