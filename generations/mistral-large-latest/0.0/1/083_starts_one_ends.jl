"""
    starts_one_ends(n::Int)::Int

Given a positive integer `n`, return the count of the numbers of n-digit
positive integers that start or end with 1.
"""
function starts_one_ends(n::Int)::Int
    if n == 1
        return 2
    end

    # Count of numbers starting with 1
    start_with_1 = 9 * 10^(n-2)

    # Count of numbers ending with 1
    end_with_1 = 9 * 10^(n-1)

    # Subtract the number 111...11 which is counted twice
    if n > 1
        subtract = 1 * 10^(n-1)
    else
        subtract = 0
    end

    return start_with_1 + end_with_1 - subtract
end
