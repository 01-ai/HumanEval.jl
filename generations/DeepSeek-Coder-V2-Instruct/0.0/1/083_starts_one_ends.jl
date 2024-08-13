"""
    starts_one_ends(n::Int)::Int

Given a positive integer `n`, return the count of the numbers of n-digit
positive integers that start or end with 1.
"""
function starts_one_ends(n::Int)::Int
    if n == 1
        return 2  # For n = 1, the numbers are 1 and 10, so 2 numbers start or end with 1
    else
        # For n > 1, the count of n-digit numbers starting with 1 is 9^(n-1)
        # The count of n-digit numbers ending with 1 is also 9^(n-1)
        # However, we need to subtract the overlap where both start and end with 1, which is 9^(n-2)
        return 2 * 9^(n-1) - 9^(n-2)
    end
end
