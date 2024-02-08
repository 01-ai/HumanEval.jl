"""
    starts_one_ends(n::Int)::Int

Given a positive integer `n`, return the count of the numbers of n-digit
positive integers that start or end with 1.
"""


function starts_one_ends(n::Int)::Int
    if n == 1
        return 2 # 1 and 0
    else
        return 2 * (10^(n-1))
    end
end

# Test cases
println(starts_one_ends(1)) # Expected output: 2
println(starts_one_ends(2)) # Expected output: 20
println(starts_one_ends(3)) # Expected output: 200
println(starts_one_ends(4)) # Expected output: 2000