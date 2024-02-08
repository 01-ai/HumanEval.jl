"""
    starts_one_ends(n::Int)::Int

Given a positive integer `n`, return the count of the numbers of n-digit
positive integers that start or end with 1.
"""
function starts_one_ends(n::Int)::Int
    if n == 1
        # Special case: If n is 1, the only number that satisfies the condition is 1 itself.
        return 1
    else
        # Calculate the total count as per the logic described above.
        return 2 * 10^(n-1) - 10^(n-2)
    end
end
