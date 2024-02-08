"""
    starts_one_ends(n::Int)::Int

Given a positive integer `n`, return the count of the numbers of n-digit
positive integers that start or end with 1.
"""
function starts_one_ends(n::Int)::Int
    if n < 1
        return 0
    end
    if n == 1
        return 1
    end
    return 2 * 9 * 10^(n-2)
end
