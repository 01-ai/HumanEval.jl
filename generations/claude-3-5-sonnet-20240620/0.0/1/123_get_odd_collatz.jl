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
    if n <= 0
        throw(ArgumentError("Input must be a positive integer"))
    end

    result = BigInt[]
    current = BigInt(n)

    while current != 1
        if isodd(current)
            push!(result, current)
        end
        
        if iseven(current)
            current ÷= 2
        else
            current = 3 * current + 1
        end
    end

    # Add 1 to the result (as it's always the last odd number in the sequence)
    push!(result, BigInt(1))

    # Sort the result in ascending order
    sort!(result)

    return result
end