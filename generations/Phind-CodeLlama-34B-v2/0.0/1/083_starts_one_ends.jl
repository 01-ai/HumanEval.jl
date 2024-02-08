"""
    starts_one_ends(n::Int)::Int

Given a positive integer `n`, return the count of the numbers of n-digit
positive integers that start or end with 1.
"""
function starts_one_ends(n::Int)::Int
    if n == 1
        return 2 # there are two numbers: 1 and 0
    else
        return 2 * (10^(n-1) - 1) # there are 10^(n-1) numbers starting with 1 and 10^(n-1) numbers ending with 1
    end
end
