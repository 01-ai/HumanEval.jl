"""
    starts_one_ends(n::Int)::Int

Given a positive integer `n`, return the count of the numbers of n-digit
positive integers that start or end with 1.
"""
function starts_one_ends(n::Int)::Int
    count = 0
    for i in 10^(n-1):10^n-1
        if i % 10 == 1 || i ÷ 10^(n-1) == 1
            count += 1
        end
    end
    return count
end
