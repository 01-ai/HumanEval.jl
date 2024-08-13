"""
    starts_one_ends(n::Int)::Int

Given a positive integer `n`, return the count of the numbers of n-digit
positive integers that start or end with 1.
"""

"""
    starts_one_ends(n::Int)::Int

Given a positive integer `n`, return the count of the numbers of n-digit
positive integers that start or end with 1.
"""
function starts_one_ends(n::Int)::Int
    # Check if n is a positive integer
    n <= 0 && throw(ArgumentError("n must be a positive integer"))

    # Count numbers that start with 1
    start_with_one = 10^(n-1)

    # Count numbers that end with 1
    end_with_one = 10^(n-1)

    # Subtract numbers that start and end with 1 to avoid double counting
    both_start_end_with_one = 10^(n-2)

    # Return the total count
    return start_with_one + end_with_one - both_start_end_with_one
end
