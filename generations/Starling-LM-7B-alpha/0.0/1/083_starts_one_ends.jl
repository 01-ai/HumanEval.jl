"""
    starts_one_ends(n::Int)::Int

Given a positive integer `n`, return the count of the numbers of n-digit
positive integers that start or end with 1.
"""
 function starts_one_ends(n::Int)::Int
    # Check if n is a positive integer
    if n <= 0
        error("Input must be a positive integer")
    end

    # Calculate the total number of n-digit positive integers
    total_numbers = 10^(n-1) - 1

    # Calculate the number of n-digit positive integers that do not start with 1
    numbers_not_starting_with_one = 9 * (10^(n-1) - 1)

    # Calculate the number of n-digit positive integers that do not end with 1
    numbers_not_ending_with_one = 9 * (10^(n-1) - 1)

    # Calculate the number of n-digit positive integers that neither start nor end with 1
    numbers_neither_starting_nor_ending_with_one = numbers_not_starting_with_one + numbers_not_ending_with_one - 9 * (10^(n-1) - 1)

    # Calculate the number of n-digit positive integers that start or end with 1
    numbers_starting_or_ending_with_one = total_numbers - numbers_neither_starting_nor_ending_with_one

    return numbers_starting_or_ending_with_one
end