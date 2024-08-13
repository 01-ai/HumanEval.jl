"""
    starts_one_ends(n::Int)::Int

Given a positive integer `n`, return the count of the numbers of n-digit
positive integers that start or end with 1.
"""
function starts_one_ends(n::Int)::Int
    if n <= 0
        return 0
    end
    
    # All n-digit numbers that start with 1
    start_with_1 = 10^(n-1)
    
    # All n-digit numbers that end with 1
    end_with_1 = 10^(n-1)
    
    # Numbers that are counted twice (both start and end with 1)
    double_counted = 10^(n-2)
    
    # Total count
    return start_with_1 + end_with_1 - double_counted
end
