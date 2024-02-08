"""
    starts_one_ends(n::Int)::Int

Given a positive integer `n`, return the count of the numbers of n-digit
positive integers that start or end with 1.
"""
function starts_one_ends(n::Int)::Int
    total = 10^n
    starts_with_one = 9 * 10^(n-1)
    ends_with_one = 10^(n-1)
    starts_or_ends_with_one = starts_with_one + ends_with_one
    return starts_or_ends_with_one
end
