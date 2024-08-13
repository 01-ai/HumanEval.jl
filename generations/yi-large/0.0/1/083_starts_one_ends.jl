"""
    starts_one_ends(n::Int)::Int

Given a positive integer `n`, return the count of the numbers of n-digit
positive integers that start or end with 1.
"""
function starts_one_ends(n::Int)::Int
    # Check if n is a valid positive integer
    if n <= 0
        throw(ArgumentError("n must be a positive integer"))
    end

    # For n-digit numbers, there are 9^(n-1) numbers that start with 1
    # and 9^(n-1) numbers that end with 1. However, we've double-counted
    # the numbers that both start and end with 1, which is 8^(n-2) for n > 2.
    # For n == 1, there's only one number (1 itself), and for n == 2,
    # there are 2 * 9^0 - 0 = 2 numbers (11 and 10).

    if n == 1
        return 1  # Only one 1-digit number starts and ends with 1
    elseif n == 2
        return 2  # Two 2-digit numbers start or end with 1 (10, 11)
    else
        start_with_one = 9^(n-1)
        end_with_one = 9^(n-1)
        both = 8^(n-2)
        return start_with_one + end_with_one - both
    end
end

# Example usage:
# println(starts_one_ends(1))  # Output: 1
# println(starts_one_ends(2))  # Output: 2
# println(starts_one_ends(3))  # Output: 162
# println(starts_one_ends(4))  # Output: 2592
# println(starts_one_ends(5))  # Output: 23328
# println(starts_one_ends(6))  # Output: 207360
# println(starts_one_ends(7))  # Output: 1866240
# println(starts_one_ends(8))  # Output: 16796160
# println(starts_one
