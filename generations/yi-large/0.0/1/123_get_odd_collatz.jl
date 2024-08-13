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
    # Initialize an empty list to store the odd numbers in the Collatz sequence.
    odd_numbers = BigInt[]
    
    # Check if n is 1, if so, return [1] since the Collatz sequence for 1 is just [1].
    if n == 1
        return [BigInt(1)]
    end
    
    # Convert n to BigInt to avoid overflow issues.
    n_big = BigInt(n)
    
    # Initialize a set to keep track of the odd numbers encountered.
    odd_set = Set{BigInt}()
    
    # Continue the loop until n_big reaches 1.
    while n_big > 1
        # If n_big is odd, add it to the set of odd numbers.
        if isodd(n_big)
            push!(odd_set, n_big)
        end
        
        # Calculate the next term in the Collatz sequence.
        n_big = iseven(n_big) ? div(n_big, 2) : 3n_big + 1
    end
    
    # Convert the set to a list and sort it in increasing order.
    odd_numbers = sort(collect(odd_set))
    
    return odd_numbers
end

# Example usage:
# julia> get_odd_collatz(5)  # The collatz sequence for 5 is [5, 16, 8, 4, 2, 1], so the odd numbers are only 1, and 5.
# 2-element Vector{BigInt}:
#  1
#  5
