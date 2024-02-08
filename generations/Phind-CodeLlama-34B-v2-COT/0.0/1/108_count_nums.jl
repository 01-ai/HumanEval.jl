"""
    count_nums(xs::Vector{Int})::Int

Write a function `count_nums` which takes an array of integers and returns the
number of elements which has a sum of digits > 0. If a number is negative, then
its first signed digit will be negative: e.g. -123 has signed digits -1, 2, and
3.

# Examples

```jldoctest
julia> count_nums(Int[])
0

julia> count_nums([-1, 11, -11])
1

julia> count_nums([1, 1, 2])
3
```
"""



# Step-by-step outline:
# 1. Initialize a counter variable to store the count of numbers with a sum of digits > 0.
# 2. Iterate through each number in the input array.
# 3. For each number, calculate the sum of its digits. If the number is negative, consider its first signed digit.
# 4. If the sum of digits > 0, increment the counter.
# 5. After iterating through all numbers, return the counter.

# Julia code:

function count_nums(xs::Vector{Int})::Int
    # Initialize counter
    count = 0

    # Iterate through each number in the input array
    for x in xs
        # Calculate the sum of digits
        sum_digits = 0
        is_negative = false
        if x < 0
            x = -x
            is_negative = true
        end
        while x > 0
            sum_digits += x % 10
            x = div(x, 10)
        end
        if is_negative
            sum_digits = -sum_digits
        end

        # If the sum of digits > 0, increment the counter
        if sum_digits > 0
            count += 1
        end
    end

    # Return the counter
    return count
end
