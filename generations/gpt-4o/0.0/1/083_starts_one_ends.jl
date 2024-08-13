"""
    starts_one_ends(n::Int)::Int

Given a positive integer `n`, return the count of the numbers of n-digit
positive integers that start or end with 1.
"""
function starts_one_ends(n::Int)::Int
    if n == 1
        return 1
    end
    # Total n-digit numbers
    total_numbers = 9 * 10^(n-1)
    # Numbers starting with 1
    start_with_1 = 10^(n-1)
    # Numbers ending with 1
    end_with_1 = 9 * 10^(n-2)
    # Numbers starting and ending with 1 (to avoid double counting)
    start_and_end_with_1 = 10^(n-2)
    
    return start_with_1 + end_with_1 - start_and_end_with_1
end
