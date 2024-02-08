"""
    starts_one_ends(n::Int)::Int

Given a positive integer `n`, return the count of the numbers of n-digit
positive integers that start or end with 1.
"""
function starts_one_ends(n::Int)::Int
    # Initialize count to 0
    count = 0

    # Loop through all n-digit numbers
    for i in 1:10^(n-1)
        # Check if the number starts with 1
        if i >= 10 && i <= 99 && i % 10 == 1
            # Increment count
            count += 1
        end

        # Check if the number ends with 1
        if i >= 10 && i <= 99 && i // 10 == 1
            # Increment count
            count += 1
        end

        # Check if the number starts with 1 followed by 0
        if i >= 100 && i <= 999 && (i % 100 == 10 || i % 100 == 100)
            # Increment count
            count += 1
        end

        # Check if the number ends with 1 followed by 0
        if i >= 100 && i <= 999 && (i // 100 == 11 || i // 100 == 101)
            # Increment count
            count += 1
        end

        # Move to the next number
        i += 1
    end

    # Return the count
    return count
end
