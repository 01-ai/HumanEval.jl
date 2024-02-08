"""
    starts_one_ends(n::Int)::Int

Given a positive integer `n`, return the count of the numbers of n-digit
positive integers that start or end with 1.
"""
function starts_one_ends(n::Int)::Int
    # Initialize the counter
    count = 0

    # Iterate through all n-digit numbers
    for i = 10^(n-1) : 10^n - 1
        # Check whether the first or the last digit is 1
        if i % 10 == 1 || div(i, 10^(n-1)) == 1
            # If it is, increment the counter
            count += 1
        end
    end

    # Return the counter
    return count
end
