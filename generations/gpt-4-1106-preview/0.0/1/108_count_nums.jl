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
function count_nums(xs::Vector{Int})::Int
    # Function to calculate the sum of digits of an integer
    function sum_of_digits(n::Int)::Int
        sum = 0
        while n != 0
            sum += n % 10
            n = div(n, 10)
        end
        return sum
    end

    # Counter for numbers with sum of digits > 0
    count = 0

    # Iterate over each number in the array
    for x in xs
        # Calculate the sum of digits (considering the sign)
        sum_digits = x < 0 ? -sum_of_digits(-x) : sum_of_digits(x)
        
        # Increment the count if the sum of digits is greater than 0
        if sum_digits > 0
            count += 1
        end
    end

    return count
end

# Examples
println(count_nums(Int[])) # Expected output: 0
println(count_nums([-1, 11, -11])) # Expected output: 1
println(count_nums([1, 1, 2])) # Expected output: 3
