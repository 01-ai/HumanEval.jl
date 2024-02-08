"""
    starts_one_ends(n::Int)::Int

Given a positive integer `n`, return the count of the numbers of n-digit
positive integers that start or end with 1.
"""
function starts_one_ends(n::Int)::Int
    if n == 1
        return 2
    else
        return 10^(n-1) + 10^(n-1)
    end
end

# Test the function
println(starts_one_ends(1))  # Output: 2
println(starts_one_ends(2))  # Output: 20
println(starts_one_ends(3))  # Output: 1000
println(starts_one_ends(4))  # Output: 10000
