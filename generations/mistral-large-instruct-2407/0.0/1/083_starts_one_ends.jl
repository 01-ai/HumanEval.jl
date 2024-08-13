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
    if n <= 0
        throw(DomainError(n, "n must be a positive integer"))
    end

    # Calculate the total number of n-digit numbers
    total_n_digit_numbers = 10^n - 10^(n-1)

    # Calculate the number of n-digit numbers that start with 1
    start_with_1 = 10^(n-1)

    # Calculate the number of n-digit numbers that end with 1
    end_with_1 = 10^(n-1)

    # Calculate the number of n-digit numbers that both start and end with 1
    start_and_end_with_1 = 10^(n-2)

    # Use the inclusion-exclusion principle to find the count
    count = start_with_1 + end_with_1 - start_and_end_with_1

    return count
end
