"""
    starts_one_ends(n::Int)::Int

Given a positive integer `n`, return the count of the numbers of n-digit
positive integers that start or end with 1.
"""
function starts_one_ends(n::Int)::Int
    # Step 1: Check if n is a positive integer
    if n <= 0
        throw(ArgumentError("n must be a positive integer"))
    end
    
    # Step 2: Handle the case when n is 1
    if n == 1
        return 1
    end
    
    # Step 3: Calculate the count for n > 1
    start_with_1 = 10^(n-1)
    end_with_1 = 10^(n-1)
    both_start_end_with_1 = 10^(n-2)
    
    # Step 4: Return the final count
    return start_with_1 + end_with_1 - both_start_end_with_1
end
