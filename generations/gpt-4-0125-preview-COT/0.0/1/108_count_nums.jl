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
    # Initialize a counter to keep track of numbers with a sum of digits > 0
    count = 0
    
    # Iterate through each number in the vector
    for x in xs
        # Calculate the sum of digits, considering the sign of the number
        sum_digits = 0
        is_negative = x < 0
        for digit in string(abs(x))
            sum_digits += parse(Int, digit)
        end
        
        # If the number was negative, adjust the first digit's contribution
        if is_negative
            sum_digits -= 2 * parse(Int, string(abs(x))[1])
        end
        
        # Increment the counter if the sum of digits is greater than 0
        if sum_digits > 0
            count += 1
        end
    end
    
    # Return the count of numbers with a sum of digits > 0
    return count
end
