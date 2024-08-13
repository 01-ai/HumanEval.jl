"""
    starts_one_ends(n::Int)::Int

Given a positive integer `n`, return the count of the numbers of n-digit
positive integers that start or end with 1.
"""
function starts_one_ends(n::Int)::Int
    # For n-digit numbers, there are 9^(n-1) numbers that neither start nor end with 1
    # There are 2*9^(n-1) numbers that either start or end with 1, but this double counts
    # the numbers that both start and end with 1, of which there are 9^(n-2) for n > 1
    # and 1 for n = 1.
    n == 1 ? 2 : 2 * 9^(n-1) - 9^(n-2)
end
