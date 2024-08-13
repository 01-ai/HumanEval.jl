"""
    specialFilter(nums::Vector{Int})::Int

Write a function that takes an array of numbers as input and returns the number
of elements in the array that are greater than 10 and both first and last digits
of a number are odd (1, 3, 5, 7, 9).

# Example

```jldoctest
julia> specialFilter([15, -73, 14, -15])
1

julia> specialFilter([33, -2, -3, 45, 21, 109])
2
```
"""
function specialFilter(nums::Vector{Int})::Int
    # Initialize a counter for the special numbers
    special_count = 0

    # Loop through each number in the array
    for num in nums
        # Check if the number is greater than 10
        if num > 10
            # Convert the number to a string to easily access digits
            str_num = string(num)
            # Get the first and last characters of the string
            first_digit = str_num[1]
            last_digit = str_num[end]
            
            # Check if both the first and last digits are odd
            if (first_digit in ['1', '3', '5', '7', '9']) && (last_digit in ['1', '3', '5', '7', '9'])
                # Increment the counter
                special_count += 1
            end
        end
    end
    
    # Return the count of special numbers
    return special_count
end

# Example usage
# julia> specialFilter([15, -73, 14, -15])
# 1

# julia> specialFilter([33, -2, -3, 45, 21, 109])
# 2
