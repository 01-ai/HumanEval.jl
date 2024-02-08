"""
    starts_one_ends(n::Int)::Int

Given a positive integer `n`, return the count of the numbers of n-digit
positive integers that start or end with 1.
"""
function starts_one_ends(n::Int)::Int
    if n == 1
        # If n is 1, there's only one number that starts and ends with 1, which is 1 itself.
        return 1
    else
        # Count numbers starting with 1 and numbers ending with 1, then subtract the double-counted numbers.
        return 2 * 10^(n - 1) - 10^(n - 2)
    end
end
