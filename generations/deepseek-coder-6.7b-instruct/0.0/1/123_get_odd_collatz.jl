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
    # Initialize the list with the first number in the sequence
    collatz = BigInt[n]

    # Continue the sequence until we reach 1
    while n != 1
        # If the current number is even, divide it by 2
        if iseven(n)
            n = n � 2
        # If the current number is odd, multiply it by 3 and add 1
        else
            n = 3n + 1
        end

        # If the new number is odd, add it to the list
        if isodd(n)
            push_odd(collatz, n)
        end
    end

    # Return the list sorted in increasing order
    return sort(collatz)
end

# Helper function to push an odd number to the list in the correct position
function push_odd(arr::Vector{BigInt}, n::BigInt)
    # Find the position where n should be inserted to keep the list sorted
    pos = searchsortedfirst(arr, n, by = x -> abs(x - n))

    # Insert n at the correct position
    insert_odd(arr, pos, n)
end

# Helper function to insert an odd number at a specific position in the list
function insert_odd(arr::Vector{BigInt}, pos::Int, n::BigInt)
    # If the list is not full, append n at the end
    if length(arr) < pos
        push_odd(arr, n)
    # If the list is full, insert n at the correct position
    else
        insert_odd(arr, pos, n)
    end
end
