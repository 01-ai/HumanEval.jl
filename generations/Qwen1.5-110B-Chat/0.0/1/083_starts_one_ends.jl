"""
    starts_one_ends(n::Int)::Int

Given a positive integer `n`, return the count of the numbers of n-digit
positive integers that start or end with 1.
"""
function starts_one_ends(n::Int)::Int
    if n == 1
        return 2
    end
    # Numbers starting with 1: 10^(n-1) possibilities
    # Numbers ending with 1: 9 * 10^(n-2) possibilities (excluding numbers starting with 1)
    # Subtract the overlap (numbers starting and ending with 1: 10^(n-2) possibilities)
    count = 10^(n-1) + 9 * 10^(n-2) - 10^(n-2)
    return count
end
