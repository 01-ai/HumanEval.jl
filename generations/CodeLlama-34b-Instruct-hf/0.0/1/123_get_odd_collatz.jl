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
    # Initialize an empty list to store the odd numbers in the Collatz sequence
    odd_numbers = BigInt[]

    # Start with the given number n
    current_number = n

    # Loop until the sequence reaches 1
    while current_number != 1
        # If the current number is even, divide it by 2
        if current_number % 2 == 0
            current_number = current_number ÷ 2
        # If the current number is odd, multiply it by 3 and add 1
        else
            current_number = current_number * 3 + 1
        end

        # If the current number is odd, add it to the list of odd numbers
        if current_number % 2 == 1
            push!(odd_numbers, current_number)
        end
    end

    # Return the sorted list of odd numbers
    return sort(odd_numbers)
end
